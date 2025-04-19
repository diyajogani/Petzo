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
using System.Net.NetworkInformation;
using System.EnterpriseServices;

namespace ProjectNS
{
    public partial class Login_Retailer : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\ProjectNS\\ProjectNS\\App_Data\\Register.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsub_Click1(object sender, EventArgs e)
        {
            string query = "select count(*) from register_retailer where username=@username and password=@password";
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
                        int n = (int)cmd.ExecuteScalar();
                        if (n != 0)
                        {
                            Session["Username"] = ltxtuname.Text;
                            Response.Redirect("Home_Retailer.aspx");
                        }
                        else
                        {
                            status.Text = "Either User Name or Password is Wrong";
                        }
                    }
                }
                catch (Exception ex)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Something went wrong!')</script>");
                    Response.Write(ex);
                }
                finally
                {
                    con.Close();
                }
            }
        }
        protected void btn_cust_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
        protected void btnback_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login_Retailer.aspx");
        }
    }
}