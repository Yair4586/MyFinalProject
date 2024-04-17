using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace MyFinalProject
{
    public partial class UpdateUser : System.Web.UI.Page
    {
        public string msg = "";
        public string sqlUpdate = "";
        public string sqlSelect = "";

        public string yrBorn = "";
        public string uName, fName, lName, email, prefix, phone, gender, pw;
        public string hob1, hob2, hob3, hob4, hob5;
        public string yearList = "";

        protected void Page_Load(object sender, EventArgs e)
        {

            string fileName = "usersDB.mdf";
            uName = Session["uName"].ToString();

            if (uName == "אורח")
            {
                msg = "אינך משתמש רשום במערכת";
                Response.Redirect("Final.aspx");
            }
            sqlSelect = "SELECT * FROM usersTbl WHERE uName = '" + uName + "'";
            DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);


            int length = table.Rows.Count;
            if (length == 0)
            msg = "אינך משתמש רשום במערכת";
            else
            {
                fName = table.Rows[0]["fName"].ToString().Trim();
                lName = table.Rows[0]["lName"].ToString().Trim();
                email = table.Rows[0]["email"].ToString().Trim();
                prefix = table.Rows[0]["prefix"].ToString().Trim();
                phone = table.Rows[0]["phone"].ToString().Trim();
                gender = table.Rows[0]["gender"].ToString().Trim();
                int yearBorn = Convert.ToInt16(table.Rows[0]["yearBorn"]);
                hob1 = table.Rows[0]["hob1"].ToString().Trim();
                hob2 = table.Rows[0]["hob2"].ToString().Trim();
                hob3 = table.Rows[0]["hob3"].ToString().Trim();
                hob4 = table.Rows[0]["hob4"].ToString().Trim();
                hob5 = table.Rows[0]["hob5"].ToString().Trim();

                pw = table.Rows[0]["pw"].ToString().Trim();
                for(int i= 1980; i<= 2010; i++)
                {
                    if (i == yearBorn)
                        yearList += "<option value='" + i + "' selected = 'selected' >" + i + "</option>";
                    else
                         yearList += "<option value='" + i + "'>" + i + "</option>";
                }
            }
        }
    }
}