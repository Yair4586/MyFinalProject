<%@ Page Title="" Language="C#" MasterPageFile="~/MyMP.Master" AutoEventWireup="true" CodeBehind="Page3.aspx.cs" Inherits="MyFinalProject.Page3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
            <style>
    p {
        font-size: 17pt;
    }

    h1 {
        text-align: center;
        font-size: 20pt;
    }

    h2 {
        text-align: center;
        color: black;
        font-size: 18pt;
    }
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
             <h1 style="color:black;">
     קיבוצים שהותקפו על ידי מחבלים
 </h1>  
 <div style="float:right;margin:5px;">
     <img src="pics/malcodet1.png" style="width: 400px" />
 </div>
 <div>
     <h2 style="margin-left: 400px;">
         חטופים ובני ערובה
     </h2>
     <p>
           לוחמי צוות הקרב של חטיבת צנחנים נלחמים בעצימות במערב חאן יונס, פושטים על תשתיות טרור, וחיסלו בשבוע האחרון עשרות רבות של מחבלים באמצעות ירי צלפים, בקרבות פנים אל פנים ועל בסיס סגירת מעגלי אש עם כוחות שיריון וסיוע אווירי.

בהיתקלויות נוספות הלוחמים זיהו שבעה מחבלים חמושים בצומת קרובה לכוחות וחיסלו אותם, כוח נוסף נתקל בחולייה של שישה מחבלים, שלושה חוסלו באמצעות ירי טנק ושלושה מחבלים נוספים שניסו לברוח חוסלו על ידי ירי של הלוחמים.

         <br />
         <br />
         <br />


         במסגרת העמקת ההתקפה הלוחמים עוברים בין עשרות תשתיות טרור וסורקים אותן בצורה יסודית. הכוחות מאתרים אמצעי לחימה רבים, מטענים, בתים ממולכדים ומסמכים מהם מפיקים מודיעין.

באחת הפשיטות, כוח לוחם נכנס למבנה בו איתר מטען תיקני מחובר ומכוון לעבר הכניסה הראשית, הכוח ניטרל את המטען ואיתר מתחת לגרם המדרגות של אותו המבנה נשקים מסוג קלאצ' ומחסניות.

 </div>
 <div style="text-align: center;">
     <a href="Final.aspx">
         <img src="pics/Back1.png" id="pic1" alt="Back" style="width: 50px"/>
     </a>
 </div>
</asp:Content>
