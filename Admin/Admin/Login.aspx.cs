using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsub_Click(object sender, EventArgs e)
        {
            String uname = ltxtuname.Text;
            String pass = ltxtpass.Text;
            if (Page.IsValid)
            {
                if (uname == "nishka" && pass == "abcd2004")
                {
                    Response.Redirect("Dashboard.aspx");
                }
                else
                {
                    status.Text = "This Admin Does Not Exists";
                }
            }
        }

        protected void btnback_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://localhost:44312/AboutUs.aspx");
        }
    }
}