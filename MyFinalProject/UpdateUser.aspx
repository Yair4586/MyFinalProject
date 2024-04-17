<%@ Page Title="" Language="C#" MasterPageFile="~/MyMP.Master" AutoEventWireup="true" CodeBehind="UpdateUser.aspx.cs" Inherits="MyFinalProject.UpdateUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .cdHob{
            width: 100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>טופס עדכון פרטים</h1>
    <form method="post" runat="server" onsubmit="return chkForm();">
        <table>
            <tr>
                <td>שם משתמש</td>
                <td>
                    <input type="text" name="uName" disabled ="disabled" value="<%= uName %>" />
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>שם פרטי</td>
                <td>
                    <input type="text" id="fName" name="fName" value="<%= fName %>" /> 
                </td>
                <td>
                    <input type="text" id="mFName" size="30" style="display: none; background-color: silver; font-weight: bold;" disabled="disabled" />
                </td>
            </tr>
            <tr>
    <td>שם משפחה</td>
    <td>
        <input type="text" id="lName" name="lName" value="<%= lName %>" /> 
    </td>
    <td>
        <input type="text" id="mLName" size="30" style="display: none; background-color: silver; font-weight: bold;" disabled="disabled" />
    </td>
</tr>
            <tr>
    <td>דוא"ל</td>
    <td>
        <input type="text" id="email" name="email" value="<%= email %>" /> 
    </td>
    <td>
        <input type="text" id="mEmail" size="30" style="display: none; background-color: silver; font-weight: bold;" disabled="disabled" />
    </td>
</tr>
            <tr>
    <td>מקום מגורים:</td>
               <td>
        <select name="city" id="city">
            <% if (city == "חיפה") {%>
                <option value=חיפה selected> חיפה</option>
            <% } else { %>
                <option value=חיפה> חיפה</option>
            <% } %>
            <% if (city == "תל-אביב") {%>
                <option value=תל-אביב selected> תל-אביב</option>
            <% } else { %>
                <option value=תל-אביב> תל-אביב</option>
            <% } %>
            <% if (city == "ירושליים") {%>
                <option value=ירושליים selected> ירושליים</option>
            <% } else { %>
                <option value=ירושליים> ירושליים</option>
            <% } %>
            <% if (city == "מודיעין") {%>
                <option value=מודיעין selected> מודיעין</option>
            <% } else { %>
                <option value=מודיעין> מודיעין</option>
            <% } %>
            <% if (city == "באר-שבע") {%>
                <option value=באר-שבע selected> באר-שבע</option>
            <% } else { %>
                <option value=באר-שבע> באר-שבע</option>
            <% } %>
            <% if (city == "מטולה") {%>
                <option value=מטולה selected> מטולה</option>
            <% } else { %>
                <option value=מטולה> מטולה</option>
            <% } %>
            <% if (city == "צפון") {%>
                <option value=צפון selected> צפון</option>
            <% } else { %>
                <option value=צפון> צפון</option>
            <% } %>
            <% if (city == "דרום") {%>
                <option value=דרום selected> דרום</option>
            <% } else { %>
                <option value=דרום> דרום</option>
            <% } %>
            <% if (city == "מרכז") {%>
                <option value=מרכז selected> מרכז</option>
            <% } else { %>
                <option value=מרכז> מרכז</option>
            <% } %>

        </select>
        </td>
    <td>
        <input type="text" name="mCity" id="mCity" style="display: none; background-color: black; color: white; font-weight: bold;" disabled="disabled" />
    </td>
