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
    public partial class ShowAnswer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["IsLogin"].ToString() == "false")
                    Response.Redirect("~/LogIn.aspx");
            }
            catch
            {
                Response.Redirect("~/LogIn.aspx");
            }
            //string answerer = "";
            string connStr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            


            SqlConnection conn = new SqlConnection(connStr);
            string sql = "SELECT Answers.AnswerId as ID, Answers.AnswerText as Answer from Answers WHERE  Answers.QuestionNo ='" + Session["QuestionId"]+"'";
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader reader = cmd.ExecuteReader();
            GridViewShowAnswer.DataSource = reader;
            GridViewShowAnswer.DataBind();

        }
    }
}