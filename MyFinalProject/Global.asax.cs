using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace MyFinalProject
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            Application["counter"] = 0;

            Application["q1"] = 0;
            Application["q2"] = 0;
            Application["q3"] = 0;
            Application["q4"] = 0;
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
        void Session_start(object sender, EventArgs e)
        {
            Session["uName"] = "אורח";
            Session["fName"] = "אורח";
            Session["voted"] = false;
            Session["admin"] = "no";
        }
        void Session_End(object sender, EventArgs e)
        {
            Session["uName"] = "אורח";
            Session["fName"] = "אורח";
            Session["voted"] = false;
            Session["admin"] = "no";
        }
    }
}