</tr>
            <tr>
                <td>מגדר:</td>
                <td>
                    <% if (gender == "male") { %>
                        <input type="radio" name="gender" value="male"checked />זכר
                        <input type="radio" name="gender" value="female" />נקבה
                    <% } else { %>
                        <input type="radio" name="gender" value="male"checked />זכר
                        <input type="radio" name="gender" value="female" />נקבה
                    <% } %>
                </td>
                <td></td>
            </tr>
            <tr>
                <td>טלפון:</td>
                <td> <input type="text" name="phone" id="phone" size="7" value="<%= phone %>" />-
                    <select name="prefix" id="prefix">
                        <% if (prefix == "02")
                            {%>
                            <option value=02 selected> 02</option>
                        <% } else { %>
                            <option value=02> 02</option>
                        <% } %>
                        <% if (prefix == "03") {%>
                            <option value=03 selected> 03</option>
                        <% } else { %>
                            <option value=03> 03</option>
                        <% } %>
                        <% if (prefix == "04") {%>
                            <option value=04 selected> 04</option>
                        <% } else { %>
                            <option value=04> 04</option>
                        <% } %>
                        <% if (prefix == "08") {%>
                            <option value=08 selected> 08</option>
                        <% } else { %>
                            <option value=08> 08</option>
                        <% } %>
                        <% if (prefix == "09") {%>
                            <option value=09 selected> 09</option>
                        <% } else { %>
                            <option value=09> 09</option>
                        <% } %>
                        <% if (prefix == "050") {%>
                            <option value=050 selected> 050</option>
                        <% } else { %>
                            <option value=050> 050</option>
                        <% } %>
                        <% if (prefix == "052") {%>
                            <option value=052 selected> 052</option>
                        <% } else { %>
                            <option value=052> 052</option>
                        <% } %>
                        <% if (prefix == "053") {%>
                            <option value=053 selected> 053</option>
                        <% } else { %>
                            <option value=053> 053</option>
                        <% } %>
                        <% if (prefix == "054") {%>
                            <option value=054 selected> 054</option>
                        <% } else { %>
                            <option value=054> 054</option>
                        <% } %>
                        <% if (prefix == "055") {%>
                            <option value=055 selected> 055</option>
                        <% } else { %>
                            <option value=055> 055</option>
                        <% } %>
                        <% if (prefix == "057") {%>
                            <option value=057 selected> 057</option>
                        <% } else { %>
                            <option value=057> 057</option>
                        <% } %>
                        <% if (prefix == "058") {%>
                            <option value=058 selected> 058</option>
                        <% } else { %>
                            <option value=058> 058</option>
                        <% } %>
                        <% if (prefix == "077") {%>
                            <option value=077 selected> 077</option>
                        <% } else { %>
                            <option value=077> 077</option>
                        <% } %>

                    </select>
                    </td>
                <td>
                    <input type="text" name="mPhone" id="mPhone" style="display: none; background-color: black; color: white; font-weight: bold;" disabled="disabled" />
                </td>
            </tr>
            <tr>
                <td>תחביבים</td>
                <td>
                    <table style="width: 550px;">
                        <tr>
                            <td class="cdHob">
                                <% if (hob1 == "T") { %>
                                    <input type="checkbox" name="hobby" value="1" checked="checked" />
                                <% } else { %>
                                    <input type="checkbox" name="hobby" value="1" />
                                <% } %>
                            </td>
                            <td class="cdHob">
                                <% if (hob2 == "T") { %>
                                    <input type="checkbox" name="hobby" value="2" checked="checked" />
                                <% } else { %>
                                    <input type="checkbox" name="hobby" value="2" />
                                <% } %>
                            </td>
                            <td class="cdHob">
                                <% if (hob3 == "T") { %>
                                    <input type="checkbox" name="hobby" value="3" checked="checked" />
                                <% } else { %>
                                    <input type="checkbox" name="hobby" value="3" />
                                <% } %>
                            </td>
                            <td class="cdHob">
                                <% if (hob4 == "T") { %>
                                    <input type="checkbox" name="hobby" value="4" checked="checked" />
                                <% } else { %>
                                    <input type="checkbox" name="hobby" value="4" />
                                <% } %>
                            </td>
                            <td class="cdHob">
                                <% if (hob5 == "T") { %>
                                    <input type="checkbox" name="hobby" value="5" checked="checked" />
                                <% } else { %>
                                    <input type="checkbox" name="hobby" value="5" />
                                <% } %>
                            </td>
                        </tr>
                    </table>
                </td>
                <td></td>
            </tr>
            <tr>
                <td> סיסמה: </td>
                <td> <input type="password" name="pw" id="pw" size="10" value="<%=pw %>" maxlength="8" />
                    <span style="color: red; font-size: 2pt;"> *עד 10 תווים</span>
                </td>
                <td>
                    <input type="text" name="mPw" id="mPw" style="display: none; background-color: black; color: white; font-weight: bold;" disabled="disabled" />
                </td>
            </tr>
            <tr>
                <td> אימות סיסמה: </td>
                <td> <input type="password" name="pw1" id="pw1" size="10" value="<%=pw %>" maxlength="8" />
                    <span style="color: red; font-size: 2pt;"> *עד 10 תווים</span>
                </td>
                <td>
                    <input type="text" name="mPw1" id="mPw1" style="display: none; background-color: black; color: white; font-weight: bold;" disabled="disabled" />
                </td>
            </tr>
            <tr>
                <td> שנת לידה: </td>
                <td>
                    <select name="yearBorn">
                        <%=yearList %>
                    </select>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;">
                    <input type="submit" name="submit" value=" עדכן " />
                </td>
            </tr>

        </table>
    </form>
    <%=msg %>
</asp:Content>
