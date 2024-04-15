<%@ Page Title="" Language="C#" MasterPageFile="~/MyMP.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="MyFinalProject.Gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
table{
    margin: 0px auto;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table>
    <tr>
        <td>
            <img onmouseover="choose(1)" src="pics/hatoof.jpg" style="width: 100px;height: 100px;"/>
        </td>
        <td>
            <img onmouseover="choose(2)" src="pics/hatoof2.png" style="width: 100px;height: 100px;"/>
        </td>
        <td>
            <img onmouseover="choose(3)" src="pics/hatoof3.png" style="width: 100px;height: 100px;"/>
        </td>
        <td>
            <img onmouseover="choose(4)" src="pics/kasman.png" style="width: 100px;height: 100px;"/>
        </td>
    </tr>
    <tr>
        <td>
            <img onmouseover="choose(5)" src="pics/kfar azza.png" style="width: 100px;height: 100px;"/>
        </td>
        <td colspan="2" rowspan="2">
            <script>
                var image1 = "pics/hatoof.jpg";
                var image2 = "pics/hatoof2.png";
                var image3 = "pics/hatoof3.png";
                var image4 = "pics/kasman.png";
                var image5 = "pics/kfar%20azza.png";
                var image6 = "pics/kfar%20azza2.png";
                var image7 = "pics/kibuts%20erez.jpg";
                var image8 = "pics/malcodet1.png";
                var image9 = "pics/malcodet2.png";
                var image10 = "pics/malcodet3.png";
                var image11 = "pics/malcodet4.png";
                var image12 = "pics/nir%20oz.png";

                function choose(int) {
                    switch (int) {
                        case 1: show(image1); break;
                        case 2: show(image2); break;
                        case 3: show(image3); break;
                        case 4: show(image4); break;
                        case 5: show(image5); break;
                        case 6: show(image6); break;
                        case 7: show(image7); break;
                        case 8: show(image8); break;
                        case 9: show(image9); break;
                        case 10: show(image10); break;
                        case 11: show(image11); break;
                        case 12: show(image12); break;
                    }
                }
                function show(str) {
                    var img = document.createElement('img');
                    img.src = str;
                    document.body.appendChild(img);
                }
            </script>
        </td>
        <td>
            <img onmouseover="choose(7)" src="pics/kibuts erez.jpg" style="width: 100px;height: 100px;"/>
        </td>
    </tr>
    <tr>
        <td>
            <img onmouseover="choose(8)" src="pics/malcodet1.png" style="width: 100px;height: 100px;"/>
        </td>
        <td>
            <img onmouseover="choose(9)" src="pics/malcodet2.png" style="width: 100px;height: 100px;"/>
        </td>
    </tr>
    <tr>
        <td>
            <img onmouseover="choose(10)" src="pics/malcodet3.png" style="width: 100px;height: 100px;"/>
        </td>
        <td>
            <img onmouseover="choose(11)" src="pics/malcodet4.png" style="width: 100px;height: 100px;"/>
        </td>
        <td>
            <img onmouseover="choose(12)" src="pics/nir oz.png" style="width: 100px;height: 100px;"/>
        </td>
        <td>
            <img onmouseover="choose(6)" src="pics/kfar azza2.png" style="width: 100px;height: 100px;"/>
        </td>
    </tr>
</table>
</asp:Content>
