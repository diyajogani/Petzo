using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;



namespace ProjectNS
{
    public partial class Home : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\ProjectNS\ProjectNS\App_Data\cart.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindView();
                BindProducts();
            }
        }
        protected string BindImage(object dataItem)
        {
            DataRowView rowView = dataItem as DataRowView;
            if (rowView != null)
            {
                string base64String = rowView["logo"].ToString();
                if (!string.IsNullOrEmpty(base64String))
                {
                    // Construct the image URL
                    return "data:image/png;base64," + base64String;
                }
            }
            return string.Empty; // Return an empty string if no image is available
        }
        private void BindProducts()
        {

            using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\ProjectNS\ProjectNS\App_Data\cart.mdf;Integrated Security=True"))
            {
                try
                {
                    con.Open();
                    using (SqlCommand cmd1 = new SqlCommand("SELECT pname,price,urls FROM products where cid=1", con))
                    {
                        SqlDataAdapter da = new SqlDataAdapter(cmd1);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        r1.DataSource = dt;
                        r1.DataBind();
                    }
                    using (SqlCommand cmd2 = new SqlCommand("SELECT pname,price,urls FROM products where cid=2", con))
                    {
                        SqlDataAdapter da = new SqlDataAdapter(cmd2);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        r2.DataSource = dt;
                        r2.DataBind();
                    }
                    using (SqlCommand cmd3 = new SqlCommand("SELECT pname,price,urls FROM products where cid=3", con))
                    {
                        SqlDataAdapter da = new SqlDataAdapter(cmd3);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        r3.DataSource = dt;
                        r3.DataBind();
                    }
                    using (SqlCommand cmd4 = new SqlCommand("SELECT pname,price,urls FROM products where cid=4", con))
                    {
                        SqlDataAdapter da = new SqlDataAdapter(cmd4);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        r4.DataSource = dt;
                        r4.DataBind();
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("An error occurred: " + ex.Message);
                }
            }
        }
        private void BindView()
        {

            using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\ProjectNS\ProjectNS\App_Data\Register.mdf;Integrated Security=True"))
            {
                try
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand("SELECT logo FROM register_retailer", con))
                    {
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        View1.DataSource = dt;
                        View1.DataBind();
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("An error occurred: " + ex.Message);
                }
            }
        }
        protected void AddToCart_Click(object sender, EventArgs e)
        {
            string script = "Login Or Sign Up To Access Your Cart!";
            ScriptManager.RegisterStartupScript(this, GetType(), "alert", $"showcheck('{script}');", true);
        }
    }
}