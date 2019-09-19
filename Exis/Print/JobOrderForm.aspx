<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JobOrderForm.aspx.cs" Inherits="Exis.Print.JobOrderForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <title>Job Order Print</title>
    <style type="text/css">
        .auto-style1 {
            height: 16px;
        }
        .auto-style3 {
            height: 15px;
        }
        .auto-style4 {
            width: 696px;
            height: 100px;
        }
        .auto-style5 {
            height: 134px;
        }
        .auto-style6 {
            height: 18px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" >
    <div>
        <table class="nav-justified">
            <tr>
                <td class="auto-style5" colspan="4">
                    <img class="auto-style4" src="../Images/header-white.PNG" /></td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" Text="JOB ORDER FORM" style="text-align: center"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="JOB TYPE :"></asp:Label>
                    &nbsp;<asp:Label ID="lblJobType" runat="server"></asp:Label>
                </td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="DATE | TIME SCHEDULE :"></asp:Label>
&nbsp;<asp:Label ID="lblDate" runat="server"></asp:Label>
                </td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="CLIENT DETAILS"></asp:Label>
                </td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="ADDRESS : "></asp:Label>
                    <asp:Label ID="lbladdress" runat="server"></asp:Label>
                </td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="ACCOUNT NUMBER | Name :"></asp:Label>
                    &nbsp;<asp:Label ID="lblaccountnumber" runat="server"></asp:Label>
                </td>
                <td class="auto-style1"></td>
                <td class="auto-style1">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="SERVICE PLAN :"></asp:Label>
&nbsp;<asp:Label ID="lblserviceplan" runat="server"></asp:Label>
                </td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Small" Text="ISSUES / CONCERNS"></asp:Label>
                </td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="4">
                    <asp:TextBox ID="txtissuesorconcerns" runat="server" Height="81px" TextMode="MultiLine" Width="800px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="4">
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Small" Text="INSTALLATION NOTES"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="4">
                    <asp:TextBox ID="txtinstallationnotes" runat="server" Height="81px" TextMode="MultiLine" Width="800px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="4">
                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Small" Text="SPEED TESTING"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="4">
                    <asp:Label ID="Label11" runat="server" Font-Bold="False" Text="DOWNLOAD : ____________________________________                                                   "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label12" runat="server" Font-Bold="False" Text="UPLOAD : ____________________________________"></asp:Label>
                </td>
            </tr>
            </table>
        <table class="nav-justified">
            <tr>
                <td class="auto-style1" colspan="2">
                    <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Size="Small" Text="ACCEPTANCE SLIP :"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">TECHNICIAN NAME: ________________________________</td>
                <td class="auto-style1">CLIENT NAME: __________________________</td>
            </tr>
            <tr>
                <td class="auto-style1">TIME ACCEPTED : _________________________________</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1"></td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style1">SIGNATURE: ______________________________________</td>
                <td class="auto-style1">SIGNATURE: ____________________________</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            </table>
            <table class="nav-justified">
                <tr>
                <td class="auto-style1" colspan="4">- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - </td>
            </tr>
            <tr>
                <td class="auto-style5" colspan="4">
                    <img class="auto-style4" src="../Images/header-white.PNG" /></td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="4">
                    
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label31" runat="server" Font-Bold="True" Font-Size="Medium" Text="JOB ORDER FORM" style="text-align: center"></asp:Label>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label15" runat="server" Font-Bold="True" Text="JOB TYPE :"></asp:Label>
                    &nbsp;<asp:Label ID="lbljobtype2" runat="server"></asp:Label>
                </td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="Label17" runat="server" Font-Bold="True" Text="DATE | TIME SCHEDULE : "></asp:Label>
&nbsp;<asp:Label ID="lbldate2" runat="server"></asp:Label>
                </td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label19" runat="server" Font-Bold="True" Text="CLIENT DETAILS"></asp:Label>
                </td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="Label24" runat="server" Font-Bold="True" Text="ADDRESS : "></asp:Label>
                    <asp:Label ID="lbladdress2" runat="server"></asp:Label>
                </td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label20" runat="server" Font-Bold="True" Text="ACCOUNT NUMBER | Name :"></asp:Label>
                    &nbsp;<asp:Label ID="lblaccountnumber2" runat="server"></asp:Label>
                </td>
                <td class="auto-style1"></td>
                <td class="auto-style1">
                    <asp:Label ID="Label22" runat="server" Font-Bold="True" Text="SERVICE PLAN :"></asp:Label>
&nbsp;<asp:Label ID="lblserviceplan2" runat="server"></asp:Label>
                </td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label26" runat="server" Font-Bold="True" Font-Size="Small" Text="ISSUES / CONCERNS"></asp:Label>
                </td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="4">
                    <asp:TextBox ID="txtissuesconcerns" runat="server" Height="81px" TextMode="MultiLine" Width="800px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="4">
                    <asp:Label ID="Label27" runat="server" Font-Bold="True" Font-Size="Small" Text="INSTALLATION NOTES"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="4">
                    <asp:TextBox ID="txtinstallationnotes2" runat="server" Height="81px" TextMode="MultiLine" Width="800px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="4">
                    <asp:Label ID="Label28" runat="server" Font-Bold="True" Font-Size="Small" Text="SPEED TESTING"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="4">
                    <asp:Label ID="Label29" runat="server" Font-Bold="False" Text="DOWNLOAD : ____________________________________                                                   "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label30" runat="server" Font-Bold="False" Text="UPLOAD : ____________________________________"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="4">&nbsp;</td>
            </tr>
            </table>
            <table class="nav-justified">
            <tr>
                <td class="auto-style1" colspan="2">
                    <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Small" Text="ACCEPTANCE SLIP :"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">TECHNICIAN NAME: ________________________________</td>
                <td class="auto-style1">CLIENT NAME: __________________________</td>
            </tr>
            <tr>
                <td class="auto-style1">TIME ACCEPTED : _________________________________</td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">SIGNATURE: ______________________________________</td>
                <td class="auto-style1">SIGNATURE: ____________________________</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            </table>
    </div>
    </form>
</body>
</html>
