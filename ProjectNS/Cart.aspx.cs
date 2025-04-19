using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace ProjectNS
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
               

            }
        }
        //protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "RemoveFromCart")
        //    {
        //        // Logic to remove the item from the cart
        //        string itemId = e.CommandArgument.ToString();
        //        // Remove the item from your data source here

        //        // Register the JavaScript alert
        //        string message = "Item has been removed successfully!";
        //        ScriptManager.RegisterStartupScript(this, GetType(), "showAlert", $"showAlertForRemove('{message}');", true);
        //    }
        //}
        

        private void BindGridView()
        {
            using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\ProjectNS\ProjectNS\App_Data\cart.mdf;Integrated Security=True"))
            {
                try
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand("SELECT * FROM tcart", con))
                    
                    {
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Button2.Visible = GridView1.Rows.Count > 0; //place order button visible only if cart not empty
                       
                    }
                }

                catch (Exception ex)
                {
                    Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
                }


            }

        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "RemoveFromCart")
            {
                int productId = Convert.ToInt32(e.CommandArgument);
                using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\ProjectNS\ProjectNS\App_Data\cart.mdf;Integrated Security=True"))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand("DELETE FROM tcart WHERE id = @ProductId", con))
                    {
                        cmd.Parameters.AddWithValue("@ProductId", productId);
                        int n = cmd.ExecuteNonQuery();
                        if (n != 0)
                        {
                            string message = "Item has been removed successfully!";
                            ScriptManager.RegisterStartupScript(this, GetType(), "showAlert", $"showAlertForRemove('{message}');", true);
                            BindGridView();
                        }
                    }
                }

            }
            if (e.CommandName == "IncreaseQty")
            {

                int productId = Convert.ToInt32(e.CommandArgument);
                using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\ProjectNS\ProjectNS\App_Data\cart.mdf;Integrated Security=True"))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand("UPDATE tcart SET qty = qty + 1 WHERE Id = @id", con))
                    {
                        cmd.Parameters.AddWithValue("@id", productId);
                        cmd.ExecuteNonQuery();
                        BindGridView();
                    }
                }
            }
            if (e.CommandName == "DecreaseQty")
            {
                int productId = Convert.ToInt32(e.CommandArgument);
                using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\ProjectNS\ProjectNS\App_Data\cart.mdf;Integrated Security=True"))
                {
                    con.Open();

                    // First, get the current quantity
                    int currentQty = 0;
                    using (SqlCommand checkCmd = new SqlCommand("SELECT qty FROM tcart WHERE Id = @id", con))
                    {
                        checkCmd.Parameters.AddWithValue("@id", productId);
                        object result = checkCmd.ExecuteScalar();
                        if (result != null)
                        {
                            currentQty = Convert.ToInt32(result);
                        }
                    }

                    if (currentQty > 1)
                    {
                        // Decrease the quantity
                        using (SqlCommand updateCmd = new SqlCommand("UPDATE tcart SET qty = qty - 1 WHERE Id = @id", con))
                        {
                            updateCmd.Parameters.AddWithValue("@id", productId);
                            updateCmd.ExecuteNonQuery();
                        }
                    }
                    else
                    {
                        // Quantity would become 0 or less, so delete the item
                        using (SqlCommand deleteCmd = new SqlCommand("DELETE FROM tcart WHERE Id = @id", con))
                        {
                            deleteCmd.Parameters.AddWithValue("@id", productId);
                            deleteCmd.ExecuteNonQuery();
                        }

                        // Show alert that item is removed
                        string message = "Item has been removed as quantity reached 0.";
                        ScriptManager.RegisterStartupScript(this, GetType(), "showAlert", $"showAlertForRemove('{message}');", true);
                    }

                    BindGridView();
                    
                }
            }


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("PlaceOrder.aspx");
        }
    }
}