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
    public partial class Answer : System.Web.UI.Page
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
            Response.Write(Session["id"]);
            Response.Write(Session["QuestionId"]);

        }

        protected void btnPostAnswer_Click(object sender, EventArgs e)
        {
            string answer = "";
            string connStr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection conn1 = new SqlConnection(connStr);
            //string ab=txtQuestionBody.InnerText;
            //Response.Write(ab);
            answer = txtAnser.InnerText;
            answer = answer.Replace("'","''");
            
            //txtAnser.InnerText = answer;
           string sql = "INSERT into Answers (AnswerText,AnswerRating,QuestionNo,Answerer) values ('" + answer + "','0','" + Session["QuestionId"].ToString() + "','" + Session["id"] + "')";
            conn1.Open();
            SqlCommand cmd = new SqlCommand(sql, conn1);
            cmd.ExecuteNonQuery();

            //Increment Answerno to Question
            string answerCount = "0";
            SqlConnection conn2 = new SqlConnection(connStr);
            string sql2 = "SELECT IsAnswered FROM UserQuestion WHERE QuestionId= '" + Session["QuestionId"] + "'";
            conn2.Open();         
            SqlCommand cmd2 = new SqlCommand(sql2, conn2);
            SqlDataReader reader = cmd2.ExecuteReader();
            if (reader.Read())
            {
                answerCount = reader["IsAnswered"].ToString();
            }
            answerCount = (Convert.ToUInt32(answerCount) + 1).ToString();
            reader.Close();
            string sql3 = "UPDATE  UserQuestion set IsAnswered = '" + answerCount + "' WHERE QuestionId = '" + Session["QuestionId"] + "'";
            SqlCommand cmd3 = new SqlCommand(sql3, conn2);
            cmd3.ExecuteNonQuery();

            Response.Redirect("~/AfterQuestion.aspx");
            

        }
    }
}