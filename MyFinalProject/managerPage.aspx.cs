using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFinalProject
{
    public partial class managerPage : System.Web.UI.Page
    {
        public string msg = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"].ToString() == "no")
            {
                msg += "<h3>";
                msg += " ,אניך מנהל";
                msg += "אין לך הרשאה להיכנס לדף ניהול";
                msg += "</h3>";
                msg += "<a href = 'Final.aspx'><img src = 'pics/Back.PNG' /> </a>";
            }
            else
            {
                msg = "<h3><a href = 'ShowTable.aspx'>[הצגת הטבלה]</a></h3> ";
                msg += "<h3><a href = 'SimpleQuery.aspx'>[שאילתה פשוטה]</a></h3> ";
                msg += "<h3><a href = 'complexQuery.aspx'>[שאילתה מורכבת]</a></h3>";
            }
        }
    }
}