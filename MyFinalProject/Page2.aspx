<%@ Page Title="" Language="C#" MasterPageFile="~/MyMP.Master" AutoEventWireup="true" CodeBehind="Page2.aspx.cs" Inherits="MyFinalProject.Page2" %>
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
     <img src="pics/hatoof.jpg" style="width: 300px"/>
 </div>
 <div>
     <h2 style="margin-left: 300px;">
         חטופים ובני ערובה
     </h2>
     <p>
           253 אנשים מישראל נחטפו בידי המחבלים לתוך רצועת עזה. על פי הערכות, הם מוחזקים בעיקר בדרום רצועת עזה, שבשליטת חמאס. רוב החטופים הם אזרחים, כולל קשישים וילדים. 35 מהחטופים הם עובדים זרים (רובם מתאילנד) ותיירים. בנוסף, לחלק מהישראלים החטופים ישנה אזרחות כפולה ממספר מדינות, בהן: ארגנטינה, ארצות הברית, צרפת, גרמניה, רוסיה ואיטליה. עד אפריל 2024, שבו לישראל 112 חטופים חיים וחולצו 12 גופות. נקבע מותם של 34 מתוך 129 החטופים שנותרו ברצועה.
         <br />
         <br />
         <br />
         <br />


     </p>
     <h2>
         חטיפת נחשון וקסמן
     </h2>
     <div style="float:right;margin:5px;">
         <img src="pics/kasman.png" style="width: 150px"/>
</div>
     <p>
ב-9 באוקטובר 1994 המתין וקסמן בצומת הטייסים ליד יהוד לטרמפ שייקח אותו לבית של ידידה שלו ברמלה. הוא עלה למכונית ובה ארבעה מחבלים מארגון חמאס, אשר התחפשו למתנחלים יהודים. המחבלים לקחו את וקסמן לביר נבאלא שמצפון לירושלים כבן ערובה. למחרת יום חטיפתו העבירו החוטפים לרצועת עזה קלטת וידאו שבה צולם וקסמן כשאקדח מוצמד לרקתו, מבקש מראש הממשלה יצחק רבין שישחרר את השייח' אחמד יאסין ועוד 200 אסירים ביטחוניים. לפי המסר שהעביר וקסמן, אם לא תיכנע ישראל לדרישה, יוציאו אותו להורג ביום שישי בשעה 20:00.     </p>
 </div>
 <div style="text-align: center;margin-left: 150px">
     <a href="Final.aspx">
         <img src="pics/Back1.png" id="pic1" alt="Back" style="width: 50px"/>
     </a>
 </div>
</asp:Content>
