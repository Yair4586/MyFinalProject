<%@ Page Title="" Language="C#" MasterPageFile="~/MyMP.Master" AutoEventWireup="true" CodeBehind="ComplexQuery.aspx.cs" Inherits="MyFinalProject.ComplexQuery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        function detectField1() {
            if (document.getElementById("field1").value == "gender") {
                document.getElementById("query1").innerHTML =
                    "<input type='radio' name='value1' value='male' checked='checked' />זכר" +
                    "<input type='radio' name='value1' value='female' />נקבה";
            }
            else {
                if (document.getElementById("field1").value == "yearBorn" || 
                    document.getElementById("field1").value == "yearTo") {
                    var yearStr = "<select name='value'><option value='0'>בחר שנה</option>";
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

        function detectField2() {
            if (document.getElementById("field2").value == "gender") {
                document.getElementById("query2").innerHTML =
                    "<input type='radio' name='value2' value='male' checked='checked' />זכר" +
                    "<input type='radio' name='value2' value='female' />נקבה";
            }
            else {
                if (document.getElementById("field2").value == "yearBorn" ||
                    document.getElementById("field2").value == "yearTo") {
                    var yearStr = "<select name='value'><option value='0'>בחר שנה</option>";
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
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <form id="Form1" methid="post" = runat="server">
        <table border="1">
            <tr>
                <td style="width: 20px;">
                    <select name="field1" id="field1" onclick="detectField1(); ">
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
</asp:Content>
