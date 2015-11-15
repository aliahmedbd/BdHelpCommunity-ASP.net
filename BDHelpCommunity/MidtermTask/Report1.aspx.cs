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
    public partial class Report1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Type"] == "user")
            {
                Response.Redirect("~/LogIn.aspx");
            }
            try
            {
                if (Session["IsLogin"].ToString() == "false")
                    Response.Redirect("~/LogIn.aspx");
            }
            catch
            {
                Response.Redirect("~/LogIn.aspx");
            }
            //Calendar1.Visible = Calendar2.Visible = false;
            string connStr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            //string sql = "SELECT * from Users where UserName='" + TextBoxUser.Text + "'";
            conn.Open();
            //SqlCommand cmd = new SqlCommand(sql, conn);
            //SqlDataReader reader = cmd.ExecuteReader();
            //string type = "";

        }

        protected void ButtonSourceDate_Click(object sender, EventArgs e)
        {
            Calendar2.Visible = !Calendar2.Visible;
            //TextBox1.Text = (Calendar2.SelectedDate.Date).ToString();
        }

        protected void ButtonDestination_Click(object sender, EventArgs e)
        {
            Calendar3.Visible = !Calendar3.Visible;
            //TextBox1.Text = (Calendar2.SelectedDate.Date).ToString();
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            TextBox1.Text = Calendar2.SelectedDate.ToShortDateString();
            Calendar2.Visible = false;
        }

        protected void Calendar3_SelectionChanged(object sender, EventArgs e)
        {
            TextBox2.Text = Calendar3.SelectedDate.ToShortDateString();
            Calendar3.Visible = false;
        }

        protected void BtnShow_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            string sql = "SELECT TOP 10 QuestionId,QuestionHeader,QuestionRating as Likes from UserQuestion where QuestionDate > '" + TextBox1.Text + "' AND QuestionDate < '" + TextBox2.Text + "' AND QuestionRating > '0' ORDER BY QuestionRating DESC";
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader reader = cmd.ExecuteReader();
            GridViewReport1.DataSource = reader;
            GridViewReport1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AdminHome.aspx");
        }
    }
}