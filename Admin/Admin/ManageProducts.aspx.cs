using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admin
{
    public partial class ManageProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView(); // Bind data only when the page loads for the first time
            }
        }

        private void BindGridView()
        {
            String str = ConfigurationManager.ConnectionStrings["MyCS2"].ConnectionString;
            SqlConnection con = new SqlConnection(str);

            try
            {
                con.Open();
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM products", con))
                {
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }

            catch (Exception ex)
            {
                Response.Write("An error occurred: " + ex.Message);
            }


        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                // Assuming the Base64 image data is in the 3rd column (index 2)
                string base64Logo = DataBinder.Eval(e.Row.DataItem, "urls")?.ToString();

                if (!string.IsNullOrEmpty(base64Logo))
                {
                    // Create an Image control dynamically
                    Image pImage = new Image();
                    pImage.ImageUrl = "data:image/png;base64," + base64Logo;
                    pImage.Width = 100;
                    pImage.Height = 100;

                    // Add the Image control to the appropriate cell (third column)
                    e.Row.Cells[4].Controls.Add(pImage);
                }
            }
        }


        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            // Get the product ID from the DataKeys collection
            int productId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

            string str = ConfigurationManager.ConnectionStrings["MyCS2"].ConnectionString;
            using (SqlConnection con = new SqlConnection(str))
            {
                try
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand("DELETE FROM products WHERE pid = @pid", con))
                    {
                        cmd.Parameters.AddWithValue("@pid", productId);
                        int n = cmd.ExecuteNonQuery();
                        if (n > 0)
                        {
                            String script = "showAlertForRemove('Product deleted successfully!');";
                            ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
                            BindGridView(); // Refresh GridView after deletion
                        }
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("An error occurred: " + ex.Message);
                }
            }
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddProducts.aspx");
        }
    }
}