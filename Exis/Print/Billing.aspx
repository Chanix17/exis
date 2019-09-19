<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Billing.aspx.cs" Inherits="Exis.Print.Billing" %>


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
            width: 788px;
            height: 119px;
        }
        .auto-style5 {
            height: 134px;
        }
        .auto-style6 {
            height: 18px;
        }
        .auto-style7 {
            height: 22px;
        }
        .auto-style8 {
        }
        .auto-style9 {
            height: 18px;
            width: 430px;
        }
        .auto-style14 {
            height: 16px;
            width: 24px;
        }
        .auto-style16 {
            width: 113px;
        }
        .auto-style17 {
            height: 18px;
            width: 113px;
        }
        .auto-style19 {
            width: 113px;
            height: 22px;
        }
        .auto-style20 {
            width: 113px;
            height: 16px;
        }
        .auto-style24 {
            height: 25px;
        }
        .auto-style25 {
            height: 25px;
            width: 24px;
        }
        .auto-style27 {
            height: 20px;
            width: 24px;
        }
        .auto-style28 {
            height: 20px;
        }
        .auto-style30 {
            height: 24px;
            width: 24px;
        }
        .auto-style31 {
            height: 24px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="nav-justified">
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style5" colspan="4">
                    <img class="auto-style4" src="../Images/header-white.PNG" /></td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td colspan="3">
                    <center><asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" Text="STATEMENT OF ACCOUNT"></asp:Label></center>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="Label67" runat="server" Font-Bold="True" Text="DUE DATE :" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="True"></asp:Label>
                    <asp:Label ID="lblduedate" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="True" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1"></td>
                <td class="auto-style1"></td>
                <td class="auto-style1"></td>
                <td class="auto-style1"></td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style24">
                </td>
                <td class="auto-style24">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="ACCOUNT NUMBER :"></asp:Label>
&nbsp;<asp:Label ID="lblAccountnumber" runat="server"></asp:Label>
                </td>
                <td class="auto-style24"></td>
                <td class="auto-style24">
                    <asp:Label ID="Label14" runat="server" Font-Bold="True" Text="DATE :"></asp:Label>
&nbsp;<asp:Label ID="lblDate" runat="server"></asp:Label>
                </td>
                <td class="auto-style25"></td>
            </tr>
            <tr>
                <td class="auto-style28">
                    </td>
                <td class="auto-style28">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="ACCOUNT NAME :"></asp:Label>
                    &nbsp;<asp:Label ID="lblAccountName" runat="server"></asp:Label>
                </td>
                <td class="auto-style28"></td>
                <td class="auto-style28">
                    <asp:Label ID="Label15" runat="server" Font-Bold="True" Text="BILL NUMBER :"></asp:Label>
&nbsp;<asp:Label ID="lblbillnumber" runat="server"></asp:Label>
                </td>
                <td class="auto-style27"></td>
            </tr>
            <tr>
                <td class="auto-style28">
                    </td>
                <td class="auto-style28">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="BILLING ADDRESS :"></asp:Label>
                &nbsp;<asp:Label ID="lblbillingaddress" runat="server"></asp:Label>
                </td>
                <td class="auto-style28"></td>
                <td class="auto-style28">
                    <asp:Label ID="Label22" runat="server" Font-Bold="True" Text="SERVICE PLAN :"></asp:Label>
&nbsp;<asp:Label ID="lblserviceplan" runat="server"></asp:Label>
                </td>
                <td class="auto-style27"></td>
            </tr>
            <tr>
                <td class="auto-style7">
                    &nbsp;</td>
                <td colspan="4" class="auto-style7">
                    <center style="height: 18px"><asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Small" Text="BILL / STATEMENT SUMMARY"></asp:Label></center></td>
            </tr>
             </table>
        <asp:Label ID="Label6" runat="server" Text="______________________________________________________________________________________________________________________________________" Font-Bold="True" Font-Italic="False" Font-Strikeout="True"></asp:Label>
         <table class="nav-justified">
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label62" runat="server" Font-Bold="True" Text="PREVIOUS BILL"></asp:Label>
                </td>
                <td class="auto-style1"></td>
                <td class="auto-style1">
                    <asp:Label ID="Label17" runat="server" Font-Bold="True" Text="AMOUNT"></asp:Label>
                </td>
                <td class="auto-style20"></td>
            </tr>
            <tr>
                <td class="auto-style7">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblbillingaddress16" runat="server">REMAINING BALANCE FROM PREVIOUS BILL</asp:Label>
                </td>
                <td class="auto-style7"></td>
                <td class="auto-style7">
                    <asp:Label ID="Label63" runat="server" Text="₱"></asp:Label>
&nbsp;<asp:Label ID="lblremainingbalancefrompreviousbill" runat="server"></asp:Label>
                </td>
                <td class="auto-style19"></td>
            </tr>
            <tr>
                <td class="auto-style7">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblpenalty" runat="server">PENALTY (2% FROM PREVIOUS BALANCE)</asp:Label>
                </td>
                <td class="auto-style7"></td>
                <td class="auto-style7">
                    <asp:Label ID="Label70" runat="server" Text="₱"></asp:Label>
&nbsp;<asp:Label ID="lblpenaltyfrompreviousbalance" runat="server"></asp:Label>
                </td>
                <td class="auto-style19"></td>
            </tr>
            <tr>
                <td class="auto-style7">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblpenalty3" runat="server">INSTALLATION FEE BALANCE</asp:Label>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Label ID="Label75" runat="server" Text="₱"></asp:Label>
&nbsp;<asp:Label ID="lblinstllationfeebalance" runat="server"></asp:Label>
                </td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label69" runat="server" Font-Bold="True" Text="TOTAL PREVIOUS BILL"></asp:Label>
                </td>
                <td class="auto-style7"></td>
                <td class="auto-style7">
                    <asp:Label ID="Label71" runat="server" Text="₱"></asp:Label>
&nbsp;<asp:Label ID="lbltotalpreviousbill" runat="server"></asp:Label>
                </td>
                <td class="auto-style19"></td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label19" runat="server" Font-Bold="True" Text="CURRENT BILL"></asp:Label>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="lblbillingaddress2" runat="server">MONTHLY SERVICE FEES</asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblbillingaddress3" runat="server">INTERNET</asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label24" runat="server" Text="₱"></asp:Label>
&nbsp;<asp:Label ID="lblinternet" runat="server"></asp:Label>
                    </td>
                <td class="auto-style16">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="lblbillingaddress9" runat="server">VAT</asp:Label>
                </td>
                <td class="auto-style6"></td>
                <td class="auto-style6">
                    <asp:Label ID="Label25" runat="server" Text="₱"></asp:Label>
&nbsp;<asp:Label ID="lblvat" runat="server"></asp:Label>
                    </td>
                <td class="auto-style17"></td>
            </tr>
            <tr>
                <td class="auto-style9">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="lblbillingaddress10" runat="server">LESS ADJUSTMENTS</asp:Label>
                </td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Label ID="Label26" runat="server" Text="₱"></asp:Label>
&nbsp;<asp:Label ID="lbllessadjustments" runat="server"></asp:Label>
                    </td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label20" runat="server" Font-Bold="True" Text="TOTAL CURRENT BILL"></asp:Label>
                </td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Label ID="Label27" runat="server" Text="₱"></asp:Label>
&nbsp;<asp:Label ID="lbltotalcurrentbill" runat="server"></asp:Label>
                    </td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    </td>
                <td class="auto-style6"></td>
                <td class="auto-style6">__________________________</td>
                <td class="auto-style17"></td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label21" runat="server" Font-Bold="True" Text="TOTAL AMOUNT DUE" Font-Size="Small"></asp:Label>
                </td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Label ID="Label28" runat="server" Text="₱" ForeColor="Red"></asp:Label>
&nbsp;<asp:Label ID="lbltotalamountdue" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            </table>
        <br />- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  <br />
        <table class="nav-justified">
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style5" colspan="4">
                    <img class="auto-style4" src="../Images/header-white.PNG" /></td>
            </tr>
        <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td colspan="3">
                    <center><asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Medium" Text="STATEMENT OF ACCOUNT"></asp:Label></center>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="Label68" runat="server" Font-Bold="True" Text="DUE DATE :" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="True"></asp:Label>
                    <asp:Label ID="lblduedate2" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="True" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style31">
                </td>
                <td class="auto-style31">
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="ACCOUNT NUMBER :"></asp:Label>
&nbsp;<asp:Label ID="lblaccountnumber2" runat="server"></asp:Label>
                </td>
                <td class="auto-style31"></td>
                <td class="auto-style31">
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="DATE :"></asp:Label>
&nbsp;<asp:Label ID="lbldate2" runat="server"></asp:Label>
                </td>
                <td class="auto-style30"></td>
            </tr>
            <tr>
                <td class="auto-style28">
                    </td>
                <td class="auto-style28">
                    <asp:Label ID="Label16" runat="server" Font-Bold="True" Text="ACCOUNT NAME :"></asp:Label>
                    &nbsp;<asp:Label ID="lblaccountname2" runat="server"></asp:Label>
                </td>
                <td class="auto-style28"></td>
                <td class="auto-style28">
                    <asp:Label ID="Label29" runat="server" Font-Bold="True" Text="BILL NUMBER :"></asp:Label>
&nbsp;<asp:Label ID="lblbillnumber2" runat="server"></asp:Label>
                </td>
                <td class="auto-style27"></td>
            </tr>
            <tr>
                <td class="auto-style28">
                    </td>
                <td class="auto-style28">
                    <asp:Label ID="Label31" runat="server" Font-Bold="True" Text="BILLING ADDRESS :"></asp:Label>
                &nbsp;<asp:Label ID="lblbillingaddresss2" runat="server"></asp:Label>
                </td>
                <td class="auto-style28"></td>
                <td class="auto-style28">
                    <asp:Label ID="Label33" runat="server" Font-Bold="True" Text="SERVICE PLAN :"></asp:Label>
&nbsp;<asp:Label ID="lblserviceplan2" runat="server"></asp:Label>
                </td>
                <td class="auto-style27"></td>
            </tr>
            <tr>
                <td class="auto-style7">
                    &nbsp;</td>
                <td colspan="4" class="auto-style7">
                    <center><asp:Label ID="Label35" runat="server" Font-Bold="True" Font-Size="Small" Text="BILL / STATEMENT SUMMARY"></asp:Label></center></td>
            </tr>
             </table>
        <asp:Label ID="Label36" runat="server" Text="______________________________________________________________________________________________________________________________________" Font-Bold="True" Font-Italic="False" Font-Strikeout="True"></asp:Label>
         <table class="nav-justified">
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label64" runat="server" Font-Bold="True" Text="PREVIOUS BILL"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label38" runat="server" Font-Bold="True" Text="AMOUNT"></asp:Label>
                </td>
                <td class="auto-style16">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label65" runat="server">REMAINING BALANCE FROM PREVIOUS BILL</asp:Label>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Label ID="Label66" runat="server" Text="₱"></asp:Label>
&nbsp;<asp:Label ID="lblremainingbalancefrompreviousbill2" runat="server"></asp:Label>
                </td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblpenalty2" runat="server">PENALTY (2% FROM PREVIOUS BALANCE)</asp:Label>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Label ID="Label73" runat="server" Text="₱"></asp:Label>
&nbsp;<asp:Label ID="lblpenaltyfrompreviousbalance2" runat="server"></asp:Label>
                </td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblpenalty4" runat="server">INSTALLATION FEE BALANCE</asp:Label>
                </td>
                <td class="auto-style7"></td>
                <td class="auto-style7">
                    <asp:Label ID="Label76" runat="server" Text="₱"></asp:Label>
&nbsp;<asp:Label ID="lblinstallationbalancefee2" runat="server"></asp:Label>
                </td>
                <td class="auto-style19"></td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label72" runat="server" Font-Bold="True" Text="TOTAL PREVIOUS BILL"></asp:Label>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Label ID="Label74" runat="server" Text="₱"></asp:Label>
&nbsp;<asp:Label ID="lbltotalpreviousbill2" runat="server"></asp:Label>
                </td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label37" runat="server" Font-Bold="True" Text="CURRENT BILL"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td class="auto-style7"></td>
                <td class="auto-style7">
                    </td>
                <td class="auto-style19"></td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label42" runat="server">MONTHLY SERVICE FEES</asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label43" runat="server">INTERNET</asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label44" runat="server" Text="₱"></asp:Label>
&nbsp;<asp:Label ID="lblinternet2" runat="server"></asp:Label>
                </td>
                <td class="auto-style16">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label46" runat="server">VAT</asp:Label>
                </td>
                <td class="auto-style6"></td>
                <td class="auto-style6">
                    <asp:Label ID="Label47" runat="server" Text="₱"></asp:Label>
&nbsp;<asp:Label ID="lblvat2" runat="server"></asp:Label>
                </td>
                <td class="auto-style17"></td>
            </tr>
            <tr>
                <td class="auto-style9">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label49" runat="server">LESS ADJUSTMENTS</asp:Label>
                </td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Label ID="Label50" runat="server" Text="₱"></asp:Label>
&nbsp;<asp:Label ID="lbllessadjustments2" runat="server"></asp:Label>
                </td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label52" runat="server" Font-Bold="True" Text="TOTAL CURRENT BILL"></asp:Label>
                </td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Label ID="Label53" runat="server" Text="₱"></asp:Label>
&nbsp;<asp:Label ID="lblcurrentbill2" runat="server"></asp:Label>
                </td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style6">__________________________</td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label55" runat="server" Font-Bold="True" Text="TOTAL AMOUNT DUE" Font-Size="Small"></asp:Label>
                </td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Label ID="Label56" runat="server" Text="₱" ForeColor="Red"></asp:Label>
&nbsp;<asp:Label ID="lbltotalamountdue2" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            </table>
    </div>
    </form>
</body>
</html>

