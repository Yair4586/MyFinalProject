<%@ Page Title="" Language="C#" MasterPageFile="~/MyMP.Master" AutoEventWireup="true" CodeBehind="ComplexQuery.aspx.cs" Inherits="MyFinalProject.ComplexQuery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
