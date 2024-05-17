<%@ Page Title="" Language="C#" MasterPageFile="~/MyMP.Master" AutoEventWireup="true" CodeBehind="ShowTable.aspx.cs" Inherits="MyFinalProject.ShowTable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    h1 { color: red; text-align: center;}
    h2 {text-align: center;}
    h3 {text-align: center; direction: ltr;}
    .tableDB {border: 1px solid black; margin: 0px auto;}
    .tblTH {text-align: center; border: 1px solid black;}
    .tblTD1 {border: 1px solid black; text-align: center;}
    .tblTD2 {border: 1px solid black; }
    .tblTD3 {border: 1px solid black; text-align: right;}
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h1>טבלת משתמשים</h1>
<h2><%=sqlSelect %></h2>
    
<table style ="border: 1px solid black; margin: 0px auto;">
    <%=st %>
</table>

<h3><%=msg %></h3>
    <div style="text-align: center">
<a href="managerPage.aspx">
    <img src="pics/Back1.png" id="pic1" alt="Back" style="width: 50px"/>
</a>
</div>
</asp:Content>
