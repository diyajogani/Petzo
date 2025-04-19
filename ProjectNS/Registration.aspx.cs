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
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\ProjectNS\\ProjectNS\\App_Data\\Register.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsub_Click1(object sender, EventArgs e)
        {
            string query = "insert into register_customer values (@username, @password, @emailid, @contact, @city, @address)";
            con.Open();
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                // add parameters to the command
                cmd.Parameters.AddWithValue("@username", txtuname.Text);
                Session["buyer_name"] = txtuname.Text;
                cmd.Parameters.AddWithValue("@password", txtpass.Text);
                cmd.Parameters.AddWithValue("@emailid", txtemail.Text);
                cmd.Parameters.AddWithValue("@contact", txtcontact.Text);
                cmd.Parameters.AddWithValue("@city", txtcity.Text);
                cmd.Parameters.AddWithValue("@address", txtadd.Text);
                Session["buyer_addr"] = txtadd.Text;
                try
                {
                    if (this.IsValid)
                    {
                        int n = cmd.ExecuteNonQuery();
                        if (n != 0)
                        {
                            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('you have been registered successfully!')</script>");
                            Response.Redirect("Home_LoggedIn.aspx");
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

        protected void btnres_Click(object sender, EventArgs e)
        {
            //to empty the textbox onclick of reset button
            txtuname.Text = string.Empty;
            txtpass.Text = string.Empty;
            txtcpass.Text = string.Empty;
            txtemail.Text = string.Empty;
            txtcontact.Text = string.Empty;
            txtcity.Text = string.Empty;
            txtadd.Text = string.Empty;
        }

        protected void btn_ret_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration_Retailer.aspx");
        }
    }
}