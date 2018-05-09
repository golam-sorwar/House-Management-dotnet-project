<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Notice.aspx.cs" Inherits="Notice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Notice</title>
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
            height:500px;
            background-color:honeydew;
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
        .auto-style1 {
            width: 60%;
            height: 40px;
            margin-left:20%;
            margin-right:20%;
        }
        .auto-style2 {
            width: 60%;
            height: 40px;
            margin-left:20%;
            margin-right:20%;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            text-align: center;
            font-size: 20pt;
        }
        .auto-style5 {
            font-size: 23pt;
        }
        .auto-style7 {
            height: 31px;
        }
        .auto-style8 {
            font-size: 17pt;
            height: 40px;
            margin-left: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
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
                <asp:Button ID="Notices" runat="server" Height="31px" Text="Notice" Width="100px" OnClick="Notices_Click" CssClass="newStyle9" />

                <span class="newStyle6">&nbsp;&nbsp;&nbsp;
                </span>
            </div>
        <div class="bodystyle">
            <br />
            <br />
            <table class="auto-style2">
                <tr>
                    <td class="auto-style4" style="border-color: #999966; border-style: solid;">
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style5" Font-Size="23pt" Text="Title"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <table class="auto-style1">
                <tr>
                    <td style="border: thin solid #6699FF" class="auto-style7">
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style8" Text="Emergency Meeting Held on &quot;6 April 2018&quot; ."></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border: thin solid #6699FF" class="auto-style7">
                        <asp:Label ID="Label7" runat="server" CssClass="auto-style8"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border: thin solid #6699FF" class="auto-style7">
                        <asp:Label ID="Label8" runat="server" CssClass="auto-style8"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border: thin solid #6699FF" class="auto-style7">
                        <asp:Label ID="Label9" runat="server" CssClass="auto-style8"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border: thin solid #6699FF" class="auto-style7">
                        <asp:Label ID="Label10" runat="server" CssClass="auto-style8"></asp:Label>
                    </td>
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
