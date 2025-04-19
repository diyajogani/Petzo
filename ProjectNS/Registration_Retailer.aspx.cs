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
    public partial class Registration_Retailer : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\ProjectNS\\ProjectNS\\App_Data\\Register.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void rbtnsub_Click(object sender, EventArgs e)
        {
            // Read the image file into a byte array
            byte[] imageBytes = FileUpload1.FileBytes;

            // Convert the byte array to a Base64 string
            string logo = Convert.ToBase64String(imageBytes);
            string query = "INSERT INTO register_retailer VALUES (@username, @password, @contact, @city, @address, @brand, @logo)";
            con.Open(); 
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                // Add parameters to the command
                cmd.Parameters.AddWithValue("@username", rtxtuname.Text);
                cmd.Parameters.AddWithValue("@password", rtxtpass.Text);
                cmd.Parameters.AddWithValue("@contact", rtxtcontact.Text);
                cmd.Parameters.AddWithValue("@city", rtxtcity.Text);
                cmd.Parameters.AddWithValue("@address", rtxtadd.Text);
                cmd.Parameters.AddWithValue("@brand", rtxtbrand.Text);
                cmd.Parameters.AddWithValue("@logo", logo);
                try
                {
                    if (this.IsValid)
                    {
                        int n = cmd.ExecuteNonQuery();
                        if (n != 0)
                        {
                            Session["Username"] = rtxtuname.Text;
                            Response.Redirect("Home_Retailer.aspx");
                        }
                    }
                } 
                catch(Exception ex) {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Something Went Wrong!')</script>");
                    Response.Write(ex);
                }
                finally
                { 
                    con.Close();
                }
            }
        }

        protected void rbtnres_Click(object sender, EventArgs e)
        {
            //to empty the textbox onclick of reset button
            rtxtuname.Text = string.Empty;
            rtxtpass.Text = string.Empty;
            rtxtcpass.Text = string.Empty;
            rtxtcontact.Text = string.Empty;
            rtxtcity.Text = string.Empty;
            rtxtadd.Text = string.Empty; 
            rtxtbrand.Text = string.Empty;
        }

        protected void btn_cust_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }
    }
}