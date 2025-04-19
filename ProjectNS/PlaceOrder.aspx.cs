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
    public partial class PlaceOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindOrders();
            }
        }
        private void BindOrders()
        {
            using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\ProjectNS\ProjectNS\App_Data\cart.mdf;Integrated Security=True"))
            {
                try
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand("SELECT name,price,urls,qty FROM tcart", con))
                    {
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        order1.DataSource = dt;
                        order1.DataBind();
                    }
                    using (SqlCommand cmd2 = new SqlCommand("SELECT SUM(CAST(price AS DECIMAL(18,2)) * qty) FROM tcart", con))
                    {
                        decimal sum = (decimal)cmd2.ExecuteScalar();
                        if (sum > 0)
                        {
                            total.Text = $"Total Payable Amount: Rs {sum}";
                            Session["amount"] = sum;
                        }
                    }
                }

                catch (Exception ex)
                {
                    Response.Write("An error occurred: " + ex.Message);
                }

            }

        }

        protected void btnconfirm_Click(object sender, EventArgs e)
        {
            Response.Redirect("Payment.aspx");
        }
    }
}