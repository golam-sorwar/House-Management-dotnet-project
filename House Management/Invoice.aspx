<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Invoice.aspx.cs" Inherits="Invoice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Invoice</title>
    <style type="text/css">
        .Header {
            text-align: center;
            padding:30px;
            background-color:lightskyblue;
        }
        .Footer {
            text-align: center;
            padding:05px;
            background-color:aquamarine;
            margin-top:10%;
        }
        .bodystyle{
            width:100%;
            height:100%;
            background-color:honeydew;
            padding-top:30px;
        }
        .auto-style1 {
            height: 40px;
            text-align: center;
            font-size: 30pt;
            padding: 25px;
        }
        .auto-style2 {
            font-size: 26pt;
        }
        .auto-style4 {
            width: 100%;
            
        }
        .auto-style6 {
            text-align: left;
            width: 250px;
        }
        .auto-style7 {
            height: 25px;
            text-align: left;
            width: 250px;
        }
        .auto-style8 {
            margin-left: 0px;
            font-size: 13pt;
        }
        .auto-style10 {
            width: 450px;
        }
        .auto-style11 {
            height: 25px;
            width: 250px;
        }
        .auto-style12 {
            width: 250px;
            font-size: 14pt;
        }
        .auto-style13 {
            height: 25px;
            width: 385px;
        }
        .auto-style14 {
            width: 385px;
            font-size: 13pt;
            text-align: left;
            
        }
        .auto-style15 {
            font-size: 14pt;
        }
        .auto-style16 {
            font-size: 13pt;
        }
        .auto-style17 {
            height: 25px;
            width: 450px;
        }
        .auto-style18 {
            height: 690px;
        }
        .auto-style21 {
            text-align: center;
            width: 84px;
            height: 50px;
            font-size: 15pt;
        }
        .auto-style22 {
            text-align: center;
            width: 324px;
            height: 50px;
            font-size: 16pt;
        }
        .auto-style46 {
            height: 50px;
            width: 135px;
            text-align: center;
            font-size: 15pt;
        }
        .auto-style49 {
            height: 50px;
            width: 155px;
            text-align: center;
            font-size: 15pt;
        }
        .auto-style52 {
            width: 84px;
            height: 30px;
            text-align: center;
        }
        .auto-style56 {
            width: 135px;
            height: 30px;
        }
        .auto-style58 {
            width: 84px;
            height: 30px;
            text-align: center;
            font-size: 14pt;
        }
        .auto-style59 {
            height: 50px;
            width: 168px;
            text-align: center;
            font-size: 15pt;
        }
        .auto-style60 {
            width: 168px;
            height: 30px;
        }
        .auto-style65 {
            height: 50px;
            width: 150px;
            text-align: center;
            font-size: 15pt;
        }
        .auto-style66 {
            width: 150px;
            height: 30px;
            text-align: right;
        }
        .auto-style68 {
            height: 50px;
            width: 137px;
            text-align: center;
            font-size: 15pt;
        }
        .auto-style69 {
            width: 137px;
            height: 30px;
        }
        .newStyle1 {
            font-family: "Adobe Fan Heiti Std";
            font-size: 14px;
            background-color:honeydew;
        }
        .auto-style73 {
            width: 100%;
            height: 607px;
        }
        .auto-style74 {
            width: 324px;
            height: 35px;
            font-size: 15pt;
            text-align: center;
        }
        .newStyle2 {
            font-family: "Arial Rounded MT Bold";
        }
        .newStyle3 {
            font-family: "Arial Rounded MT Bold";
        }
        .auto-style75 {
            width: 84px;
            height: 35px;
            text-align: center;
        }
        .auto-style77 {
            width: 168px;
            height: 35px;
        }
        .auto-style78 {
            width: 135px;
            height: 35px;
        }
        .auto-style79 {
            width: 137px;
            height: 35px;
        }
        .auto-style80 {
            width: 150px;
            height: 35px;
            text-align: center;
        }
        .newStyle4 {
            font-family: Georgia;
            font-size: 15px;
        }
        .auto-style81 {
            font-family: Georgia;
            font-size: 13.5pt;
        }
        .auto-style82 {
            width: 100%;
            height: 87%;
            background-color: honeydew;
            padding-top: 30px;
        }
        .auto-style99 {
            width: 154px;
            height: 30px;
        }
        .auto-style103 {
            width: 154px;
            height: 30px;
            text-align: left;
        }
        .auto-style100 {
            width: 154px;
            height: 35px;
        }
        .auto-style102 {
            width: 168px;
            height: 30px;
            text-align: right;
        }
        .auto-style101 {
            width: 168px;
            height: 30px;
            font-size: 14pt;
        }
        .auto-style97 {
            font-family: Georgia;
            font-size: 15px;
            width: 312px;
        }
        .auto-style104 {
            font-family: Georgia;
            font-size: 13.5pt;
            height: 30px;
        }
        .newStyle5 {
            font-family: "Times New Roman", Times, serif;
        }
        .auto-style105 {
            font-family: "Times New Roman", Times, serif;
            font-size: 16pt;
        }
        </style>
