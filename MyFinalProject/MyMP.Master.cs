using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFinalProject
{
    public partial class MyMP : System.Web.UI.MasterPage
    {
        public string loginMsg;

        protected void Page_Load(object sender, EventArgs e)
        {
            loginMsg = "<h3>שלום ";
            loginMsg += Session["uName"].ToString();
            loginMsg += "</h3>";

            if (Session["uName"].ToString() == "אורח")
            {
                loginMsg += "[<a href = 'Form_Signup.aspx'>הרשם</a>] <br />";
                loginMsg += "[<a href = 'Login.aspx'>התחבר</a>]";
                //menuStr = menu + manegStr;
            }
            else
            {
                if(Session["admin"].ToString() == "yes")
                {
                    loginMsg += "[<a href = 'managerPage.aspx'>דף מנהל</a>] <br />";
                    loginMsg += "[<a href = 'Logout.aspx'>התנתק</a>]";
                }
                else
                {
                    loginMsg += "[<a href = 'UpdateUser.aspx'>עדכון פרטים</a>] <br />";
                    loginMsg += "[<a href = 'Logout.aspx'>התנתק</a>]";
                }
                
            }
        }
    }
}