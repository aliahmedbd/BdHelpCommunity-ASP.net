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
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            string sql = "SELECT * from Users where UserName='" + txtUserName.Text + "'";
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                Label1.Text="Username Already Exist try another UserName.";
            }
            else
            {
                SqlConnection conn1 = new SqlConnection(connStr);
                conn1.Open();
                string insert = "INSERT INTO Users (UserName,Password,FirstName,LastName,UserEmail,UserPhone,UserCity,UserAddress,UserRating,UserType) VALUES ('" + txtUserName.Text + "','" + txtPassword.Text + "','" + txtFN.Text + "','" + txtLN.Text + "','" + txtEmail.Text + "','" + txtPhone.Text + "','" + txtCity.Text + "','" + txtAddress.Text + "','0','user')";
                SqlCommand cmd1 = new SqlCommand(insert, conn1);
                cmd1.ExecuteNonQuery();
                
                Response.Redirect("~/LogIn.aspx");

            }

        }
    }
}