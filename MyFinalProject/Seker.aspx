<%@ Page Title="" Language="C#" MasterPageFile="~/MyMP.Master" AutoEventWireup="true" CodeBehind="Seker.aspx.cs" Inherits="MyFinalProject.Seker" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .tableIn{
            margin: 0px auto;
        }
        .td1 {
            width: 100px; padding-right: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table class="tableOut">
    <tr>
        <td>
            <form runrat="server">
                <table class="tableIn" border="1">

                </table>
            </form>
        </td>

        <td style="width: 600px; text-align: center;"><% %></td>
    </tr>
</table>
</asp:Content>
