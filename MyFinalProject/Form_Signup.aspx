<%@ Page Title="" Language="C#" MasterPageFile="~/MyMP.Master" AutoEventWireup="true" CodeBehind="Form_Signup.aspx.cs" Inherits="MyFinalProject.Form_Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        function chkForm() {
            var uName = document.getElementById("uName").value;
            var fName = document.getElementById("fName").value;
            var lName = document.getElementById("lName").value;
            var email = document.getElementById("email").value;
            var answer = document.getElementsByName("gender");
            if (uName.length < 2) {
                document.getElementById("mUName").value = "שם משתמש קצר מדי או לא קיים ";
                document.getElementById("mUName").style.display = "inline";
                return false;
            }
            else
                document.getElementById("mUName").style.display = "none";

            if (fName.length < 2) {
                document.getElementById("mFName").value = "שם פרטי קצר מדי או לא קיים ";
                document.getElementById("mFName").style.display = "inline";
                return false;
            }
            else
                document.getElementById("mFName").style.display = "none";

            if (lName.length < 2) {
                document.getElementById("mLName").value = "שם משפחה קצר מדי או לא קיים ";
                document.getElementById("mLName").style.display = "inline";
                return false;
            }
            else
                document.getElementById("mLName").style.display = "none";



            var msg = "";
            var size = email.length;
            if (size < 6)
                msg = "מייל קצר מדי או ארוכה מדי ";

            else if (size > 30)
                msg = "מייל קצר מדי או ארוכה מדי ";

            var at = email.indexOf('@')
            if (at == -1) {
                msg = "כתובת דוא'ל חייבת לכלול @ אחד";
            }
            else if (email.lastIndexOf('@') != at) {
                msg = "אסור שיהיה יותר מסימן @ אחד בדוא'ל";
            }
            var dot = email.indexOf('.', at);
            if (dot == -1)
                msg = "כתובת דוא'ל חייבת לכלול נקודה אחד";
            else if (dot - at < 2)
                msg = "הנקודה קרובה מדי ל-@";
            else if (dot == 0 || dot == size - 1)
                msg = "נקודה לר יכולה להופיע בתן הראשון או האחון";

            else if (isQuot(email)) {
                msg = "כתובת דוא'ל לא יכולה להכיל גרש או גרשיים";
            }
            else if (isHebrew(email)) {
                msg = "כתובת דוא'ל לא יכולה להכיל עברית";
            }
            else if (isValidString(email)) {
                msg = "כתובת דוא'ל לא יכולה להכיל תווים אסורים";
            }


            if (msg != "") {
                document.getElementById("mEmail").value = msg;
                document.getElementById("mEmail").style.display = "inline";
                return false;
            }

            else
                document.getElementById("mEmail").style.display = "none";



            if (!answer[0].checked && !answer[1].checked) {
                document.getElementById("mGender").value = "חובה לסמן מגדר ";
                document.getElementById("mGender").style.display = "inline";
                return false;
            }
            else
                document.getElementById("mGender").style.display = "none";



            var city = document.getElementById("city").value;

            if (city == "other") {
                msg = " יש לבחור יישוב או איזור מגורים ";

                document.getElementById("mCity").value = msg;
                document.getElementById("mCity").style.display = "inline";
                msg = "";
                return false;
            }
            else
                document.getElementById("mCity").style.display = "none";

            var yearBorn = document.getElementById("yearBorn").value;
            var d = new Date();
            var year = d.getFullYear();
            if (isNaN(yearBorn))
                msg = "שנת לידה חייבת להכיל ספרות בלבד";
            else
                if (yearBorn < 1900)
                    msg = "שנת לידה חייבת להיות מספר 4 ספרתי גדול מ- 1900";
                else
                    if (yearBorn > year - 5)
                        msg = "צעיר מדי מכדי להירשם לאתר";


            if (msg != "") {

                document.getElementById("mYearBorn").value = msg;
                document.getElementById("mYearBorn").style.display = "inline";
                return false;
            }
            else
                document.getElementById("mYearBorn").style.display = "none";

            var password = document.getElementById("pw").value;
            var passwordChk = document.getElementById("pwChk").value;

            if (password < 2 || password > 11) {
                msg = "אורך סיסמא חייב להיות יותר מתו אחד ופחות מ11 תווים";
            }
            if (hasUpWords(password)) {
                msg = "הסיסמא חייבת להכיל לפחות אות גדולה אחת";
            }
            if (hasLowWords(password)) {
                msg = "הסיסמא חייבת להכיל לפחות אות קטנה אחת";
            }
            if (hasNumbers(password)) {
                msg = "הסיסמא חייבת להכיל לפחות ספרה אחת";
            }
            if (hasQuot(password)) {
                msg = "לסיסמא אסור להכיל גרש או גרשיים";
            }
            if (hasValidString(password)) {
                msg = "לסיסמא אסור להכיל תווים אסורים";
            }
            if (hasHebrew(password)) {
                msg = "לסיסמא אסור להכיל אותיות בעברית";
            }


            if (msg != "") {

                document.getElementById("mPW").value = msg;
                document.getElementById("mPW").style.display = "inline";
                return false;
            }
            else
                document.getElementById("mPW").style.display = "none";


            if (password != passwordChk) {

                document.getElementById("mPWChk").value = msg;
                document.getElementById("mPWChk").style.display = "inline";
                return false;
            }
            else
                document.getElementById("mPWChk").style.display = "none";

        }
        function isQuot(mail) {
            var quot = '\"', quot1 = "\'";
            if (mail.indexOf(quot) != -1 || mail.indexOf(quot1) != -1) {
                return true;

            }
            return false;
        }
        function isHebrew(mail) {
            var i = 0, ch;
            var len = mail.length;
            while (i < len) {
                ch = mail.charAt(i);
                if (ch >= "א" && ch <= "ת") {
                    return true;

                }
                i++;
            }
            return false;
        }
        function isValidString(mail) {
            var badChr = "$%^&*()-! []{}<>?";
            var len = mail.length;

            var i = 0, pos, ch;
            while (i < len) {
                ch = mail.charAt(i);
                pos = badChr.indexOf(ch);
                if (pos != -1) {
                    return true;
                }
                i++;
            }
            return false;

        }
        function hasUpWords(password) {
            var i = 0, ch;
            var len = password.length;
            while (i < len) {
                ch = password.charAt(i);
                if (ch >= "A" && ch <= "Z") {
                    return false;

                }
                i++;
            }
            return true;
        }
        function hasLowWords(password) {
            var i = 0, ch;
            var len = password.length;
            var counter = 0;
            while (i < len) {
                ch = password.charAt(i);
                if (ch >= "a" && ch <= "z") {
                    return false;
                }
                i++;
            }
            return true;
            
        }
        function hasNumbers(password) {
            var i = 0, ch;
            var len = password.length;
            while (i < len) {
                ch = password.charAt(i);
                if (ch >= "0" && ch <= "9") {
                    return false;

                }
                i++;
            }
            return true;
        }
        function hasValidString(password) {
            var badChr = "$%^&*()-! []{}<>?";
            var len = password.length;

            var i = 0, pos, ch;
            while (i < len) {
                ch = password.charAt(i);
                pos = badChr.indexOf(ch);
                if (pos != -1) {
                    return true;
                }
                i++;
            }
            return false;

        }
        function hasQuot(password) {
            var quot = '\"', quot1 = "\'";
            if (password.indexOf(quot) != -1 || password.indexOf(quot1) != -1) {
                return true;

            }
            return false;
        }
        function hasHebrew(password) {
            var i = 0, ch;
            var len = password.length;
            while (i < len) {
                ch = password.charAt(i);
                if (ch >= "א" && ch <= "ת") {
                    return true;

                }
                i++;
            }
            return false;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>טופס רישום</h1>
    <form method="post" runat="server" onsubmit="return chkForm();">
        <table>
            <tr>
                <td>שם משתמש</td>
                <td><input type="text" id="uName" name="uName"/></td>
                <td><input type="text" id="mUName" size="30" style="display:none; background-color: silver; font-weight:bold;" disabled="disabled" /></td>
            </tr>
            <tr>
                <td>שם פרטי</td>
                <td><input type="text" id="fName" name="fName"/></td>
                <td><input type="text" id="mFName" size="30" style="display:none; background-color: silver; font-weight:bold;" disabled="disabled" /></td>
            </tr>
            <tr>
                <td>שם משפחה</td>
                <td><input type="text" id="lName" name="lName"/></td>
                <td><input type="text" id="mLName" size="30" style="display:none; background-color: silver; font-weight:bold;" disabled="disabled" /></td>

                
            </tr>
            <tr>
                <td>כתובת דוא"ל</td>
                <td><input type="text" id="email" name="email"/></td>
                <td><input type="text" id="mEmail" size="30" style="display:none; background-color: silver; font-weight:bold;" disabled="disabled" /></td>

            </tr>
            <tr>
                <td> מגדר: </td>
                <td>
                    <input type ="radio" name="gender" value="male"/> זכר
                    <input type ="radio" name="gender" value="female"/>נקבה
                </td>
                <td><input type="text" id="mGender" size="30" style="display:none; background-color: silver; font-weight:bold; "disabled="disabled" /></td>
            </tr>
            <tr>
                <td> יישוב מגורים: </td>
                <td>
                    <select name="city" id="city">
                        <option value="other"> בחר יישוב מגורים</option>
                        <option value="חיפה"> חיפה</option>
                        <option value="תל-אביב"> תל-אביב</option>
                        <option value="ירושליים"> ירושליים</option>
                        <option value="מודיעין"> מודיעין</option>
                        <option value="באר-שבע"> באר-שבע</option>
                        <option value="מטולה"> מטולה</option>
                        <option value="צפון"> צפון</option>
                        <option value="מרכז"> מרכז</option>
                        <option value="דרום"> דרום</option>
                    </select>
                </td>
                <td><input type="text" name="mCity" id="mCity" size="30" style="display:none; background-color: black; color:white; font-weight:bold; "disabled="disabled" /></td>
            </tr>

            <tr>
                <td> קידומת טלפון: </td>
                <td>
                    <select name="prefix" id="prefix">
                        <option value="choose">בחר</option>
                        <option value="050"> 050</option>
                        <option value="052"> 052</option>
                        <option value="053"> 053</option>
                        <option value="054"> 054</option>
                        <option value="055"> 055</option>
                        <option value="057"> 057</option>
                        <option value="058"> 058</option>
                        <option value="02"> 02</option>
                        <option value="03"> 03</option>
                        <option value="04"> 04</option>
                        <option value="08"> 08</option>
                        <option value="09"> 09</option>
                        <option value="077"> 077</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>מספר טלפון</td>
                <td><input type="text" id="phone" name="phone"/></td>
                <td><input type="text" id="mPhone" size="30" style="display:none; background-color: silver; font-weight:bold;" disabled="disabled" /></td>
            </tr>

            <tr>
                <td> שנת לידה: </td>
                <td>
                    <select name="yearBorn" id="yearBorn">
                        <%=yrBorn %>
                    </select>
                </td>
            </tr>

            <tr>
                <td>תחביבים </td>
                <td>
                    <table style ="width: 550px;">
                        <tr>
                            <td class="cbHob"><input type="checkbox" name="hobby" value="1" checked="checked"/>Computers</td>
                            <td class="cbHob"><input type="checkbox" name="hobby" value="2"/>Music</td>
                            <td class="cbHob"><input type="checkbox" name="hobby" value="3"/>Movies</td>
                            <td class="cbHob"><input type="checkbox" name="hobby" value="4"/>TV</td>
                            <td class="cbHob"><input type="checkbox" name="hobby" value="5"/>Horses</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>סיסמא</td>
                <td>
                    <input type="password" name="pw" id="pw" size="10"/>
                        <span style="color: red;"> * 6-10 תווים</span>
                </td>
                <td><input type="text" id="mPW" size="40" style="display:none; background-color: silver; font-weight:bold; "disabled="disabled" /></td>
            </tr>
            <tr>
                
                <td>בדיקת סיסמא</td>
                <td>
                    <input type="password" name="pwChk" id="pwChk" size="10"/>
                </td>
                <td><input type="text" id="mPWChk" size="40" style="display:none; background-color: silver; font-weight:bold; "disabled="disabled" /></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;">
                    <input type="submit" name="submit" value="  שלח  " onclick="chkForm"/>
                </td>
            </tr>
        </table>
    </form>
    <table border="1" align="center" dir="ltr">
        <%=st %>
    </table>


</asp:Content>
