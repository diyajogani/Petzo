using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admin
{
    public partial class AddProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnback_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageProducts.aspx");
        }

        protected void btnsub_Click(object sender, EventArgs e)
        {
            string qry = "insert into products values(@pname,@price,@urls,@cid,@runame)";
            using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\ProjectNS\ProjectNS\App_Data\cart.mdf;Integrated Security=True"))
            {
                con.Open();
                using (SqlCommand cmd = new SqlCommand(qry, con))
                {
                   // string id = Session["cid"].ToString(); Take CID from admin
                    string uname = "Admin";
                    byte[] imgbytes = imgp.FileBytes;
                    string productimg = Convert.ToBase64String(imgbytes);
                    // add parameters to the command
                    cmd.Parameters.AddWithValue("@pname", txtpname.Text);
                    cmd.Parameters.AddWithValue("@price", txtprice.Text);
                    cmd.Parameters.AddWithValue("@urls", productimg);
                    cmd.Parameters.AddWithValue("@cid", "1");
                    cmd.Parameters.AddWithValue("@runame", uname);
                    try
                    {
                        if (this.IsValid)
                        {
                            int n = cmd.ExecuteNonQuery(); //Type casting the one value returned from Execute Scalar
                            if (n != 0)
                            {
                                status.Text = "Product Added Successfully";
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
        }
    }
}