using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SSAC_Project
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisterPage.aspx");
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(cs))
            {

                String un = tbxUsername.Text.ToString();
                String ps = tbxPassword.Text.ToString();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "select count(customerId) from customer where customerId='" + un + "'and password='" + ps + "'";
                cmd.Connection = conn;
                conn.Open();
                int LoginResult = (int)cmd.ExecuteScalar();
                if (LoginResult == 1)
                {
                    Session["user"] = un;
                    Response.Redirect("Categories.aspx");
                }
                else
                {
                    Response.Write("Username or Password is wrong");
                }
                conn.Close();
            }

        }
    }
}