<%@ Page Title="" Language="C#" MasterPageFile="~/MyMP.Master" AutoEventWireup="true" CodeBehind="Game.aspx.cs" Inherits="MyFinalProject.Game" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
.container {
    position: relative;
    
}
.map{
    position: absolute;
    
}
.player {
    position: absolute;
    left: -1000px;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <img src="pics/game/map.png" class="map"/>
        <img src="pics/game/redPawn.png" class="player" />
    </div>
    
</asp:Content>
