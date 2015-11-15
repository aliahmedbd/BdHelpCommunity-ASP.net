using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MidtermTask
{
    public partial class AfterQuestion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try {
                if (Session["IsLogin"].ToString() == "false")
                    Response.Redirect("~/LogIn.aspx");
            }
            catch
            {
                Response.Redirect("~/LogIn.aspx");
            }
            string connStr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            string sql = "SELECT QuestionHeader,QuestionText from UserQuestion Where QuestionId='"+Session["QuestionId"] +"'";
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                lblQuestionHeader.Text = reader["QuestionHeader"].ToString();
                lblQuestionText.Text = reader["QuestionText"].ToString();
            }
            else
            {
                Response.Write("Sorry!");
            }
            if (Session["Type"].ToString() == "admin")
            {
                btnDelete.Visible = true;
            }
            else
            {
                btnDelete.Visible = false;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home.aspx");
        }

        protected void btnLike_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            string sql = "SELECT QuestionRating,Questioner FROM UserQuestion Where QuestionId='" + Session["QuestionId"] + "'";
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader reader = cmd.ExecuteReader();
            string QLike="";
            string ULike = "";
            string User="";
            if (reader.Read())
            {
                QLike = reader["QuestionRating"].ToString();
                User = reader["Questioner"].ToString();
               // ULike=reader[]
            }
            reader.Close();
            QLike = (Convert.ToUInt32(QLike)+1).ToString();
            SqlConnection conn1 = new SqlConnection(connStr);
            conn1.Open();
            string sql1 = "UPDATE  UserQuestion set QuestionRating='" + QLike + "' WHERE QuestionId='" + Session["QuestionId"] + "'";
            SqlCommand cmd1 = new SqlCommand(sql1, conn1);
            cmd1.ExecuteNonQuery();
            //////

            SqlConnection conn3 = new SqlConnection(connStr);
            string sql3 = "SELECT UserRating  FROM Users Where UserId='" + User + "'";
            conn3.Open();
            SqlCommand cmd3 = new SqlCommand(sql3, conn3);
            //SqlDataReader read=new SqlDataReader()
            reader = cmd3.ExecuteReader();
            
            if (reader.Read())
            {
                ULike = reader["UserRating"].ToString();

                // ULike=reader[]
            }
            ULike = (Convert.ToUInt32(ULike) + 1).ToString();
            SqlConnection conn2 = new SqlConnection(connStr);
            conn2.Open();
            string sql2 = "UPDATE  Users set UserRating='" + ULike + "' WHERE UserId='" + User + "'";
            SqlCommand cmd2 = new SqlCommand(sql2, conn2);
            cmd2.ExecuteNonQuery();

            btnLike.BackColor = System.Drawing.Color.Red;
        }

        protected void btnReply_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Answer.aspx");
        }

        protected void btnShowAnsewer_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ShowAnswer.aspx");

        }
    }
}