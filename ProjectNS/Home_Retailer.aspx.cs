using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectNS
{
    public partial class Home_Retailer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindView();
                BindProducts();
            }
            if (Session["flag"]==null)
            {
                string userName = Session["Username"].ToString();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts",
                    $"<script>alert('Welcome {userName}!');</script>");
                Session["flag"] = true;
                // Clear the session variable to ensure it only shows once
            }
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

        protected void addFood_Click(object sender, EventArgs e)
        {
            Session["cid"] = 1;
            Response.Redirect("AddProduct.aspx");
        }

        protected void addToy_Click(object sender, EventArgs e)
        {
            Session["cid"] = 2;
            Response.Redirect("AddProduct.aspx");
        }

        protected void addAcc_Click(object sender, EventArgs e)
        {
            Session["cid"] = 3;
            Response.Redirect("AddProduct.aspx");
        }

        protected void addSupp_Click(object sender, EventArgs e)
        {
            Session["cid"] = 4;
            Response.Redirect("AddProduct.aspx");
        }
    }


}