<%@ Page Title="" Language="C#" MasterPageFile="~/MyMP.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="MyFinalProject.Gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .imgCell{
            width: 120px;
            height: 80px;
            border: 1px solid gray;
        }
        .bigPicImg{
            width: 240px;
            height: 160px;
            border: 1px solid gray;
        }
table{
    margin: 0px auto;
}
    </style>
    <script>
        function picShow(picSrc) {
            bigPic.src = picSrc;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table>
    <tr>
        <td><img class="imgCell" onmouseover="picShow('pics/hatoof.jpg')" src="pics/hatoof.jpg" style="width: 100px;height: 100px;"/></td>
        <td><img class="imgCell" onmouseover="picShow('pics/hatoof2.png')" src="pics/hatoof2.png" style="width: 100px;height: 100px;"/></td>
        <td><img class="imgCell" onmouseover="picShow('pics/hatoof3.png')" src="pics/hatoof3.png" style="width: 100px;height: 100px;"/></td>
        <td><img class="imgCell" onmouseover="picShow('pics/kasman.png')" src="pics/kasman.png" style="width: 100px;height: 100px;"/></td>
    </tr>
    <tr>
        <td><img class="imgCell" onmouseover="picShow('pics/kfar azza.png')" src="pics/kfar azza.png" style="width: 100px;height: 100px;"/></td>
        <td colspan="2" rowspan="2">
            <img class="bigPicImg" id="bigPic" src="pics/hatoof.jpg"/>
        </td>
        <td><img class="imgCell" onmouseover="picShow('pics/kibuts erez.jpg')" src="pics/kibuts erez.jpg" style="width: 100px;height: 100px;"/></td>
    </tr>
    <tr>
        <td><img class="imgCell" onmouseover="picShow('pics/malcodet1.png')" src="pics/malcodet1.png" style="width: 100px;height: 100px;"/></td>
        <td><img class="imgCell" onmouseover="picShow('pics/malcodet2.png')" src="pics/malcodet2.png" style="width: 100px;height: 100px;"/></td>
    </tr>
    <tr>
        <td><img class="imgCell" onmouseover="picShow('pics/malcodet3.png')" src="pics/malcodet3.png" style="width: 100px;height: 100px;"/></td>
        <td><img class="imgCell" onmouseover="picShow('pics/malcodet4.png')" src="pics/malcodet4.png" style="width: 100px;height: 100px;"/></td>
        <td><img class="imgCell" onmouseover="picShow('pics/nir oz.png')" src="pics/nir oz.png" style="width: 100px;height: 100px;"/></td>
        <td><img class="imgCell" onmouseover="picShow('pics/kfar azza2.png')" src="pics/kfar azza2.png" style="width: 100px;height: 100px;"/></td>
    </tr>
</table>
</asp:Content>
