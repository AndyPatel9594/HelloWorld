using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SSAC_Project.Images
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(cs))
            {




                SqlCommand cmd = new SqlCommand();
                if (TbxPs.Text == TbxCPs.Text)
                {
                    cmd.CommandText = "insert into dbo.Customer values ('" + TbxCi.Text + "','" + TbxFn.Text + "','" + TbxLn.Text + "','" + TbxCt.Text + "','" + TbxPr.Text + "','" + TbxPc.Text + "','" + TbxBd.Text + "','" + TbxPn.Text + "','" + TbxEm.Text + "','" + TbxPs.Text + "')";
                    cmd.Connection = conn;
                    conn.Open();
                    int TotalRowsAffected = (int)cmd.ExecuteNonQuery();
                    Response.Write("Total Rows Inserted is: " + TotalRowsAffected.ToString());
                    if (TotalRowsAffected < 1)
                        Response.Write("Successfully Registered");
                    Response.Redirect("~/Default.aspx");
                    conn.Close();
                }
                else
                {
                    Response.Write("Passwords doesnt match");
                }

            }
        }
    }
    }
}