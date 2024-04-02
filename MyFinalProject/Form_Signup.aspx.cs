using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFinalProject
{
    public partial class Form_Signup : System.Web.UI.Page
    {
        public string st = "";
        public string yrBorn = "";
        public string msg = "";
        public string sqlSelect = "";

        protected void Page_Load(object sender, EventArgs e)
        {

            int year = DateTime.Now.Year;
            int from = year - 30;
            int to = year - 10;

            int selectedYear = year - 16;
            for (int y = from; y < to; y++)
            {
                if (y == selectedYear)
                    yrBorn += $"<option value = '{y}' selected>{y}</option>";
                else
                    yrBorn += "<option value = '" + y + "'>" + y + "</option>";
            }

            if (Request.Form["submit"] != null)
            {

                st += "<table dir = 'ltr' border = '1'>";
                st += "<tr><th colspan='2'>הפרטים שהתקבלו</th></tr>";

                string uName = Request.Form["uName"];
                string fName = Request.Form["fName"];
                string lName = Request.Form["lName"];
                string email = Request.Form["email"];
                string gender = Request.Form["gender"];
                string city = Request.Form["city"];
                string prefix = Request.Form["prefix"];
                string phone = Request.Form["phone"];
                string yearBorn = Request.Form["yearBorn"];
                string password = Request.Form["pw"];
                string passwordChk = Request.Form["pwChk"];

                st += "<tr><td>user name: </td><td>" + uName + "</td></tr>";
                st += "<tr><td>first name: </td><td>" + fName + "</td></tr>";
                st += "<tr><td>last name: </td><td>" + lName + "</td></tr>";
                st += "<tr><td>email: </td><td>" + email + "</td></tr>";
                st += "<tr><td>gender: </td><td>" + gender + "</td></tr>";
                st += "<tr><td>city: </td><td>" + city + "</td></tr>";
                st += "<tr><td>prefix: </td><td>" + prefix + "</td></tr>";
                st += "<tr><td>phone: </td><td>" + phone + "</td></tr>";
                st += "<tr><td>yearBorn: </td><td>" + yearBorn + "</td></tr>";
                st += "<tr><td>password: </td><td>" + password + "</td></tr>";
                st += "<tr><td>passwordChk: </td><td>" + passwordChk + "</td></tr>";

                st += "</table>";
                Session["uName"] = uName;
                Session["userFName"] = fName;
                Response.Redirect("Final.aspx");
            }
        }
    }
}