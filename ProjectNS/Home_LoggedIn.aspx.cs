using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectNS
{
    public partial class Home_LoggedIn : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\ProjectNS\ProjectNS\App_Data\cart.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindProducts();
                BindView();
            }
            if (Session["Username"] != null)

            {
                string userName = Session["Username"].ToString();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts",
                    $"<script>alert('Welcome {userName}!');</script>");

                // Clear the session variable to ensure it only shows once
                Session["buer_name"] = Session["Username"];
                Session["Username"] = null;
            }
        }
        private void BindProducts()
        {

            using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\ProjectNS\ProjectNS\App_Data\cart.mdf;Integrated Security=True"))
            {
                try
                {
                    con.Open();
                    using (SqlCommand cmd1 = new SqlCommand("SELECT pid,pname,price,urls FROM products where cid=1", con))
                    {
                        SqlDataAdapter da = new SqlDataAdapter(cmd1);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        r1.DataSource = dt;
                        r1.DataBind();
                    }
                    using (SqlCommand cmd2 = new SqlCommand("SELECT pid,pname,price,urls FROM products where cid=2", con))
                    {
                        SqlDataAdapter da = new SqlDataAdapter(cmd2);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        r2.DataSource = dt;
                        r2.DataBind();
                    }
                    using (SqlCommand cmd3 = new SqlCommand("SELECT pid,pname,price,urls FROM products where cid=3", con))
                    {
                        SqlDataAdapter da = new SqlDataAdapter(cmd3);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        r3.DataSource = dt;
                        r3.DataBind();
                    }
                    using (SqlCommand cmd4 = new SqlCommand("SELECT pid,pname,price,urls FROM products where cid=4", con))
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
        protected void AddToCart_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\ProjectNS\ProjectNS\App_Data\cart.mdf;Integrated Security=True"))
            {
                Button btn = (Button)sender;
                int id = Convert.ToInt32(btn.CommandArgument);
                try
                {
                    con.Open();
                    SqlCommand checkCmd = new SqlCommand("SELECT COUNT(*) FROM tcart WHERE pid = @pid", con);
                    checkCmd.Parameters.AddWithValue("@pid", id);
                    int count = (int)checkCmd.ExecuteScalar();

                    if (count > 0)
                    {

                        string script = "showcheck('Already Added To The Cart!');";
                        ScriptManager.RegisterStartupScript(this,GetType(), "alert", script, true);
                    }
                    else
                    {

                        SqlCommand cmd = con.CreateCommand();
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = "INSERT INTO tcart(name,price,urls,pid) SELECT pname,price,urls,pid FROM products WHERE pid = @id";
                        cmd.Parameters.AddWithValue("@id", id);
                        int n = cmd.ExecuteNonQuery();
                        if (n != 0)
                        {
                            string script = "showAlert('Product Added To Cart!');";
                            ScriptManager.RegisterStartupScript(this,GetType(), "alert", script, true);
                        }
                    }
                    con.Close();
                }
                catch (Exception ex)
                {
                    Response.Write("An error occurred: " + ex.Message);
                }

            }
        }
    }
}
