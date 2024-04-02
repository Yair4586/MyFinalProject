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
            string field = Request.Form["field"];
            string value = Request.Form["value"];

            string fileName = "users.mdf";
            string tableName = "usersTbl";

            if(field == "gender" || field == "prefix")
            {
                sql = "SELECT * FROM " + tableName + " where (" + field + " = '" + value + "');";
            }
            else
            {
                if(field == "yearBorn")
                    sql = "SELECT * FROM " + tableName + " where (" + field + " = " + value + ");";
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
                        sql = "SELECT * FROM " + tableName + " where (" + field + " = " + value + ");";

                    }
                }
            }
        }
    }
}