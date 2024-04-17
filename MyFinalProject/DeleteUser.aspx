<%@ Page Title="" Language="C#" MasterPageFile="~/MyMP.Master" AutoEventWireup="true" CodeBehind="DeleteUser.aspx.cs" Inherits="MyFinalProject.DeleteUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">
    h1 { color: red; text-align: center;}
    h2 {text-align: center;}
    h3 {text-align: center; direction: rtl;}
    .tableDB {border: 1px solid black; margin: 0px auto;}
    .tblTH {text-align: center; border: 1px solid black;}
    .tblTD1 {border: 1px solid black; text-align: center;}
    .tblTD2 {border: 1px solid black; }
    .tblTD3 {border: 1px solid black; text-align: right;}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>מחיקת משתמשים</h1>
<h2><%=sqlDelete %></h2>
    
<table class="tableDB">
    <%=st %>
</table>

<h3><%=msg %></h3>
</asp:Content>
