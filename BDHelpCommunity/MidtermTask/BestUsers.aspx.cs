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
    public partial class BestUsers : System.Web.UI.Page
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
            string connStr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            string sql = "SELECT TOP 10 UserId as ID,FirstName,LastName,UserRating as Rating from Users ORDER BY UserRating DESC ";
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader reader = cmd.ExecuteReader();
            GridView1.DataSource=reader;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AdminHome.aspx");
        }
    }
}