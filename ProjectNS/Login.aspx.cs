using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Xml.Linq;
using static System.Net.Mime.MediaTypeNames;

namespace ProjectNS
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\ProjectNS\\ProjectNS\\App_Data\\Register.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsub_Click(object sender, EventArgs e)
        {
            string query = "select count(*) from register_customer where username=@username and password=@password";
            con.Open();
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                // add parameters to the command
                cmd.Parameters.AddWithValue("@username", ltxtuname.Text);
                cmd.Parameters.AddWithValue("@password", ltxtpass.Text);
                try
                {
                    if (this.IsValid)
                    {
                        int n = (int)cmd.ExecuteScalar(); //Type casting the one value returned from Execute Scalar
                        if (n != 0)
                        {
                            Session["Username"] = ltxtuname.Text;
                            Response.Redirect("Home_LoggedIn.aspx");
                        }
                        else
                        {
                            status.Text = "Either User Name or Password is Wrong"; 
                        }
                    }
                }
                catch (Exception ex)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('something went wrong!')</script>");
                    Response.Write(ex);
                }
                finally
                {
                    con.Close();
                }
            }
        }
        protected void btn_Retailer_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login_Retailer.aspx");
        }
    }
}