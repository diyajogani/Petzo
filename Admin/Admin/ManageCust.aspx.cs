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
    public partial class ManageCust : System.Web.UI.Page
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
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM register_customer", con))
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

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            // Get the retailer ID from the DataKeys collection
            int customerId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

            String str = ConfigurationManager.ConnectionStrings["MyCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(str))
            {
                try
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand("DELETE FROM register_customer WHERE CustomerID = @CustomerId", con))
                    {
                        cmd.Parameters.AddWithValue("@CustomerId", customerId);
                        int n = cmd.ExecuteNonQuery();
                        if (n > 0)
                        {
                            string script = "showAlertForRemove('Customer deleted successfully!');";
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