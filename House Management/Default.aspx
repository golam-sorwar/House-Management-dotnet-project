<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Loginpage"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <style type="text/css">
        .Header {
            text-align: center;
            padding:30px;
            background-color:lightskyblue;
        }
        .Footer {
            text-align: center;
            padding:10px;
            background-color:aquamarine;
        }
        .bodystyle{
            width:100%;
            height:300px;
            background-color:honeydew;
            padding-top:30px;
        }
        .auto-style1 {
            text-align: center;
            font-size: 30pt;
            height: 56px;
            padding: 25px;
        }
        .auto-style2 {
            width: 100%;
            height: 183px;
        }
        .auto-style4 {
            height: 30px;
        }
        .newStyle1 {
            font-family: "Times New Roman", Times, serif;
        }
        .auto-style5 {
            font-family: "Times New Roman", Times, serif;
            font-size: 15pt;
        }
        .auto-style6 {
            height: 10px;
            width: 380px;
        }
        .auto-style7 {
            height: 30px;
            width: 380px;
        }
        .auto-style9 {
            height: 10px;
            width: 380px;
            text-align: left;
        }
        .auto-style10 {
            margin-bottom: 346px;
        }
        .newStyle2 {
            background-color: Honeydew;
        }
        .auto-style13 {
            height: 10px;
        }
        .newStyle3 {
            font-family: "Adobe Heiti Std R";
        }
        .auto-style14 {
            font-family: "Adobe Heiti Std R";
            text-align: right;
            width: 650px;
        }
        .newStyle4 {
            font-family: "Lucida Sans", "Lucida Sans Regular", "Lucida Grande", "Lucida Sans Unicode", Geneva, Verdana, sans-serif;
            font-size: 14px;
        }
        .newStyle5 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            font-size: 15px;
        }
        .newStyle6 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            font-size: 14px;
        }
        .newStyle7 {
            font-family: "Adobe Heiti Std R";
            font-size: 16px;
            color: #000000;
            position:relative;
        }
        .newStyle8 {
            font-family: "Adobe Heiti Std R";
            font-size: 16px;
            color: #000000;
        }
        .newStyle9 {
            font-family: "Adobe Heiti Std R";
            font-size: 16px;
            color: #000000;
        }
        .newStyle10 {
            font-size: 16px;
            color: #000000;
            font-family: "Adobe Heiti Std R";
        }
        .auto-style16 {
            font-size: 14.5pt;
        }
        .auto-style17 {
            font-size: 19pt;
        }
        .newStyle11 {
            font-family: "Times New Roman", Times, serif;
            font-size: 16px;
        }
        .auto-style18 {
            font-family: "Times New Roman", Times, serif;
            font-size: 19pt;
            text-align: right;
            width: 650px;
        }
    </style>
</head>
<body class="newStyle2" style="height: 621px">
    <form id="form1" runat="server" class="auto-style10">
        <div class="Header">
                &nbsp;<br />
&nbsp;&nbsp;&nbsp;<asp:Image ID="Image1" runat="server" Height="60px"  src="Image/Second.jpg"  Width="70px" /> 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="newStyle5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="newStyle6">&nbsp;&nbsp; </span>
                <asp:Button ID="Home" runat="server" Height="31px" Text="Home" Width="100px" OnClick="Home_Click" CssClass="newStyle7" />
                <span class="newStyle6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                <asp:Button ID="Search" runat="server" Height="31px" Text="Search" Width="100px" OnClick="Search_Click" CssClass="newStyle8" />
                <span class="newStyle6">&nbsp;&nbsp;&nbsp;
                </span>
                <asp:Button ID="Notice" runat="server" Height="31px" Text="Notice" Width="100px" OnClick="Notice_Click" CssClass="newStyle9" />

                <span class="newStyle6">&nbsp;&nbsp;&nbsp;
                </span>
            </div>
        <div class="bodystyle">
        <div class="auto-style1">
            <strong>Login Page<br />
            </strong>
        </div> 

        <table class="auto-style2">
            <tr>
                <td class="auto-style18"><strong>
                    <asp:Label ID="Label1" runat="server" Text="Username :" CssClass="auto-style17" Font-Bold="False"></asp:Label>
                    </strong></td>
                <td class="auto-style9">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="usernamebox" runat="server" Height="30px" Width="250px" placeholder="Enter The Username " CssClass="auto-style16" ></asp:TextBox>
                    <br />
                </td>
                <td class="auto-style13"></td>
            </tr>
            <tr>
                <td class="auto-style18"><strong>
                    <asp:Label ID="Label2" runat="server" Text="Password :" CssClass="auto-style17" Font-Bold="False"></asp:Label>
                    </strong></td>
                <td class="auto-style6">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="passwordbox" runat="server" Height="30px" TextMode="Password" Width="250px" placeholder="Enter The Password " CssClass="auto-style16" ></asp:TextBox>
                    <br />
                </td>
                <td class="auto-style13"></td>
            </tr>
            <tr>
                <td class="auto-style14"></td>
                <td class="auto-style7">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="login" runat="server" CssClass="auto-style5" Height="38px" OnClick="login_click" style="font-weight: 700" Text="Log In" Width="80px" />
                </td>
                <td class="auto-style4"><em>
                    <asp:LinkButton ID="registrationlink" runat="server" ForeColor="#00CC00" OnClick="registration_click">Registration</asp:LinkButton>
                    </em></td>
            </tr>
        </table>
        </div>
    </form>
        <div class="Footer">
            <strong>
            <asp:Label ID="Label4" runat="server" CssClass="auto-style3" Text="Copyright © 2018 HMS"></asp:Label>
            </strong>
        </div>
</body>
</html>
    