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
    public partial class Home : System.Web.UI.Page
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
            // HyperLinkName.Text=;
            //MenuProfile.SelectedItem.Text = ""+Session["Name"];
            MenuProfile.Items[0].Text = ""+Session["Name"];
            string connStr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            string sql = "SELECT UserQuestion.QuestionId,UserQuestion.QuestionHeader,Users.FirstName,UserQuestion.QuestionRating from UserQuestion INNER JOIN Users ON UserQuestion.Questioner=Users.UserId";
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader reader = cmd.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            
        }

        protected void MenuProfile_MenuItemClick(object sender, MenuEventArgs e)
        {

        }

        protected void btnAskQuestion_Click(object sender, EventArgs e)
        {            
           Response.Redirect("~/Question.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string a = GridView1.SelectedRow.Cells[1].Text;
            Session["QuestionId"] = a;
            Response.Redirect("~/AfterQuestion.aspx");
        }
    }
}