<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search_Info.aspx.cs" Inherits="Search_Info" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Search</title>
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
            height:600px;
            background-color:honeydew;
        }
        .marquee{
            width: 900px;
            font-size:20px;
            color:red;
            text-align:center;
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
            width: 100%;
            height: 500px;
            background-color: honeydew;
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style5 {
            height: 40px;
        }
        .auto-style7 {
            height: 40px;
            width: 230px;
            text-align: left;
        }
        .auto-style8 {
            height: 40px;
            width: 338px;
            text-align: left;
        }
        .auto-style9 {
            height: 40px;
            width: 180px;
        }
        .auto-style10 {
            height: 40px;
            width: 442px;
        }
        .auto-style11 {
            font-size: 16.5pt;
        }
        .newStyle11 {
            font-family: "Times New Roman";
        }
        .auto-style12 {
            font-size: 14pt;
        }
        .auto-style13 {
            font-family: "Times New Roman";
            width: 338px;
            text-align: left;
        }
        .auto-style14 {
            height: 50px;
            width: 442px;
        }
        .auto-style15 {
            height: 50px;
            width: 230px;
            text-align: left;
        }
        .auto-style16 {
            height: 50px;
            width: 338px;
            text-align: left;
        }
        .auto-style17 {
            height: 50px;
            width: 180px;
        }
        .auto-style18 {
            height: 50px;
        }
        .auto-style20 {
            width: 579px;
            height: 28px;
            margin-left: 445px;
        }
        .auto-style21 {
            font-size: 15pt;
        }
    </style>
</head>
<body style="height: 703px">
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
                <asp:Button ID="Notice" runat="server" Height="31px" Text="Notice" Width="100px" OnClick="Notice_Click" CssClass="newStyle9" />

                <span class="newStyle6">&nbsp;&nbsp;&nbsp;
                </span>
        </div>
        
        <div class="bodystyle">
            <br />
            <div class="marquee">
                <marquee class="auto-style20" > Need Any Information Enter The Name  </marquee>
            </div>
            <br />
            <br />
            <br />
        <div class="auto-style1">
            <table class="auto-style2" >
                <tr>
                    <td class="auto-style10"></td>
                    <td class="auto-style7">
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style11" Text="Name :"></asp:Label>
                        </td>
                    <td class="auto-style13">
                        <asp:TextBox ID="namebox" runat="server" Height="30px" Width="250px" CssClass="auto-style21" placeholder="Enter The Name " TextMode="Search" ></asp:TextBox>
                    </td>
                    <td class="auto-style9"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style10"></td>
                    <td class="auto-style7">
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style11" Text="E-mail :"></asp:Label>
                        </td>
                    <td class="auto-style13">
                        <asp:TextBox ID="emailbox" runat="server" Height="30px" Width="250px" CssClass="auto-style12" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style9"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style10"></td>
                    <td class="auto-style7">
                        <asp:Label ID="Label9" runat="server" CssClass="auto-style11" Text="Phone Number :"></asp:Label>
                        </td>
                    <td class="auto-style13">
                        <asp:TextBox ID="phnnumberbox" runat="server" Height="30px" Width="250px" CssClass="auto-style12" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style9"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style10"></td>
                    <td class="auto-style7">
                        <asp:Label ID="Label7" runat="server" CssClass="auto-style11" Text="Gender :"></asp:Label>
                        </td>
                    <td class="auto-style13">
                        <asp:TextBox ID="genderbox" runat="server" Height="30px" Width="250px" CssClass="auto-style12" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style9"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style10"></td>
                    <td class="auto-style7">
                        <asp:Label ID="Label8" runat="server" CssClass="auto-style11" Text="Apartment :"></asp:Label>
                        </td>
                    <td class="auto-style13">
                        <asp:TextBox ID="aptbox" runat="server" Height="30px" Width="250px" CssClass="auto-style12" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style9"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style10"></td>
                    <td class="auto-style7">
                        <asp:Label ID="Label10" runat="server" CssClass="auto-style11" Text="Address :"></asp:Label>
                        </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="addressbox" runat="server" Height="30px" Width="250px" CssClass="auto-style12" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style9"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style14"></td>
                    <td class="auto-style15"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style17"></td>
                    <td class="auto-style18"></td>
                </tr>
                <tr>
                    <td class="auto-style10"></td>
                    <td class="auto-style7"></td>
                    <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="70px" ImageUrl="http://localhost:51125/Image/search.png" OnClick="SearchInfo_Click" Width="149px" />
                    </td>
                    <td class="auto-style9"></td>
                    <td class="auto-style5"></td>
                </tr>
            </table>
        </div>
            </div>
    </form>
        <div class="Footer">
            <strong>
            <asp:Label ID="Label4" runat="server" CssClass="auto-style3" Text="Copyright © 2018 HMS"></asp:Label>
            </strong>
        </div>
</body>
</html>
