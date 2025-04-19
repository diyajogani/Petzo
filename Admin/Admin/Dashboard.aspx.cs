using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using Microsoft.Reporting.WebForms;

namespace Admin
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String str = ConfigurationManager.ConnectionStrings["MyCS"].ConnectionString;
            String str2 = ConfigurationManager.ConnectionStrings["MyCS2"].ConnectionString;
            SqlConnection con=new SqlConnection(str);
            SqlConnection con2=new SqlConnection(str2);
            String qry1 = "select count(*) from register_customer";
            String qry2 = "select count(*) from register_retailer";
            String qry3 = "select count(*) from products";
            con.Open();
            con2.Open();
            SqlCommand cmd1=new SqlCommand(qry1, con);
            int custcount = (int)cmd1.ExecuteScalar();
            SqlCommand cmd2 = new SqlCommand(qry2, con);
            int retcount = (int)cmd2.ExecuteScalar();
            SqlCommand cmd3 = new SqlCommand(qry3, con2);
            int prodcount = (int)cmd3.ExecuteScalar();
            cc.Text = $"{custcount}+ Customers"; //$ used to access the variable value in a string
            rc.Text = $"{retcount}+ Retailers";
            pc.Text = $"{prodcount}+ Products";
            tc.Text = $"{retcount + custcount}+ Total users";
            con.Close();
            con2.Close();
        }
    }
}