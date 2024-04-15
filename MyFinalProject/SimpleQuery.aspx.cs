using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace MyFinalProject
{
    public partial class SimpleQuery : System.Web.UI.Page
    {
        public string st = "";
        public string msg = "";
        public string sql = "";
   
        protected void Page_Load(object sender, EventArgs e)
        {
            string sqlSelect = "";
            string field = Request.Form["field"];
            string value = Request.Form["value"];

            string fileName = "users.mdf";
            string tableName = "usersTbl";

            if(field == "gender" || field == "prefix")
            {
                sqlSelect = "SELECT * FROM " + tableName + " where (" + field + " = '" + value + "');";
            }
            else
            {
                if(field == "yearBorn")
                    sqlSelect = "SELECT * FROM " + tableName + " where (" + field + " = " + value + ");";
                else
                {
                    if(field == "hobby")
                    {
                        var val = int.Parse(value);
                        switch (val)
                        {
                            case 1: field = "hob1"; break;
                            case 2: field = "hob2"; break;
                            case 3: field = "hob3"; break;
                            case 4: field = "hob4"; break;
                            case 5: field = "hob5"; break;
                        }
                        sqlSelect = "SELECT * FROM " + tableName + " where (" + field + " = 'T');";

                    }
                    else
                        if (field == "email")
                        sqlSelect = "SELECT * FROM " + tableName + " where (" + field + " like '%" + value + "%');";
                        else
                        sqlSelect = "SELECT * FROM " + tableName + " where (" + field + " like N'" + value + "%');";
                }
            }
            sql = sqlSelect;
            if (Request.Form["submit"] != null)
            {
                DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);

                int length = table.Rows.Count;
                if (length == 0)
                {
                    msg = "אין נרשמים";
                }
                else
                {
                    st += "<tr>";
                    st += "<th class = 'tblTH' style = 'width: 100px;' >שם משתמשים</th>";
                    st += "<th class = 'tblTH' style = 'width: 80px;' >שם משפחה</th>";
                    st += "<th class = 'tblTH' style = 'width: 60px;' >שם פרטי</th>";
                    st += "<th class = 'tblTH' style = 'width: 140px;' >דוא\"ל </th>";
                    st += "<th class = 'tblTH' style = 'width: 60px;' >מגדר</th>";
                    st += "<th class = 'tblTH' style = 'width: 100px;' >ישוב מגורים</th>";
                    st += "<th class = 'tblTH' >שנת לידה</th>";
                    st += "<th class = 'tblTH' style = 'width: 100px;' >טלפון</th>";
                    st += "<th class = 'tblTH' >computers</th>";
                    st += "<th class = 'tblTH' >Music</th>";
                    st += "<th class = 'tblTH' >Movies</th>";
                    st += "<th class = 'tblTH' >TV</th>";
                    st += "<th class = 'tblTH' >Horses</th>";
                    st += "</tr>";
                    for (int i = 0; i < length; i++)
                    {
                        st += "<tr>";
                        st += "<td class = 'tblTD1'>" + table.Rows[i]["uName"] + "</td>";
                        st += "<td class = 'tblTD2'>" + table.Rows[i]["lName"] + "</td>";
                        st += "<td class = 'tblTD2'>" + table.Rows[i]["fName"] + "</td>";
                        st += "<td class = 'tblTD3' style = 'width: 60;'>";
                        st += table.Rows[i]["email"] + "</td>";
                        st += "<td class = 'tblTD1'>" + table.Rows[i]["gender"] + "</td>";
                        st += "<td class = 'tblTD1'>" + table.Rows[i]["city"] + "</td>";
                        st += "<td class = 'tblTD1'>" + table.Rows[i]["yearBorn"] + "</td>";
                        st += "<td class = 'tblTD1'>" + table.Rows[i]["prefix"] + "-";
                        st += table.Rows[i]["phone"] + "</td>";
                        st += "<td class = 'tblTD1'>" + table.Rows[i]["hob1"] + "</td>";
                        st += "<td class = 'tblTD1'>" + table.Rows[i]["hob2"] + "</td>";
                        st += "<td class = 'tblTD1'>" + table.Rows[i]["hob3"] + "</td>";
                        st += "<td class = 'tblTD1'>" + table.Rows[i]["hob4"] + "</td>";
                        st += "<td class = 'tblTD1'>" + table.Rows[i]["hob5"] + "</td>";
                        st += "</tr>";
                    }
                    msg = "נרשמו:" + length + " אנשים ";
                }
            }

        }
    }
}