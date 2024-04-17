using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFinalProject
{
    public partial class DeleteUser : System.Web.UI.Page
    {
        public string st = "";
        public string msg = "";
        public string sqlDelete = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"].ToString() == "no")
            {
                msg = "<div style='text-HorizontalAlign: center;'>";
                msg += "<h3>אינך מנהל, אין לך הרשאות לצפות בדף זה </h3>";
                msg += "<a hfef='first.aspx'>[המשך]</a>";
                msg += "</div>";
            }
            else
            {
                string tableName = "usersTbl";
                string fileName = "usersDB.mdf";
                string sqlSelect = "SELECT * FROM " + tableName;
                DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);

                string userToDelete = "";

                int length = table.Rows.Count;
                if (length == 0)
                    msg = "אין נרשמים";
                else
                {
                    st += "<tr>";
                    st += "<th class = 'tblTH' style = 'width: 100px;' >סיסמה</th>";
                    st += "<th class = 'tblTH' >Horses</th>";
                    st += "<th class = 'tblTH' >TV</th>";
                    st += "<th class = 'tblTH' >Movies</th>";
                    st += "<th class = 'tblTH' >Music</th>";
                    st += "<th class = 'tblTH' >computers</th>";
                    st += "<th class = 'tblTH' style = 'width: 100px;' >טלפון</th>";
                    st += "<th class = 'tblTH' style = 'width: 100px;' >שנת לידה</th>";
                    st += "<th class = 'tblTH' style = 'width: 100px;' >מגדר</th>";
                    st += "<th class = 'tblTH' style = 'width: 100px;' >דוא\"ל</th>";
                    st += "<th class = 'tblTH' style = 'width: 100px;' >שם פרטי</th>";
                    st += "<th class = 'tblTH' style = 'width: 100px;' >שם משפחה</th>";
                    st += "<th class = 'tblTH' style = 'width: 100px;' >שם משתמש</th>";
                    st += "<th class = 'tblTH' style = 'width: 100px;' > </th>";
                    st += "</tr>";

                    for (int i = 0; i < length; i++)
                    {
                        
                        st += "<tr>";
                        st += "<td class = 'tblTD1'>" + table.Rows[i]["pw"] + "</td>";
                        st += "<td class = 'tblTD1'>" + table.Rows[i]["hob5"] + "</td>";
                        st += "<td class = 'tblTD1'>" + table.Rows[i]["hob4"] + "</td>";
                        st += "<td class = 'tblTD1'>" + table.Rows[i]["hob3"] + "</td>";
                        st += "<td class = 'tblTD1'>" + table.Rows[i]["hob2"] + "</td>";
                        st += "<td class = 'tblTD1'>" + table.Rows[i]["hob1"] + "</td>";
                        st += "<td class = 'tblTD1'>" + table.Rows[i]["prefix"] + "</td>";
                        st += "<td class = 'tblTD1'>" + table.Rows[i]["yearBorn"] + "</td>";
                        st += "<td class = 'tblTD1'>" + table.Rows[i]["gender"] + "</td>";
                        st += "<td class = 'tblTD3' style='width: 60; text-align: left;'>" + table.Rows[i]["email"] + "</td>";
                        st += "<td class = 'tblTD3'>" + table.Rows[i]["fName"] + "</td>";
                        st += "<td class = 'tblTD2'>" + table.Rows[i]["lName"] + "</td>";
                        st += "<td class = 'tblTD1'>" + table.Rows[i]["uName"] + "</td>";

                        userToDelete = table.Rows[i]["uName"].ToString();

                        st += "<td style='text-align: center; border: 1px solid black;'>";
                        st += "<a href = 'DeleteRecord.aspx?uName=" + userToDelete + "'>[delete]</a>";
                        st += "</td>";

                        st += "</tr>";
                    }
                }
            }
        }
    }
}