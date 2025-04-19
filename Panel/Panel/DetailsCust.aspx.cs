using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Panel
{
    public partial class DetailsCust : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\ProjectNS\ProjectNS\App_Data\Register.mdf;Integrated Security=True"))
            {
                try
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand("SELECT * FROM register_customer", con))
                    {
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        Customers.DataSource = dt;
                        Customers.DataBind();
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("An error occurred: " + ex.Message);
                }
            }
        }

        protected void btnback_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home/Index");
        }
    }
}