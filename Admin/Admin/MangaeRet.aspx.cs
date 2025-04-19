using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Reporting.WebForms;

namespace Admin
{
    public partial class MangaeRet : System.Web.UI.Page
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
            String str = ConfigurationManager.ConnectionStrings["MyCS"].ConnectionString;
            SqlConnection con = new SqlConnection(str);
            
                try
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand("SELECT * FROM register_retailer", con))
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
                string base64Logo = DataBinder.Eval(e.Row.DataItem, "logo")?.ToString();

                if (!string.IsNullOrEmpty(base64Logo))
                {
                    // Create an Image control dynamically
                    Image logoImage = new Image();
                    logoImage.ImageUrl = "data:image/png;base64," + base64Logo;
                    logoImage.Width = 100;
                    logoImage.Height = 100;

                    // Add the Image control to the appropriate cell (third column)
                    e.Row.Cells[8].Controls.Add(logoImage);
                }
            }
        }


        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            // Get the retailer ID from the DataKeys collection
            int retailerId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

            string str = ConfigurationManager.ConnectionStrings["MyCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(str))
            {
                try
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand("DELETE FROM register_retailer WHERE id = @RetailerId", con))
                    {
                        cmd.Parameters.AddWithValue("@RetailerId", retailerId);
                        int n = cmd.ExecuteNonQuery();
                        if (n > 0)
                        {
                            String script = "showAlertForRemove('Retailer deleted successfully!');";
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
    }
}