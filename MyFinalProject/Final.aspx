<%@ Page Title="" Language="C#" MasterPageFile="~/MyMP.Master" AutoEventWireup="true" CodeBehind="Final.aspx.cs" Inherits="MyFinalProject.Final" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
            <style>
    p{
    font-size: 20pt;
    }
    h1{
        text-align: center;
        color:black;
    }
    h2{
        text-align: center;
    }
    hr{
        background-color: crimson;
        float:right;
        height:5px;
        width:300px;
    }
    .more{
        font-size:30px;
    }
</style>
    <script>
    var Back1 = "pics/Back1.png";
    var Back2 = "pics/Back2.png";
    var Back3 = "pics/Back3.png";

    setInterval("start()", 300);

    function show(str) {
        pic1.src = str;
        pic2.src = str;
        pic3.src = str;
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
            <h1 class="Header">the war's effect in Gaza Envelope</h1>

    <hr />
<br />
<ul>
    <li><a href="#a1"><h3> קיבוצים שהותקפו על ידי מחבלים </h3></a></li>
    <li><a href="#a2"><h3> חטופים ובני ערובה </h3></a></li>
    <li><a href="#a3"><h3> בית ממולכד </h3></a></li>
</ul>
<hr />
<br />

<h2 id="a1">קיבוצים שהותקפו על ידי מחבלים </h2>

<p>
 בקיבוץ כפר עזה נרצחו כ־72 איש. לאחר שכוחות צה"ל הגיעו למקום התנהלו קרבות ממושכים, ביום הראשון והשני להתקפה, מול כעשרה מחבלים שחדרו לקיבוץ. חלק מתושבי הקיבוץ היו נצורים בבתיהם עד למחרת.
</p>

<a href="Page1.aspx" class="more">קרא עוד...</a>

<div style=" text-align:center;">
    <img src="pics/kfar azza.png" style=" width: 30%;" />
</div>

<div style="text-align: center;">
    <a href="#top">
       <img src="pics/Back1.png" id="pic1" alt="Back" style="width: 50px"/>
    </a>
</div>

<h2 id="a2">חטופים ובני ערובה</h2>

<p>
    253 אנשים מישראל נחטפו בידי המחבלים לתוך רצועת עזה. על פי הערכות, הם מוחזקים בעיקר בדרום רצועת עזה, שבשליטת חמאס. רוב החטופים הם אזרחים, כולל קשישים וילדים. 35 מהחטופים הם עובדים זרים (רובם מתאילנד) ותיירים. בנוסף, לחלק מהישראלים החטופים ישנה אזרחות כפולה ממספר מדינות, בהן: ארגנטינה, ארצות הברית, צרפת, גרמניה, רוסיה ואיטליה. עד אפריל 2024, שבו לישראל 112 חטופים חיים וחולצו 12 גופות. נקבע מותם של 34 מתוך 129 החטופים שנותרו ברצועה.
</p>

<a href="Page2.aspx" class="more">קרא עוד...</a>

<div style=" text-align:center;">
    <img src="pics/hatoof.jpg" style=" width: 30%;"/>
    <img src="pics/hatoof2.png" style=" width: 30%;">
    <img src="pics/hatoof3.png" style=" width: 30%;"/>
</div>

<div style="text-align: center;">
    <a href="#top">
        <img src="pics/Back1.png" id="pic2" alt="Back" style="width: 50px"/>
    </a>
</div>


<h2 id="a3">בית ממולכד</h2>

<p>
    חיילי היחידות יהל"ם ועוקץ איתרו בית ממולכד בשטח הפלסטיני. בתמונה נראים המטענים שהוצמדו לקירות ולחלונות הבית. מתחילת הפעילות הקרקעית איתר צה"ל 16 מנהרות טרור

</p>

<a href="Page3.aspx" class="more">קרא עוד...</a>
    
<div style=" text-align:center;">
    <img src="pics/malcodet4.png" style=" width: 30%;"/>
    <img src="pics/malcodet2.png" style=" width: 30%;"/>
    <img src="pics/malcodet3.png" style=" width: 30%;"/>
</div>

<div style="text-align: center;">
    <a href="#top">
        <img src="pics/Back1.png" id="pic3" alt="Back" style="width: 50px"/>
    </a>
</div>



</asp:Content>
