using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ProjectNS
{
    public partial class Payment : System.Web.UI.Page
    {
        int tot = 0;
        string s;
        string t;
        string[] a = new string[6];
        string order_no;

        protected void Page_Load(object sender, EventArgs e)
        {
            Random random = new Random();
            string order_no = random.Next(100000, 999999).ToString() + random.Next(100000, 999999).ToString().Substring(0, 4);
            Session["order_no"] = order_no;


            Response.Write("<form action='https://www.sandbox.paypal.com/cgi-bin/webscr' method='post' name='buyCredits' id='buyCredits'>");

            Response.Write("<input type='hidden' name='cmd' value='_xclick'>");
            Response.Write("<input type='hidden' name='business' value='sb-hc2es34423343@business.example.com'>");
            Response.Write("<input type='hidden' name='currency_code' value='USD'>");
            Response.Write("<input type='hidden' name='item_name' value='Payment For Purchase'>");
            Response.Write("<input type='hidden' name='item_number' value='0'>");
            Response.Write("<input type='hidden' name='amount' value='" + Session["amount"].ToString() + "'>");
            Response.Write("<input type='hidden' name='return' value='https://localhost:44312/Home_LoggedIn.aspx'>");





            Response.Write("<script type='text/javascript'>");
            Response.Write("document.getElementById('buyCredits').submit();");
            Response.Write("</script>");

        }


    }
}