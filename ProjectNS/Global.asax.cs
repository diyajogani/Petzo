using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.UI;

namespace ProjectNS
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {

            // Register jQuery ScriptResourceMapping
            ScriptManager.ScriptResourceMapping.AddDefinition(
                "jquery",
                new ScriptResourceDefinition
                {
                    Path = "~/Scripts/jquery-3.6.0.min.js",  // Adjust the path to your jQuery file
                    DebugPath = "~/Scripts/jquery-3.6.0.js", // Adjust the path to your jQuery debug file
                    CdnPath = "https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js",
                    CdnDebugPath = "https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.js"
                }
            );
        }
    }
}
