<%@ Page Title="" Language="C#" MasterPageFile="~/MyMP.Master" AutoEventWireup="true" CodeBehind="LoginAdmin.aspx.cs" Inherits="MyFinalProject.LoginAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form method="post" runat="server">
    <table id="table1" direction="rtl" align="center">
        <tr>
            <td> שם מנהל:</td>
            <td><input type="text" name="mName" id="mName" /></td>
        </tr>
        <tr>
            <td> סיסמה:</td>
            <td><input type="password" name="pw" id="pw" /></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
            <input type="submit" name="submit" value=" התחבר " /></td>
        </tr>
    </table>
 </form>
    <%=msg %>
</asp:Content>
