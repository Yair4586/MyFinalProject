<%@ Page Title="" Language="C#" MasterPageFile="~/MyMP.Master" AutoEventWireup="true" CodeBehind="Game.aspx.cs" Inherits="MyFinalProject.Game" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style>
        h1{
            color: magenta;
        }
        h1,h2{
            text-align: center;
        }
        input{
            text-align: center;
        }

    </style>
    <script type="text/javascript">
        function calculate() {
            var num1 = parseInt(document.getElementById("num1").value);
            var num2 = parseInt(document.getElementById("num2").value);

            var sum = num1 + num2;
            var sub = num1 - num2;
            var mul = num1 * num2;
            var div = num1 / num2;
            var mod = num1 % num2;

            document.getElementById("sum").value = sum;
            document.getElementById("sub").value = sub;
            document.getElementById("mul").value = mul;
            document.getElementById("div1").value = Math.round(div);
            document.getElementById("div2").value = parseInt(div);
            document.getElementById("div").value = div;
            document.getElementById("mod").value = mod;
        }
    </script>
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h1>תרגילי חשבון</h1>
<h2>תיבת טקסט</h2>

<br /><br />

<div style="direction: ltr; text-align: center;">
    num1: <input type="text" id="num1" />
    num2: <input type="text" id="num2" /> 
    <br />
    <input type="button" value=" ~~ שלח ~~ " onclick="calculate();" />

    <br /><br />

    <h2>sum: <input type="text" id="sum" disabled /></h2>
    sub: <input type="text" id="sub" disabled /><br />
    mul: <input type="text" id="mul" disabled /><br />
    div: <input type="text" id="div" disabled />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    parseInt(div): <input type="text" id="div2" disabled />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    Math.round(div): <input type="text" id="div1" disabled /><br />
    mod: <input type="text" id="mod" disabled /><br />

</div>
</asp:Content>