</head>
<body style="height: 1210px;">
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
        <div class="auto-style82">
        <div class="auto-style1">
            <strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="INVOICE PAGE" ForeColor="#333399"></asp:Label>
            </strong>
        </div>
        <br />
        <br />
        <div class="auto-style4">
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label2" runat="server" Text="Name :" CssClass="auto-style15"></asp:Label>
                    </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="namebox" runat="server" Height="25px" Width="245px" CssClass="auto-style16" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style11">
                        <asp:Label ID="Label6" runat="server" Text="Complex :" CssClass="auto-style15"></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:TextBox ID="complexbox" runat="server" Height="26px" Width="245px" CssClass="auto-style16" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label3" runat="server" Text="E-mail :" CssClass="auto-style15"></asp:Label>
                    </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="emailbox" runat="server" CssClass="auto-style8" Height="25px" Width="245px" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style11">
                        <asp:Label ID="Label7" runat="server" Text="Apartment :" CssClass="auto-style15"></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:TextBox ID="aptDropDownList" runat="server" Height="25px" Width="245px" CssClass="auto-style16" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label4" runat="server" Text="Phone Number :" CssClass="auto-style15"></asp:Label>
                    </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="phnnumberbox" runat="server" Height="25px" Width="245px" CssClass="auto-style16" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style11">
                        <asp:Label ID="Label9" runat="server" Text="Code :" CssClass="auto-style15"></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:TextBox ID="code" runat="server" Height="26px" Width="245px" placeholder="Enter The Code " CssClass="auto-style15" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label5" runat="server" Text="Address :" CssClass="auto-style15"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="address" runat="server" Height="25px" Width="245px" CssClass="auto-style16" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style12">
                        &nbsp;</td>
                    <td class="auto-style14">
                    &nbsp;&nbsp; 
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="45px" ImageUrl="http://localhost:51125/Image/read.png" OnClick="details_Click" Width="53px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Height="42px" OnClick="logoutClick" Text="Log out" Width="85px" CssClass="auto-style105" />
                    </td>
                </tr>
            </table>
        </div>
        <br />
        <br />
        <br />
        <div class="auto-style18">
            <table class="auto-style73" border="1">
                <tr>
                    <td class="auto-style21"><strong>Serial No</strong></td>
                    <td class="auto-style22"><strong>Particulars</strong></td>
                    <td class="auto-style49"><strong>Reference / Bill of</strong></td>
                    <td class="auto-style59"><strong>Complex Total (Tk)</strong></td>
                    <td class="auto-style46"><strong>Total No of Apt</strong></td>
                    <td class="auto-style68"><strong>Allocation Ratio</strong></td>
                    <td class="auto-style65"><strong>Current Due (Tk)</strong></td>
                </tr>
                <tr class="newStyle1">
                    <td class="auto-style58"><strong>1</strong></td>
                    <td class="auto-style81">
                        <asp:Label ID="Labelo" runat="server" Font-Bold="True" Text="Support Facilities Charges"></asp:Label>
                    </td>
                    <td class="auto-style99"></td>
                    <td class="auto-style60"></td>
                    <td class="auto-style56"></td>
                    <td class="auto-style69"></td>
                    <td class="auto-style66">
                        <asp:TextBox ID="cuo" runat="server" Height="22px" Width="142px" CssClass="auto-style15" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr class="newStyle1">
                    <td class="auto-style52"></td>
                    <td class="auto-style81">
                        <asp:Label ID="Labelt" runat="server" Text="Service Charges"></asp:Label>
                    </td>
                    <td class="auto-style103">
                        <asp:TextBox ID="rbo" type="date" runat="server" Height="100%" Width="100%" CssClass="auto-style15" Font-Bold="True" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style102">
                        <asp:TextBox ID="cto" runat="server" CssClass="auto-style15" Height="22px" Width="161px" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style56">
                        <asp:TextBox ID="totalapto" runat="server" Height="22px" CssClass="auto-style15" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style69">
                        <asp:TextBox ID="ato" runat="server" Height="22px" CssClass="auto-style15" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style66">
                        <asp:TextBox ID="cut" runat="server" Height="22px" Width="142px" CssClass="auto-style15" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr class="newStyle1">
                    <td class="auto-style52"></td>
                    <td class="auto-style81">
                        <asp:Label ID="Labelth" runat="server" Text="Co-Ordination Charges - Lift"></asp:Label>
                    </td>
                    <td class="auto-style99">
                        <asp:TextBox ID="rbt" type="date" runat="server" Height="100%" Width="100%" Font-Bold="True" CssClass="auto-style15" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style102">
                        <asp:TextBox ID="ctt" runat="server" CssClass="auto-style15" Height="22px" Width="161px" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style56">
                        <asp:TextBox ID="totalaptt" runat="server" Height="22px" CssClass="auto-style15" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style69">
                        <asp:TextBox ID="att" runat="server" Height="22px" CssClass="auto-style15" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style66">
                        <asp:TextBox ID="cuth" runat="server" Height="22px" Width="142px" CssClass="auto-style15" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr class="newStyle1">
                    <td class="auto-style58"><strong>2</strong></td>
                    <td class="auto-style81">
                        <asp:Label ID="Labelf" runat="server" Font-Bold="True" Text="Utility Charges"></asp:Label>
                    </td>
                    <td class="auto-style99"></td>
                    <td class="auto-style101">&nbsp;</td>
                    <td class="auto-style56"></td>
                    <td class="auto-style69"></td>
                    <td class="auto-style66">
                        <asp:TextBox ID="cuf" runat="server" Height="22px" Width="142px" CssClass="auto-style15" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr class="newStyle1">
                    <td class="auto-style52"></td>
                    <td class="auto-style81">
                        <asp:Label ID="Labelfi" runat="server" Text="Utility Charges - Electricity"></asp:Label>
                    </td>
                    <td class="auto-style99">
                        <asp:TextBox ID="rbth" type="date" runat="server" Height="100%" Width="100%" CssClass="auto-style15" Font-Bold="True" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style102">
                        <asp:TextBox ID="ctth" runat="server" CssClass="auto-style15" Height="22px" Width="161px" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style56">
                        <asp:TextBox ID="totalaptth" runat="server" Height="22px" CssClass="auto-style15" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style69">
                        <asp:TextBox ID="atth" runat="server" Height="22px" CssClass="auto-style15" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style66">
                        <asp:TextBox ID="cufi" runat="server" Height="22px" Width="142px" CssClass="auto-style15" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr class="newStyle1">
                    <td class="auto-style52"></td>
                    <td class="auto-style104">
                        <asp:Label ID="Labels" runat="server" Text="Utility Charges - Gas"></asp:Label>
                    </td>
                    <td class="auto-style99">
                        <asp:TextBox ID="rbf" type="date" runat="server" Height="100%" Width="100%" CssClass="auto-style15" Font-Bold="True" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style102">
                        <asp:TextBox ID="ctf" runat="server" CssClass="auto-style15" Height="22px" Width="161px" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style56">
                        <asp:TextBox ID="totalaptf" runat="server" Height="22px" CssClass="auto-style15" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style69">
                        <asp:TextBox ID="atf" runat="server" Height="22px" CssClass="auto-style15" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style66">
                        <asp:TextBox ID="cus" runat="server" Height="22px" Width="142px" CssClass="auto-style15" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr class="newStyle1">
                    <td class="auto-style52"></td>
                    <td class="auto-style81">
                        <asp:Label ID="Labelse" runat="server" Text="Utility Charges - WASA"></asp:Label>
                    </td>
                    <td class="auto-style99">
                        <asp:TextBox ID="rbfi" type="date" runat="server" Height="100%" Width="100%" CssClass="auto-style15" Font-Bold="True" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style102">
                        <asp:TextBox ID="ctfi" runat="server" CssClass="auto-style15" Height="22px" Width="161px" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style56">
                        <asp:TextBox ID="totalaptfi" runat="server" Height="22px" CssClass="auto-style15" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style69">
                        <asp:TextBox ID="atfi" runat="server" Height="22px" CssClass="auto-style15" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style66">
                        <asp:TextBox ID="cuse" runat="server" Height="22px" Width="142px" CssClass="auto-style15" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr class="newStyle1">
                    <td class="auto-style52"></td>
                    <td class="auto-style81">
                        <asp:Label ID="Labele" runat="server" Text="Fuel For Generator"></asp:Label>
                    </td>
                    <td class="auto-style99">
                        <asp:TextBox ID="rbs" type="date" runat="server" Height="100%" Width="100%" Font-Bold="True" CssClass="auto-style15" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style102">
                        <asp:TextBox ID="cts" runat="server" CssClass="auto-style15" Height="22px" Width="161px" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style56">
                        <asp:TextBox ID="totalapts" runat="server" Height="22px" CssClass="auto-style15" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style69">
                        <asp:TextBox ID="ats" runat="server" Height="22px" CssClass="auto-style15" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style66">
                        <asp:TextBox ID="cue" runat="server" Height="22px" Width="142px" CssClass="auto-style15" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr class="newStyle1">
                    <td class="auto-style58"><strong>3</strong></td>
                    <td class="auto-style81">
                        <asp:Label ID="Labeln" runat="server" Font-Bold="True" Text="Maintenance Charges"></asp:Label>
                    </td>
                    <td class="auto-style99"></td>
                    <td class="auto-style102"></td>
                    <td class="auto-style56"></td>
                    <td class="auto-style69"></td>
                    <td class="auto-style66">
                        <asp:TextBox ID="cun" runat="server" Height="22px" Width="142px" CssClass="auto-style15" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr class="newStyle1">
                    <td class="auto-style52"></td>
                    <td class="auto-style81">
                        <asp:Label ID="Labelte" runat="server" Text="Lift Maintenance "></asp:Label>
                    </td>
                    <td class="auto-style99">
                        <asp:TextBox ID="rbse" type="date" runat="server" Height="100%" Width="100%" CssClass="auto-style15" Font-Bold="True" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style102">
                        <asp:TextBox ID="ctse" runat="server" CssClass="auto-style15" Height="22px" Width="161px" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style56">
                        <asp:TextBox ID="totalaptse" runat="server" Height="22px" CssClass="auto-style15" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style69">
                        <asp:TextBox ID="atse" runat="server" Height="22px" CssClass="auto-style15" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style66">
                        <asp:TextBox ID="cute" runat="server" Height="22px" Width="142px" CssClass="auto-style15" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr class="newStyle1">
                    <td class="auto-style52"></td>
                    <td class="auto-style81">
                        <asp:Label ID="Labelel" runat="server" Text="Generator Maintenance "></asp:Label>
                    </td>
                    <td class="auto-style99">
                        <asp:TextBox ID="rbe" type="date" runat="server" Height="100%" Width="100%" CssClass="auto-style15" Font-Bold="True" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style102">
                        <asp:TextBox ID="cte" runat="server" CssClass="auto-style15" Height="22px" Width="161px" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style56">
                        <asp:TextBox ID="totalapte" runat="server" Height="22px" CssClass="auto-style15" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style69">
                        <asp:TextBox ID="ate" runat="server" Height="22px" CssClass="auto-style15" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style66">
                        <asp:TextBox ID="cuel" runat="server" Height="22px" Width="142px" CssClass="auto-style15" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr class="newStyle1">
                    <td class="auto-style58"><strong>4</strong></td>
                    <td class="auto-style81">
                        <asp:Label ID="Labeltw" runat="server" Font-Bold="True" Text="Other Charges (Miscellaneous)"></asp:Label>
                    </td>
                    <td class="auto-style99"></td>
                    <td class="auto-style60"></td>
                    <td class="auto-style56"></td>
                    <td class="auto-style69"></td>
                    <td class="auto-style66"></td>
                </tr>
                <tr class="newStyle1">
                    <td class="auto-style58"><strong>5</strong></td>
                    <td class="auto-style81">
                        <asp:Label ID="Labelthir" runat="server" Font-Bold="True" Text="Adv Receipts Agst Fo Charges"></asp:Label>
                    </td>
                    <td class="auto-style99"></td>
                    <td class="auto-style60"></td>
                    <td class="auto-style56"></td>
                    <td class="auto-style69"></td>
                    <td class="auto-style66"></td>
                </tr>
                <tr>
                    <td class="auto-style52"></td>
                    <td class="auto-style97"></td>
                    <td class="auto-style99"></td>
                    <td class="auto-style60"></td>
                    <td class="auto-style56"></td>
                    <td class="auto-style69"></td>
                    <td class="auto-style66"></td>
                </tr>
                <tr>
                    <td class="auto-style52"></td>
                    <td class="auto-style97"></td>
                    <td class="auto-style99"></td>
                    <td class="auto-style60"></td>
                    <td class="auto-style56"></td>
                    <td class="auto-style69"></td>
                    <td class="auto-style66"></td>
                </tr>
                <tr>
                    <td class="auto-style75"></td>
                    <td class="auto-style74">
                        <asp:Label ID="total" runat="server" Font-Bold="True" Font-Size="25px" Text="Grand Total"></asp:Label>
                    </td>
                    <td class="auto-style100"></td>
                    <td class="auto-style77"></td>
                    <td class="auto-style78"></td>
                    <td class="auto-style79"></td>
                    <td class="auto-style80">
                        <asp:TextBox ID="finalamount" runat="server" Height="100%" Width="100%" CssClass="auto-style15" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
            </table>    
        </div>
          </div>  
    </form>
        <div class="Footer">
            <strong>
            <asp:Label ID="Label8" runat="server" CssClass="auto-style3" Text="Copyright © 2018 HMS"></asp:Label>
            </strong>
        </div>
</body>
</html>
