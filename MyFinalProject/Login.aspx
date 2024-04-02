<%@ Page Title="" Language="C#" MasterPageFile="~/MyMP.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MyFinalProject.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        table{
            margin: 0px auto;
            direction: rtl;
            text-align: center;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form method="post" runat="server">
        <table>
            <tr>
                <td> שם משתמש:</td>
                <td><input type="text" name="uName" /></td>
            </tr>
            <tr>
                <td> סיסמה:</td>
                <td><input type="password" name="pw" /></td>
            </tr>
            <tr>
                <td colspan ="2" style="text-align:center">
                    <input type="submit" name="submit" value=" התחבר "/>

                </td>
            </tr>
        </table>
    </form>
    <%=msg %> <br />
    <%=sqlLogin %>
</asp:Content>
