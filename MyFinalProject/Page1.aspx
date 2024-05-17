<%@ Page Title="" Language="C#" MasterPageFile="~/MyMP.Master" AutoEventWireup="true" CodeBehind="Page1.aspx.cs" Inherits="MyFinalProject.Page1" %>
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
     <img src="pics/nir oz.png" style="width: 300px;" />
 </div>
 <div>
     <h2 style="margin-left: 300px;">
         בקיבוץ ניר עוז
     </h2>
     <p>
          הציתו המחבלים בתים וזרעו הרס, בעוד אנשי הקיבוץ מסתגרים בממ"דים ונועלים אותם מבפנים. נרצחו 38 בני אדם, ובכלל זה משפחה שלמה בת חמש נפשות. מהקיבוץ נחטפו למעלה מ-70 תושבים בהם סבתא ומשפחה בת חמש נפשות, נילי מרגלית האחות מבית חולים סורוקה בת הקיבוץ וכן אישה, שני ילדיה ושני הוריה. כן נחטפו בני משפחת ביבס, בהם החטוף הצעיר ביותר, כפיר בן ה-9 חודשים. רק לקראת ערב הגיעו הכוחות לחלץ את הנצורים. 160 חברי הקיבוץ נותרו עוד לילה שלם בגני ילדים, עד שפונו לאילת.    
         <br />
         <br />
         <br />
         <br />


     </p>
     <h2>
         בקיבוץ ארז
     </h2>
     <div style="float:right;margin:5px;">
         <img src="pics/kibuts erez.jpg" style="width: 300px" />
</div>
     <p>
עם תחילת המתקפה התקשר רבש"ץ קיבוץ ארז, שלא נכח באזור, לקודמו בתפקיד. זה הקפיץ את כיתת הכוננות לעמדות דקות לפני ניסיון החדירה של המחבלים לקיבוץ. שניים מחברי כיתת הכוננות, שהתמקמו בעמדת תצפית גבוהה, פתחו באש לעבר שני טנדרים בכביש הגישה לקיבוץ (לאחר שזוהו כמחבלים) ובמקום התפתח קרב יריות. לעזרתה של כיתת הכוננות הגיעה תגבורת מקיבוץ אור הנר, מה שאִפשר להמשיך בלחימה במשך שלוש שעות, עד שרוב המחבלים נפגעו מבלי שהצליחו לחדור לקיבוץ. בקרב נהרג סרן במילואים אמיר נעים, תושב הקיבוץ וחבר בכיתת הכוננות
     </p>
 </div>
 <div style="text-align: center;margin-left: 300px">
     <a href="Final.aspx">
         <img src="pics/Back1.png" id="pic1" alt="Back" style="width: 50px"/>
     </a>
 </div>
</asp:Content>
