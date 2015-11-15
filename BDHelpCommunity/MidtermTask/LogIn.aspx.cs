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
    public partial class LogIn : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["IsLogin"] = "false";
            }

        }

        protected void BtnLogIn_Click(object sender, EventArgs e)
        {
            string pass="";
            string connStr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            string sql = "SELECT * from Users where UserName='" + TextBoxUser.Text + "'";
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader reader = cmd.ExecuteReader();
            string type="";
            if (reader.Read())
            {
                pass = reader["Password"].ToString();
                type = reader["UserType"].ToString();
                if (pass == TextBoxPass.Text && type=="user")
                {
                    Session["Name"] = reader["FirstName"] + " " + reader["LastName"];
                    Session["Type"] = "user";
                    Session["id"] = ""+reader["UserId"];
                    Session["IsLogin"] = "true";
                    Response.Redirect("~/Home.aspx");

                }
                else if(pass == TextBoxPass.Text && type == "admin")
                {
                    Session["IsLogin"] = "true";
                    Session["Name"] = reader["FirstName"] + " " + reader["LastName"];
                    Session["Type"] = "admin";
                    Session["id"] = "" + reader["UserId"];
                    Response.Redirect("~/AdminHome.aspx");
                }
                else
                {
                    Session["IsLogin"] = "false";
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Invalid Username or Password')", true);
                }

            }
            else
            {
                Session["IsLogin"] = "false";
                //Response.Write("Invalid Username or Password");
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Invalid Username or Password')", true);

            }





        }

        protected void BtnRegistration_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Registration.aspx");
        }
    }
}