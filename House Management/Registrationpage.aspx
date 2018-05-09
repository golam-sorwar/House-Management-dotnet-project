<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registrationpage.aspx.cs" Inherits="Registrationpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
    <style type="text/css">
        .auto-style1 {
            height: 56px;
            text-align: center;
            font-size: 30pt;
	        padding: 20px;
        }
        .auto-style2 {
            width: 100%;
            height: 332px;
        }
        .auto-style4 {
            height: 30px;
            width: 267px;
            text-align: right;
        }
        .auto-style10 {
            width: 115px;
        }
        .auto-style12 {
            
        }
        .auto-style13 {
            width: 100%;
            height: 100px;
        }
        .auto-style21 {
            height: 30px;
            width: 400px;
            text-align: left;
        }
        .auto-style22 {
            font-size: large;
        }
        .newStyle1 {
            font-family: "Adobe Heiti Std R";
        }
        .auto-style23 {
            font-family: "Adobe Heiti Std R";
            text-align: right;
            width: 267px;
        }
        .newStyle2 {
            font-family: "Adobe Heiti Std R";
        }
        .newStyle3 {
            background-color: Honeydew;
        }
        .auto-style24 {
            font-family: "Adobe Heiti Std R";
            text-align: right;
            width: 267px;
            font-size: 14pt;
        }
        .auto-style25 {
            font-size: 14pt;
        }
        .auto-style26 {
            font-family: "Adobe Heiti Std R";
            font-size: 14pt;
        }
        .auto-style27 {
            font-family: "Adobe Heiti Std R";
            text-align: right;
            width: 267px;
            height: 30px;
        }
        .auto-style30 {
            height: 30px;
            width: 400px;
        }
        .auto-style31 {
            height: 30px;
            width: 267px;
        }
        .auto-style32 {
            margin-left: 0px;
        }
        .auto-style33 {
            width: 125px;
        }
    </style>
</head>
<body style="height: 563px; margin-bottom: 573px; margin-right: 0px;" class="newStyle3">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong>Registration Page</strong>
        </div>
        <div></div>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style27">
                        <asp:Label ID="Label7" runat="server" Text="Name :" CssClass="auto-style25"></asp:Label>
                    </td>
                    <td class="auto-style30">
                        <asp:TextBox ID="namebox" runat="server" Height="25px" Width="245px"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style27">
                        <asp:Label ID="Label2" runat="server" Text="E-mail :" CssClass="auto-style25"></asp:Label>
                    </td>
                    <td class="auto-style30">
                        <asp:TextBox ID="emailbox" runat="server" Height="25px" Width="245px" TextMode="Email"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style23">
                        <asp:Label ID="Label3" runat="server" Text="Username :" CssClass="auto-style25"></asp:Label>
                    </td>
                    <td class="auto-style30">
                        <asp:TextBox ID="usernamebox" runat="server" Height="25px" Width="245px" CssClass="auto-style32"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style23">
                        <asp:Label ID="Label5" runat="server" Text="Password :" CssClass="auto-style25"></asp:Label>
                    </td>
                    <td class="auto-style30">
                        <asp:TextBox ID="passwordbox" runat="server" Height="25px" Width="245px" TextMode="Password"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style23">
                        <asp:Label ID="Label6" runat="server" Text="Confirm Password :" CssClass="auto-style25"></asp:Label>
                    </td>
                    <td class="auto-style30">
                        <asp:TextBox ID="confirmpasswordbox" runat="server" Height="25px" Width="245px" TextMode="Password"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24">Gender :</td>
                    <td class="auto-style30">
                        <table class="auto-style12">
                            <tr>
                                <td class="auto-style33">
                                    <asp:RadioButton ID="Male" runat="server" Font-Bold="True" Text="Male" OnCheckedChanged="male_CheckedChanged" />
                                </td>
                                <td class="auto-style10">
                                    <asp:RadioButton ID="Female" runat="server" Font-Bold="True" Text="Female" OnCheckedChanged="female_CheckedChanged" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <table class="auto-style13">
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label8" runat="server" CssClass="auto-style26" Text="Apartment :"></asp:Label>
                    </td>
                    <td class="auto-style30">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="19px" Width="70px">
                            <asp:ListItem>A-1</asp:ListItem>
                            <asp:ListItem>B-1</asp:ListItem>
                            <asp:ListItem>A-2</asp:ListItem>
                            <asp:ListItem>B-2</asp:ListItem>
                            <asp:ListItem>A-3</asp:ListItem>
                            <asp:ListItem>B-3</asp:ListItem>
                            <asp:ListItem>A-4</asp:ListItem>
                            <asp:ListItem>B-4</asp:ListItem>
                            <asp:ListItem>A-5</asp:ListItem>
                            <asp:ListItem>B-5</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style31"></td>
                    <td class="auto-style21">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Register" runat="server" CssClass="auto-style22" Font-Bold="True" Height="35px" OnClick="register_Click" Text="Register" Width="100px"  />
                    </td>
                </tr>
            </table>
    </form>
</body>
</html>
