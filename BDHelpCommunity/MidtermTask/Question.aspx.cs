using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MidtermTask
{
    public partial class Question : System.Web.UI.Page
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
            
            MenuProfile.Items[0].Text = "" + Session["Name"];
            if (!IsPostBack)
            {
                string connStr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                SqlConnection conn = new SqlConnection(connStr);
                string sql = "SELECT * from Category";
                conn.Open();
                SqlCommand cmd = new SqlCommand(sql, conn);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                DropDownListCategory.DataSource = dt;
                DropDownListCategory.DataTextField = "CategoryName";
                DropDownListCategory.DataValueField = "CategoryId";
                DropDownListCategory.DataBind();
            }


        }

        protected void DropDownListCategory_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection conn1 = new SqlConnection(connStr);
            string a = txtQuestionBody.InnerText;      
            //string ab=txtQuestionBody.InnerText;
            //Response.Write(ab);
             string sql = "INSERT into UserQuestion (QuestionHeader,QuestionText,QuestionRating,Questioner,IsSatisfied,QuestionCategory,IsAnswered,QuestionDate) values ('"+txtQuestionHead.Text+ "','" + txtQuestionBody.InnerText + "','0','"+Session["id"].ToString()+ "','false','" + DropDownListCategory.Text + "','0','"+DateTime.Now+"')";
             conn1.Open();
             SqlCommand cmd = new SqlCommand(sql, conn1);
             cmd.ExecuteNonQuery();
            
             if (Session["Type"].ToString() == "user")
                 Response.Redirect("~/Home.aspx");
             else
                 Response.Redirect("~/AdminHome.aspx");
                 
        }

        protected void BtnHome_Click(object sender, EventArgs e)
        {
            if(Session["Type"].ToString() == "user")
                Response.Redirect("~/Home.aspx");
            else
                Response.Redirect("~/AdminHome.aspx");
        }
    }
}