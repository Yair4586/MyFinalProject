using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace MyFinalProject
{
    public partial class Form_Signup : System.Web.UI.Page
    {
        public string st = "";
        public string yrBorn = "";
        public string msg = "";
        public string sqlMsg = "";

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
                int yBorn = int.Parse(yearBorn);
                string password = Request.Form["pw"];
                string hobby = Request.Form["hobby"];

                char hob1 = 'F';
                char hob2 = 'F';
                char hob3 = 'F';
                char hob4 = 'F';
                char hob5 = 'F';

                if (hobby != null)
                {
                    hobby = Request.Form["hobby"].ToString();

                    if (hobby.Contains('1')) hob1 = 'T';
                    if (hobby.Contains('2')) hob2 = 'T';
                    if (hobby.Contains('3')) hob3 = 'T';
                    if (hobby.Contains('4')) hob4 = 'T';
                    if (hobby.Contains('5')) hob5 = 'T';
                }

                st += "<tr><td>user name: </td><td>" + uName + "</td></tr>";
                st += "<tr><td>first name: </td><td>" + fName + "</td></tr>";
                st += "<tr><td>last name: </td><td>" + lName + "</td></tr>";
                st += "<tr><td>email: </td><td>" + email + "</td></tr>";
                st += "<tr><td>yearBorn: </td><td>" + yBorn + "</td></tr>";
                st += "<tr><td>gender: </td><td>" + gender + "</td></tr>";
                st += "<tr><td>phone: </td><td>" + prefix + "-" + phone + "</td></tr>";
                st += "<tr><td>hobbies: </td><td>";
                if (hob1 == 'T')
                    st += "computers, ";
                if (hob2 == 'T')
                    st += "Music, ";
                if (hob3 == 'T')
                    st += "Movies, ";
                if (hob4 == 'T')
                    st += "TV, ";
                if (hob5 == 'T')
                    st += "Horses";
                st += "</td><tr>";
                st += "<tr><td>password: </td><td>" + password + "</td></tr>";

                string fileName = "usersDB.mdf";
                string tableName = "usersTbl";

                string sqlSelect = $"SELECT * FROM {tableName} WHERE uName = '{uName}'";
                if (Helper.IsExist(fileName, sqlSelect))
                {
                    msg = "user name has been taken";
                    sqlMsg = sqlSelect;
                }
                else
                {
                    string sqlInsert = $"insert into{tableName} ";
                    sqlInsert += $"values ('{uName}', N'{fName}', N'{lName}', ";
                    sqlInsert += $"'{email}', '{gender}', N'{city}',  {yearBorn}, '{prefix}', '{phone}', ";
                    sqlInsert += $"'{hob1}', '{hob2}', '{hob3}', '{hob4}', '{hob5}','{password}')";


                    Helper.DoQuery(fileName, sqlInsert);
                }

                st += "</table>";
                /*
                Session["uName"] = uName;
                Session["userFName"] = fName;
                Response.Redirect("Final.aspx");
                */
            }
        }
    }

}