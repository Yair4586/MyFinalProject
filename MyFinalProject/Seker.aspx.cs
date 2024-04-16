using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFinalProject
{
    public partial class Seker : System.Web.UI.Page
    {
        public string str = "";
        public string survay = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["fName"] != null && Session["fName"].ToString() != "אורח")
            {
                if ((bool)Session["voted"])
                {
                    survay = "הנך רשאי להצביע פעם אחת בלבד";
                }
                else
                {
                    if (Request.Form["send"] != null)
                    {
                        str += "<h1>תוצאות הסקר</h1>";

                        string ans = Request.Form["surv"];
                        if (ans == "1")
                            Application["q1"] = (int)Application["q1"] + 1;
                        if (ans == "2")
                            Application["q2"] = (int)Application["q2"] + 1;
                        if (ans == "3")
                            Application["q3"] = (int)Application["q3"] + 1;
                        if (ans == "4")
                            Application["q4"] = (int)Application["q4"] + 1;

                        int[] s = new int[4];
                        s[0] = (int)Application["q1"];
                        s[1] = (int)Application["q2"];
                        s[2] = (int)Application["q3"];
                        s[3] = (int)Application["q4"];

                        int width = 10;
                        double[] w = new double[4];
                        for (int i = 0; i < w.Length; i++)
                            w[i] = s[i] * width;

                        str += "s1 = " + s[0] + ", s2 = " + s[1] + ", s3 = " + s[2] +
                            ", s4 = " + s[3] + "<br>";

                        survay += "<table border ='1' dir = 'ltr'>";

                        survay += "<tr><td align = 'center'> I </td>";
                        survay += "<td width = '500px'><img src='pics/survay/red.png' height ='30px' width = '" + w[0] + "'></td></tr>";

                        survay += "<tr><td align = 'center'> II </td>";
                        survay += "<td width = '500px'><img src='pics/survay/yellow.png' height ='30px' width = '" + w[1] + "'></td></tr>";

                        survay += "<tr><td align = 'center'> III </td>";
                        survay += "<td width = '500px'><img src='pics/survay/blue.png' height ='30px' width = '" + w[2] + "'></td></tr>";

                        survay += "<tr><td align = 'center'> IV </td>";
                        survay += "<td width = '500px'><img src='pics/survay/green.png' height ='30px' width = '" + w[3] + "'></td></tr>";

                        survay += "</table>";

                        Session["voted"] = true;
                    }
                }
            }
            else
            {
                survay += "רק משתמש רשום יכול להצביע";
            }
        }
    }
}