﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MyMP.Master" AutoEventWireup="true" CodeBehind="ComplexQuery.aspx.cs" Inherits="MyFinalProject.ComplexQuery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
    .tableDB {border: 1px solid black; margin: 0px auto;}
    .tblTH {text-align: center; border: 1px solid black;}
    .tblTD1 {border: 1px solid black; text-align: center;}
    .tblTD2 {border: 1px solid black; text-align: right;}
    .tblTD3 {border: 1px solid black; text-align: left;}
</style>
    <script>
        var Back1 = "pics/Back1.png";
        var Back2 = "pics/Back2.png";
        var Back3 = "pics/Back3.png";

        setInterval("start()", 300);

        function show(str) {
            pic1.src = str;
        }

        var i = 1;

        function start() {
            j = i % 4;

            switch (j) {
                case 0: show(Back1); break;
                case 1: show(Back2); break;
                case 2: show(Back3); break;
            }
            i++;
        }
    </script>
    <script>
        function detectField1() {
            if (document.getElementById("field1").value == "gender") {
                document.getElementById("query1").innerHTML =
                    "<input type='radio' name='value1' value='male' checked='checked' />זכר" +
                    "<input type='radio' name='value1' value='female' />נקבה";
            }
            else {
                if (document.getElementById("field1").value == "yearBorn" ||
                    document.getElementById("field1").value == "yearFrom") {
                    var yearStr = "<select name='value1'><option value='0'>בחר שנה</option>";
                    var currYear = new Date().getFullYear();
                    var fromYear = currYear - 40;
                    var toYear = currYear - 10;

                    for (var i = fromYear; i < toYear; i++) {
                        yearStr += "<option value='" + i + "'>" + i + "</option>\n";
                    }

                    document.getElementById("query1").innerHTML = yearStr + "</select>";

                }
                else {
                    if (document.getElementById("field1").value == "prefix") {
                        var prefixStr = "<select name='value1'>";

                        prefixStr += "<option value='050'>050</option>";
                        prefixStr += "<option value='052'>052</option>";
                        prefixStr += "<option value='054'>054</option>";
                        prefixStr += "<option value='057'>057</option>";
                        prefixStr += "<option value='077'>077</option>";
                        prefixStr += "<option value='03'>03</option>";
                        prefixStr += "<option value='02'>02</option>";
                        prefixStr += "<option value='04'>04</option>";
                        prefixStr += "<option value='08'>08</option>";
                        prefixStr += "<option value='09'>09</option>";

                        prefixStr += "</select>";

                        document.getElementById("query1").innerHTML = prefixStr;

                    }
                    else {
                        if (document.getElementById("field1").value == "hobby") {
                            var hobbyStr = "<select name='value1'>";

                            hobbyStr += "<option value='1'>computer</option>";
                            hobbyStr += "<option value='2'>Music</option>";
                            hobbyStr += "<option value='3'>Movies</option>";
                            hobbyStr += "<option value='4'>TV</option>";
                            hobbyStr += "<option value='5'>Horses</option>";
                            hobbyStr += "</select>";

                            document.getElementById("query1").innerHTML = hobbyStr;
                        }
                        else {
                            document.getElementById("query1").innerHTML = "<input type='text' name='value1'  />";
                        }
                    }
                }
            }
        }
        function detectField2() {
            if (document.getElementById("field2").value == "gender") {
                document.getElementById("query2").innerHTML =
                    "<input type='radio' name='value2' value='male' checked='checked' />זכר" +
                    "<input type='radio' name='value2' value='female' />נקבה";
            }
            else {
                if (document.getElementById("field2").value == "yearBorn" ||
                    document.getElementById("field2").value == "yearTo") {
                    var yearStr = "<select name='value2'><option value='0'>בחר שנה</option>";
                    var currYear = new Date().getFullYear();
                    var fromYear = currYear - 40;
                    var toYear = currYear - 10;

                    for (var i = fromYear; i < toYear; i++) {
                        yearStr += "<option value='" + i + "'>" + i + "</option>\n";
                    }

                    document.getElementById("query2").innerHTML = yearStr + "</select>";

                }
                else {
                    if (document.getElementById("field2").value == "prefix") {
                        var prefixStr = "<select name='value2'>";

                        prefixStr += "<option value='050'>050</option>";
                        prefixStr += "<option value='052'>052</option>";
                        prefixStr += "<option value='054'>054</option>";
                        prefixStr += "<option value='057'>057</option>";
                        prefixStr += "<option value='077'>077</option>";
                        prefixStr += "<option value='03'>03</option>";
                        prefixStr += "<option value='02'>02</option>";
                        prefixStr += "<option value='04'>04</option>";
                        prefixStr += "<option value='08'>08</option>";
                        prefixStr += "<option value='09'>09</option>";

                        prefixStr += "</select>";

                        document.getElementById("query2").innerHTML = prefixStr;

                    }
                    else {
                        if (document.getElementById("field2").value == "hobby") {
                            var hobbyStr = "<select name='value2'>";

                            hobbyStr += "<option value='1'>computer</option>";
                            hobbyStr += "<option value='2'>Music</option>";
                            hobbyStr += "<option value='3'>Movies</option>";
                            hobbyStr += "<option value='4'>TV</option>";
                            hobbyStr += "<option value='5'>Horses</option>";
                            hobbyStr += "</select>";

                            document.getElementById("query2").innerHTML = hobbyStr;
                        }
                        else {
                            document.getElementById("query2").innerHTML = "<input type='text' name='value2'  />";
                        }
                    }
                }
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <form id="Form1" method="post" runat ="server" align="center">

        <table border="1" style="margin: 0px auto;">
            <tr>
                <td style="width: 20px;">
                    <select name="field1" id="field1" onclick="detectField1(); ">
                        <option value="lName">שם משפחה</option>
                        <option value="fName">שם פרטי</option>
                        <option value="email">דוא'ל</option>
                        <option value="gender">מגדר</option>
                        <option value="yearBorn">שנת לידה</option>
                        <option value="yearFrom">מ שנה</option>
                        <option value="prefix">קידומת טלפון</option>
                        <option value="phone">טלפון</option>
                        <option value="hobby">תחביב</option>
                    </select>
                </td>
                <td stye="width: 150px">
                    <div id="query1" style="text-align: center;"></div>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center; direction: ltr;">
                    <input type="radio" name="op" value="and" checked="checked" />AND
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="op" value="or" />OR

                </td>
            </tr>
            <tr>
                <td style="width: 20px;">
                    <select name="field2" id="field2" onclick="detectField2(); ">
                        <option value="lName">שם משפחה</option>
                        <option value="fName">שם פרטי</option>
                        <option value="email">דוא'ל</option>
                        <option value="gender">מגדר</option>
                        <option value="yearBorn">שנת לידה</option>
                        <option value="yearTo">עד שנה</option>
                        <option value="prefix">קידומת טלפון</option>
                        <option value="phone">טלפון</option>
                        <option value="hobby">תחביב</option>
                    </select>
                </td>
                <td stye="width: 150px">
                    <div id="query2" style="text-align: center;"></div>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;">
                    <input type="submit" name="submit" value="חפש" />
                </td>
            </tr>
        </table>
    </form>
    </center>
        <h2 dir = "ltr" align="center">
        <%=sql %>

    </h2>
        <table style="border: 1px solid black; margin: 0px auto">
    <%=st %>
</table>
<h3 align="center"><%= msg %></h3>
    <div style="text-align: center">
<a href="managerPage.aspx">
    <img src="pics/Back1.png" id="pic1" alt="Back" style="width: 50px"/>
</a>
</div>
</asp:Content>
