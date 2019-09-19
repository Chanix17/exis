<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/CSR.Master" CodeBehind="ForPayment.aspx.cs" Inherits="Exis.View.Cashier.ForPayment" %>

<asp:Content  ContentPlaceHolderID="MainContent" runat="server">

    <table class="nav-justified">
        <tr>
            <td style="height: 41px; " colspan="2">
                <asp:Label ID="lbltower" runat="server" Text="Tower "></asp:Label>
                <asp:DropDownList ID="ddltower" runat="server" DataSourceID="SqlDataSource3" DataTextField="TowerID" DataValueField="TowerID" AutoPostBack="True">
                </asp:DropDownList>
&nbsp;<asp:Label ID="lblunitnumber" runat="server" Text="Unit Number"></asp:Label>
&nbsp;<asp:TextBox ID="txtunitnumber" runat="server" MaxLength="4" OnTextChanged="txtunitnumber_TextChanged" AutoPostBack="True"></asp:TextBox>
            &nbsp;
            </td>
            <td style="height: 41px; ">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 144px">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                    <asp:ListItem>For Activation</asp:ListItem>
                    <asp:ListItem>7th of the month</asp:ListItem>
                    <asp:ListItem>14th of the month</asp:ListItem>
                    <asp:ListItem>21st of the month</asp:ListItem>
                    <asp:ListItem>30th of the month</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
                    <asp:ListItem>For Payment</asp:ListItem>
                    <asp:ListItem>Paid</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="lbldatetoday" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 144px">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

    <asp:GridView ID="GvForPayment" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" DataKeyNames="BillingID" DataSourceID="SqlDataSource1" EmptyDataText="No due date payment today." AllowPaging="True" AllowSorting="True" PagerSettings-NextPageText="&raquo;" PagerSettings-LastPageText="&raquo;">
        <Columns>
            <asp:BoundField DataField="BillingID" HeaderText="BillingID" ReadOnly="True" SortExpression="BillingID" />
            <asp:BoundField DataField="AccountNumber" HeaderText="AccountNumber" SortExpression="AccountNumber" />
            <asp:BoundField DataField="DateAdded" HeaderText="DateAdded" SortExpression="DateAdded" />
            <asp:BoundField DataField="BillNumber" HeaderText="BillNumber" SortExpression="BillNumber" />
            <asp:BoundField DataField="ServicePlandID" HeaderText="ServicePlandID" SortExpression="ServicePlandID" />
            <asp:BoundField DataField="TotalCurrentBill" HeaderText="TotalCurrentBill" SortExpression="TotalCurrentBill" />
            <asp:BoundField DataField="DueDate" HeaderText="Payment Date" SortExpression="DueDate" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="lkbPrintBill" OnClick="lkbPrintBill_Click" runat="server">Print First Bill</asp:LinkButton> | 
                    <asp:LinkButton ID="lkbAcceptPayment" OnClick="lkbAcceptPayment_Click" runat="server">Accept Payment</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <PagerStyle CssClass="pagination-ys" />
        <HeaderStyle BackColor="#FF8E01" ForeColor="Black" />

<PagerSettings LastPageText="&#187;" NextPageText="&#187;"></PagerSettings>

        <PagerStyle CssClass="pagination-ys" />
    </asp:GridView>

    <asp:GridView ID="GvForPaymentwithSearch" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" DataKeyNames="BillingID" DataSourceID="SqlDataSourceForPaymentwithSearch" EmptyDataText="No due date payment today." AllowPaging="True" AllowSorting="True" PagerSettings-NextPageText="&raquo;" PagerSettings-LastPageText="&raquo;">
        <Columns>
            <asp:BoundField DataField="BillingID" HeaderText="BillingID" ReadOnly="True" SortExpression="BillingID" />
            <asp:BoundField DataField="AccountNumber" HeaderText="AccountNumber" SortExpression="AccountNumber" />
            <asp:BoundField DataField="DateAdded" HeaderText="DateAdded" SortExpression="DateAdded" />
            <asp:BoundField DataField="BillNumber" HeaderText="BillNumber" SortExpression="BillNumber" />
            <asp:BoundField DataField="ServicePlandID" HeaderText="ServicePlandID" SortExpression="ServicePlandID" />
            <asp:BoundField DataField="TotalCurrentBill" HeaderText="TotalCurrentBill" SortExpression="TotalCurrentBill" />
            <asp:BoundField DataField="DueDate" HeaderText="Payment Date" SortExpression="DueDate" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="lkbPrintBill8" OnClick="lkbPrintBill_Click" runat="server">Print First Bill</asp:LinkButton> | 
                    <asp:LinkButton ID="lkbAcceptPayment8" OnClick="lkbAcceptPayment_Click" runat="server">Accept Payment</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <PagerStyle CssClass="pagination-ys" />
        <HeaderStyle BackColor="#FF8E01" ForeColor="Black" />

<PagerSettings LastPageText="&#187;" NextPageText="&#187;"></PagerSettings>

        <PagerStyle CssClass="pagination-ys" />
    </asp:GridView>

    <asp:GridView ID="GV7th" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" DataKeyNames="BillingID" DataSourceID="SqlDataSource7th" EmptyDataText="No due date payment today." AllowPaging="True" AllowSorting="True" PagerSettings-NextPageText="&raquo;" PagerSettings-LastPageText="&raquo;" Visible="False" OnRowDataBound="GV7th_RowDataBound">

        <PagerStyle CssClass="pagination-ys" />
        <Columns>
            <asp:BoundField DataField="BillingID" HeaderText="BillingID" ReadOnly="True" SortExpression="BillingID" />
            <asp:BoundField DataField="AccountNumber" HeaderText="Account#" SortExpression="AccountNumber" />
            <asp:BoundField DataField="BillNumber" HeaderText="Bill#" SortExpression="BillNumber" />
            <asp:BoundField DataField="ServicePlandID" HeaderText="PlandID" SortExpression="ServicePlandID" />
            <asp:BoundField DataField="RemainingBalanceFromPreviousBill" HeaderText="Balance" SortExpression="RemainingBalanceFromPreviousBill" />
            <asp:BoundField DataField="InstallationBalance" HeaderText="InstallationFeeBalance" SortExpression="InstallationBalance" />
            <asp:BoundField DataField="TotalCurrentBill" HeaderText="TotalCurrentBill" SortExpression="TotalCurrentBill" />
            <asp:BoundField DataField="TotalAmountDue" HeaderText="TotalAmountDue" SortExpression="TotalAmountDue" />
            <asp:BoundField DataField="DueDate" HeaderText="DueDate" SortExpression="DueDate" />
            <asp:BoundField DataField="PaymentReceived" HeaderText="PaymentReceived" SortExpression="PaymentReceived" />
            <asp:TemplateField HeaderStyle-Width="350">
                <ItemTemplate >
                    <asp:LinkButton ID="lkbPrintBill0" OnClick="lkbPrintBill0_Click" runat="server">Print Bill</asp:LinkButton> | 
                    <asp:LinkButton ID="lkbAcceptpaymentforbill" OnClick="lkbAcceptpaymentforbill_Click" runat="server">Accept Payment</asp:LinkButton> |
                    <asp:LinkButton ID="lkbGenerateNewBillingStatementwithPenalty" OnClick="lkbGenerateNewBillingStatementwithPenalty_Click" runat="server" ForeColor="Red" Visible="False">Penalty</asp:LinkButton> |
                    <asp:LinkButton ID="lkbGenerateNewBillingStatement" OnClick="lkbGenerateNewBillingStatement_Click" runat="server">Generate New Billing Statement</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <HeaderStyle BackColor="#FF8E01" ForeColor="Black" />

<PagerSettings LastPageText="&#187;" NextPageText="&#187;"></PagerSettings>

        <PagerStyle CssClass="pagination-ys" />
    </asp:GridView>

    <asp:GridView ID="GV7thwithsearch" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" DataKeyNames="BillingID" DataSourceID="SqlDataSource7thwithsearch" EmptyDataText="No due date payment today." AllowPaging="True" AllowSorting="True" PagerSettings-NextPageText="&raquo;" PagerSettings-LastPageText="&raquo;" Visible="False" OnRowDataBound="GV7thwithsearch_RowDataBound">

        <PagerStyle CssClass="pagination-ys" />
        <Columns>
            <asp:BoundField DataField="BillingID" HeaderText="BillingID" ReadOnly="True" SortExpression="BillingID" />
            <asp:BoundField DataField="AccountNumber" HeaderText="Account#" SortExpression="AccountNumber" />
            <asp:BoundField DataField="BillNumber" HeaderText="Bill#" SortExpression="BillNumber" />
            <asp:BoundField DataField="ServicePlandID" HeaderText="PlandID" SortExpression="ServicePlandID" />
            <asp:BoundField DataField="RemainingBalanceFromPreviousBill" HeaderText="Balance" SortExpression="RemainingBalanceFromPreviousBill" />
            <asp:BoundField DataField="InstallationBalance" HeaderText="InstallationFeeBalance" SortExpression="InstallationBalance" />
            <asp:BoundField DataField="TotalCurrentBill" HeaderText="TotalCurrentBill" SortExpression="TotalCurrentBill" />
            <asp:BoundField DataField="TotalAmountDue" HeaderText="TotalAmountDue" SortExpression="TotalAmountDue" />
            <asp:BoundField DataField="DueDate" HeaderText="DueDate" SortExpression="DueDate" />
            <asp:BoundField DataField="PaymentReceived" HeaderText="PaymentReceived" SortExpression="PaymentReceived" />
            <asp:TemplateField HeaderStyle-Width="350">
                <ItemTemplate>
                    <asp:LinkButton ID="lkbPrintBill3" OnClick="lkbPrintBill0_Click" runat="server">Print Bill</asp:LinkButton> | 
                    <asp:LinkButton ID="lkbAcceptPayment3" OnClick="lkbAcceptpaymentforbill_Click" runat="server">Accept Payment</asp:LinkButton> |
                    <asp:LinkButton ID="lkbGenerateNewBillingStatementwithPenalty" OnClick="lkbGenerateNewBillingStatementwithPenalty_Click" runat="server" ForeColor="Red" Visible="False">Penalty</asp:LinkButton> |
                    <asp:LinkButton ID="lkbGenerateNewBillingStatement" OnClick="lkbGenerateNewBillingStatement_Click" runat="server">Generate New Billing Statement</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <HeaderStyle BackColor="#FF8E01" ForeColor="Black" />

<PagerSettings LastPageText="&#187;" NextPageText="&#187;"></PagerSettings>

        <PagerStyle CssClass="pagination-ys" />
    </asp:GridView>

    <asp:GridView ID="GV14th" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" DataKeyNames="BillingID" DataSourceID="SqlDataSource14th" EmptyDataText="No due payment in this day of the month." AllowPaging="True" AllowSorting="True" PagerSettings-NextPageText="&raquo;" PagerSettings-LastPageText="&raquo;" Visible="False" OnRowDataBound="GV14th_RowDataBound">

        <PagerStyle CssClass="pagination-ys" />
        <Columns>
            <asp:BoundField DataField="BillingID" HeaderText="BillingID" ReadOnly="True" SortExpression="BillingID" />
            <asp:BoundField DataField="AccountNumber" HeaderText="Account#" SortExpression="AccountNumber" />
            <asp:BoundField DataField="BillNumber" HeaderText="Bill#" SortExpression="BillNumber" />
            <asp:BoundField DataField="ServicePlandID" HeaderText="PlandID" SortExpression="ServicePlandID" />
            <asp:BoundField DataField="RemainingBalanceFromPreviousBill" HeaderText="Balance" SortExpression="RemainingBalanceFromPreviousBill" />
            <asp:BoundField DataField="InstallationBalance" HeaderText="InstallationFeeBalance" SortExpression="InstallationBalance" />
            <asp:BoundField DataField="TotalCurrentBill" HeaderText="TotalCurrentBill" SortExpression="TotalCurrentBill" />
            <asp:BoundField DataField="TotalAmountDue" HeaderText="TotalAmountDue" SortExpression="TotalAmountDue" />
            <asp:BoundField DataField="DueDate" HeaderText="Due Date" SortExpression="DueDate" />
            <asp:BoundField DataField="PaymentReceived" HeaderText="PaymentReceived" SortExpression="PaymentReceived" />
            <asp:TemplateField HeaderStyle-Width="350">
                <ItemTemplate>
                    <asp:LinkButton ID="lkbPrintBill1" OnClick="lkbPrintBill0_Click" runat="server">Print Bill</asp:LinkButton> | 
                    <asp:LinkButton ID="lkbAcceptPayment1" OnClick="lkbAcceptpaymentforbill_Click" runat="server">Accept Payment</asp:LinkButton> |
                    <asp:LinkButton ID="lkbGenerateNewBillingStatementwithPenalty" OnClick="lkbGenerateNewBillingStatementwithPenalty_Click" runat="server" ForeColor="Red" Visible="False">Penalty</asp:LinkButton> |
                    <asp:LinkButton ID="lkbGenerateNewBillingStatement" OnClick="lkbGenerateNewBillingStatement_Click" runat="server">Generate New Billing Statement</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <HeaderStyle BackColor="#FF8E01" ForeColor="Black" />

<PagerSettings LastPageText="&#187;" NextPageText="&#187;"></PagerSettings>

        <PagerStyle CssClass="pagination-ys" />
    </asp:GridView>

    <asp:GridView ID="GV14thwithsearch" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" DataKeyNames="BillingID" DataSourceID="SqlDataSource14thwithsearch" EmptyDataText="No due payment in this day of the month." AllowPaging="True" AllowSorting="True" PagerSettings-NextPageText="&raquo;" PagerSettings-LastPageText="&raquo;" Visible="False" OnRowDataBound="GV14thwithsearch_RowDataBound">

        <PagerStyle CssClass="pagination-ys" />
        <Columns>
            <asp:BoundField DataField="BillingID" HeaderText="BillingID" ReadOnly="True" SortExpression="BillingID" />
            <asp:BoundField DataField="AccountNumber" HeaderText="Account#" SortExpression="AccountNumber" />
            <asp:BoundField DataField="BillNumber" HeaderText="Bill#" SortExpression="BillNumber" />
            <asp:BoundField DataField="ServicePlandID" HeaderText="PlandID" SortExpression="ServicePlandID" />
            <asp:BoundField DataField="RemainingBalanceFromPreviousBill" HeaderText="Balance" SortExpression="RemainingBalanceFromPreviousBill" />
            <asp:BoundField DataField="InstallationBalance" HeaderText="InstallationFeeBalance" SortExpression="InstallationBalance" />
            <asp:BoundField DataField="TotalCurrentBill" HeaderText="TotalCurrentBill" SortExpression="TotalCurrentBill" />
            <asp:BoundField DataField="TotalAmountDue" HeaderText="TotalAmountDue" SortExpression="TotalAmountDue" />
            <asp:BoundField DataField="DueDate" HeaderText="DueDate" SortExpression="DueDate" />
            <asp:BoundField DataField="PaymentReceived" HeaderText="PaymentReceived" SortExpression="PaymentReceived" />
            <asp:TemplateField HeaderStyle-Width="350">
                <ItemTemplate>
                    <asp:LinkButton ID="lkbPrintBill4" OnClick="lkbPrintBill0_Click" runat="server">Print Bill</asp:LinkButton> | 
                    <asp:LinkButton ID="lkbAcceptPayment4" OnClick="lkbAcceptpaymentforbill_Click" runat="server">Accept Payment</asp:LinkButton> |
                    <asp:LinkButton ID="lkbGenerateNewBillingStatementwithPenalty" OnClick="lkbGenerateNewBillingStatementwithPenalty_Click" runat="server" ForeColor="Red" Visible="False">Penalty</asp:LinkButton> |
                    <asp:LinkButton ID="lkbGenerateNewBillingStatement" OnClick="lkbGenerateNewBillingStatement_Click" runat="server">Generate New Billing Statement</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <HeaderStyle BackColor="#FF8E01" ForeColor="Black" />

<PagerSettings LastPageText="&#187;" NextPageText="&#187;"></PagerSettings>

        <PagerStyle CssClass="pagination-ys" />
    </asp:GridView>

    <asp:GridView ID="GV21st" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" DataKeyNames="BillingID" DataSourceID="SqlDataSource21st" EmptyDataText="No due payment in this day of the month." AllowPaging="True" AllowSorting="True" PagerSettings-NextPageText="&raquo;" PagerSettings-LastPageText="&raquo;" Visible="False" OnRowDataBound="GV21st_RowDataBound">

        <PagerStyle CssClass="pagination-ys" />
        <Columns>
            <asp:BoundField DataField="BillingID" HeaderText="BillingID" ReadOnly="True" SortExpression="BillingID" />
            <asp:BoundField DataField="AccountNumber" HeaderText="Account#" SortExpression="AccountNumber" />
            <asp:BoundField DataField="BillNumber" HeaderText="Bill#" SortExpression="BillNumber" />
            <asp:BoundField DataField="ServicePlandID" HeaderText="PlandID" SortExpression="ServicePlandID" />
            <asp:BoundField DataField="RemainingBalanceFromPreviousBill" HeaderText="Balance" SortExpression="RemainingBalanceFromPreviousBill" />
            <asp:BoundField DataField="InstallationBalance" HeaderText="InstallationFeeBalance" SortExpression="InstallationBalance" />
            <asp:BoundField DataField="TotalCurrentBill" HeaderText="TotalCurrentBill" SortExpression="TotalCurrentBill" />
            <asp:BoundField DataField="TotalAmountDue" HeaderText="TotalAmountDue" SortExpression="TotalAmountDue" />
            <asp:BoundField DataField="DueDate" HeaderText="DueDate" SortExpression="DueDate" />
            <asp:BoundField DataField="PaymentReceived" HeaderText="PaymentReceived" SortExpression="PaymentReceived" />
            <asp:TemplateField HeaderStyle-Width="350">
                <ItemTemplate>
                    <asp:LinkButton ID="lkbPrintBill2" OnClick="lkbPrintBill0_Click" runat="server">Print Bill</asp:LinkButton> | 
                    <asp:LinkButton ID="lkbAcceptPayment2" OnClick="lkbAcceptpaymentforbill_Click" runat="server">Accept Payment</asp:LinkButton> | 
                    <asp:LinkButton ID="lkbGenerateNewBillingStatementwithPenalty" OnClick="lkbGenerateNewBillingStatementwithPenalty_Click" runat="server" ForeColor="Red" Visible="False">Penalty</asp:LinkButton> |
                    <asp:LinkButton ID="lkbGenerateNewBillingStatement" OnClick="lkbGenerateNewBillingStatement_Click" runat="server">Generate New Billing Statement</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <HeaderStyle BackColor="#FF8E01" ForeColor="Black" />

<PagerSettings LastPageText="&#187;" NextPageText="&#187;"></PagerSettings>

        <PagerStyle CssClass="pagination-ys" />
    </asp:GridView>

    <asp:GridView ID="GV21stwithsearch" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" DataKeyNames="BillingID" DataSourceID="SqlDataSource21stwithsearch" EmptyDataText="No due payment in this day of the month." AllowPaging="True" AllowSorting="True" PagerSettings-NextPageText="&raquo;" PagerSettings-LastPageText="&raquo;" Visible="False" OnRowDataBound="GV21stwithsearch_RowDataBound">

        <PagerStyle CssClass="pagination-ys" />
        <Columns>
            <asp:BoundField DataField="BillingID" HeaderText="BillingID" ReadOnly="True" SortExpression="BillingID" />
            <asp:BoundField DataField="AccountNumber" HeaderText="Account#" SortExpression="AccountNumber" />
            <asp:BoundField DataField="BillNumber" HeaderText="Bill#" SortExpression="BillNumber" />
            <asp:BoundField DataField="ServicePlandID" HeaderText="PlandID" SortExpression="ServicePlandID" />
            <asp:BoundField DataField="RemainingBalanceFromPreviousBill" HeaderText="Balance" SortExpression="RemainingBalanceFromPreviousBill" />
            <asp:BoundField DataField="InstallationBalance" HeaderText="InstallationFeeBalance" SortExpression="InstallationBalance" />
            <asp:BoundField DataField="TotalCurrentBill" HeaderText="TotalCurrentBill" SortExpression="TotalCurrentBill" />
            <asp:BoundField DataField="TotalAmountDue" HeaderText="TotalAmountDue" SortExpression="TotalAmountDue" />
            <asp:BoundField DataField="DueDate" HeaderText="DueDate" SortExpression="DueDate" />
            <asp:BoundField DataField="PaymentReceived" HeaderText="PaymentReceived" SortExpression="PaymentReceived" />
            <asp:TemplateField HeaderStyle-Width="350">
                <ItemTemplate>
                    <asp:LinkButton ID="lkbPrintBill5" OnClick="lkbPrintBill0_Click" runat="server">Print Bill</asp:LinkButton> | 
                    <asp:LinkButton ID="lkbAcceptPayment5" OnClick="lkbAcceptpaymentforbill_Click" runat="server">Accept Payment</asp:LinkButton> |
                    <asp:LinkButton ID="lkbGenerateNewBillingStatementwithPenalty" OnClick="lkbGenerateNewBillingStatementwithPenalty_Click" runat="server" ForeColor="Red" Visible="False">Penalty</asp:LinkButton> |
                    <asp:LinkButton ID="lkbGenerateNewBillingStatement" OnClick="lkbGenerateNewBillingStatement_Click" runat="server">Generate New Billing Statement</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <HeaderStyle BackColor="#FF8E01" ForeColor="Black" />

<PagerSettings LastPageText="&#187;" NextPageText="&#187;"></PagerSettings>

        <PagerStyle CssClass="pagination-ys" />
    </asp:GridView>

    <asp:GridView ID="GV28th" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" DataKeyNames="BillingID" DataSourceID="SqlDataSource28th" EmptyDataText="No due payment in this day of the month." AllowPaging="True" AllowSorting="True" PagerSettings-NextPageText="&raquo;" PagerSettings-LastPageText="&raquo;" Visible="False" OnRowDataBound="GV28th_RowDataBound">

        <PagerStyle CssClass="pagination-ys" />
        <Columns>
            <asp:BoundField DataField="BillingID" HeaderText="BillingID" ReadOnly="True" SortExpression="BillingID" />
            <asp:BoundField DataField="AccountNumber" HeaderText="Account#" SortExpression="AccountNumber" />
            <asp:BoundField DataField="BillNumber" HeaderText="Bill#" SortExpression="BillNumber" />
            <asp:BoundField DataField="ServicePlandID" HeaderText="PlandID" SortExpression="ServicePlandID" />
            <asp:BoundField DataField="RemainingBalanceFromPreviousBill" HeaderText="Balance" SortExpression="RemainingBalanceFromPreviousBill" />
            <asp:BoundField DataField="InstallationBalance" HeaderText="InstallationFeeBalance" SortExpression="InstallationBalance" />
            <asp:BoundField DataField="TotalCurrentBill" HeaderText="TotalCurrentBill" SortExpression="TotalCurrentBill" />
            <asp:BoundField DataField="TotalAmountDue" HeaderText="TotalAmountDue" SortExpression="TotalAmountDue" />
            <asp:BoundField DataField="DueDate" HeaderText="DueDate" SortExpression="DueDate" />
            <asp:BoundField DataField="PaymentReceived" HeaderText="PaymentReceived" SortExpression="PaymentReceived" />
            <asp:TemplateField HeaderStyle-Width="350">
                <ItemTemplate>
                    <asp:LinkButton ID="lkbPrintBill2" OnClick="lkbPrintBill0_Click" runat="server">Print Bill</asp:LinkButton> | 
                    <asp:LinkButton ID="lkbAcceptPayment2" OnClick="lkbAcceptpaymentforbill_Click" runat="server">Accept Payment</asp:LinkButton> |
                    <asp:LinkButton ID="lkbGenerateNewBillingStatementwithPenalty" OnClick="lkbGenerateNewBillingStatementwithPenalty_Click" runat="server" ForeColor="Red" Visible="False">Penalty</asp:LinkButton> |
                    <asp:LinkButton ID="lkbGenerateNewBillingStatement" OnClick="lkbGenerateNewBillingStatement_Click" runat="server">Generate New Billing Statement</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <HeaderStyle BackColor="#FF8E01" ForeColor="Black" />

<PagerSettings LastPageText="&#187;" NextPageText="&#187;"></PagerSettings>

        <PagerStyle CssClass="pagination-ys" />
    </asp:GridView>

    <asp:GridView ID="GV28thwithsearch" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" DataKeyNames="BillingID" DataSourceID="SqlDataSource28thwithsearch" EmptyDataText="No due payment in this day of the month." AllowPaging="True" AllowSorting="True" PagerSettings-NextPageText="&raquo;" PagerSettings-LastPageText="&raquo;" Visible="False" OnRowDataBound="GV28thwithsearch_RowDataBound">

        <PagerStyle CssClass="pagination-ys" />
        <Columns>
            <asp:BoundField DataField="BillingID" HeaderText="BillingID" ReadOnly="True" SortExpression="BillingID" />
            <asp:BoundField DataField="AccountNumber" HeaderText="Account#" SortExpression="AccountNumber" />
            <asp:BoundField DataField="BillNumber" HeaderText="Bill#" SortExpression="BillNumber" />
            <asp:BoundField DataField="ServicePlandID" HeaderText="PlandID" SortExpression="ServicePlandID" />
            <asp:BoundField DataField="RemainingBalanceFromPreviousBill" HeaderText="Balance" SortExpression="RemainingBalanceFromPreviousBill" />
            <asp:BoundField DataField="InstallationBalance" HeaderText="InstallationFeeBalance" SortExpression="InstallationBalance" />
            <asp:BoundField DataField="TotalCurrentBill" HeaderText="TotalCurrentBill" SortExpression="TotalCurrentBill" />
            <asp:BoundField DataField="TotalAmountDue" HeaderText="TotalAmountDue" SortExpression="TotalAmountDue" />
            <asp:BoundField DataField="DueDate" HeaderText="DueDate" SortExpression="DueDate" />
            <asp:BoundField DataField="PaymentReceived" HeaderText="PaymentReceived" SortExpression="PaymentReceived" />
            <asp:TemplateField HeaderStyle-Width="350">
                <ItemTemplate>
                    <asp:LinkButton ID="lkbPrintBill6" OnClick="lkbPrintBill0_Click" runat="server">Print Bill</asp:LinkButton> | 
                    <asp:LinkButton ID="lkbAcceptPayment6" OnClick="lkbAcceptpaymentforbill_Click" runat="server">Accept Payment</asp:LinkButton> |
                    <asp:LinkButton ID="lkbGenerateNewBillingStatementwithPenalty" OnClick="lkbGenerateNewBillingStatementwithPenalty_Click" runat="server" ForeColor="Red" Visible="False">Penalty</asp:LinkButton> |
                    <asp:LinkButton ID="lkbGenerateNewBillingStatement" OnClick="lkbGenerateNewBillingStatement_Click" runat="server">Generate New Billing Statement</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <HeaderStyle BackColor="#FF8E01" ForeColor="Black" />

<PagerSettings LastPageText="&#187;" NextPageText="&#187;"></PagerSettings>

        <PagerStyle CssClass="pagination-ys" />
    </asp:GridView>

    <asp:GridView ID="GV30th" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" DataKeyNames="BillingID" DataSourceID="SqlDataSource30th" EmptyDataText="No due payment in this day of the month." AllowPaging="True" AllowSorting="True" PagerSettings-NextPageText="&raquo;" PagerSettings-LastPageText="&raquo;" Visible="False" OnRowDataBound="GV30th_RowDataBound">

        <PagerStyle CssClass="pagination-ys" />
        <Columns>
            <asp:BoundField DataField="BillingID" HeaderText="BillingID" ReadOnly="True" SortExpression="BillingID" />
            <asp:BoundField DataField="AccountNumber" HeaderText="Account#" SortExpression="AccountNumber" />
            <asp:BoundField DataField="BillNumber" HeaderText="Bill#" SortExpression="BillNumber" />
            <asp:BoundField DataField="ServicePlandID" HeaderText="PlandID" SortExpression="ServicePlandID" />
            <asp:BoundField DataField="RemainingBalanceFromPreviousBill" HeaderText="Balance" SortExpression="RemainingBalanceFromPreviousBill" />
            <asp:BoundField DataField="InstallationBalance" HeaderText="InstallationFeeBalance" SortExpression="InstallationBalance" />
            <asp:BoundField DataField="TotalCurrentBill" HeaderText="TotalCurrentBill" SortExpression="TotalCurrentBill" />
            <asp:BoundField DataField="TotalAmountDue" HeaderText="TotalAmountDue" SortExpression="TotalAmountDue" />
            <asp:BoundField DataField="DueDate" HeaderText="DueDate" SortExpression="DueDate" />
            <asp:BoundField DataField="PaymentReceived" HeaderText="PaymentReceived" SortExpression="PaymentReceived" />
            <asp:TemplateField HeaderStyle-Width="350">
                <ItemTemplate>
                    <asp:LinkButton ID="lkbPrintBill2" OnClick="lkbPrintBill0_Click" runat="server">Print Bill</asp:LinkButton> | 
                    <asp:LinkButton ID="lkbAcceptPayment2" OnClick="lkbAcceptpaymentforbill_Click" runat="server">Accept Payment</asp:LinkButton> |
                    <asp:LinkButton ID="lkbGenerateNewBillingStatementwithPenalty" OnClick="lkbGenerateNewBillingStatementwithPenalty_Click" runat="server" ForeColor="Red" Visible="False">Penalty</asp:LinkButton> |
                    <asp:LinkButton ID="lkbGenerateNewBillingStatement" OnClick="lkbGenerateNewBillingStatement_Click" runat="server">Generate New Billing Statement</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <HeaderStyle BackColor="#FF8E01" ForeColor="Black" />

<PagerSettings LastPageText="&#187;" NextPageText="&#187;"></PagerSettings>

        <PagerStyle CssClass="pagination-ys" />
    </asp:GridView>

    <asp:GridView ID="GV30thwithsearch" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" DataKeyNames="BillingID" DataSourceID="SqlDataSource30thwithsearch" EmptyDataText="No due payment in this day of the month." AllowPaging="True" AllowSorting="True" PagerSettings-NextPageText="&raquo;" PagerSettings-LastPageText="&raquo;" Visible="False" OnRowDataBound="GV30thwithsearch_RowDataBound">

        <PagerStyle CssClass="pagination-ys" />
        <Columns>
            <asp:BoundField DataField="BillingID" HeaderText="BillingID" ReadOnly="True" SortExpression="BillingID" />
            <asp:BoundField DataField="AccountNumber" HeaderText="Account#" SortExpression="AccountNumber" />
            <asp:BoundField DataField="BillNumber" HeaderText="Bill#" SortExpression="BillNumber" />
            <asp:BoundField DataField="ServicePlandID" HeaderText="PlandID" SortExpression="ServicePlandID" />
            <asp:BoundField DataField="RemainingBalanceFromPreviousBill" HeaderText="Balance" SortExpression="RemainingBalanceFromPreviousBill" />
            <asp:BoundField DataField="InstallationBalance" HeaderText="InstallationFeeBalance" SortExpression="InstallationBalance" />
            <asp:BoundField DataField="TotalCurrentBill" HeaderText="TotalCurrentBill" SortExpression="TotalCurrentBill" />
            <asp:BoundField DataField="TotalAmountDue" HeaderText="TotalAmountDue" SortExpression="TotalAmountDue" />
            <asp:BoundField DataField="DueDate" HeaderText="DueDate" SortExpression="DueDate" />
            <asp:BoundField DataField="PaymentReceived" HeaderText="PaymentReceived" SortExpression="PaymentReceived" />
            <asp:TemplateField HeaderStyle-Width="350">
                <ItemTemplate>
                    <asp:LinkButton ID="lkbPrintBill7" OnClick="lkbPrintBill0_Click" runat="server">Print Bill</asp:LinkButton> | 
                    <asp:LinkButton ID="lkbAcceptPayment7" OnClick="lkbAcceptpaymentforbill_Click" runat="server">Accept Payment</asp:LinkButton> |
                    <asp:LinkButton ID="lkbGenerateNewBillingStatementwithPenalty" OnClick="lkbGenerateNewBillingStatementwithPenalty_Click" runat="server" ForeColor="Red" Visible="False">Penalty</asp:LinkButton> |
                    <asp:LinkButton ID="lkbGenerateNewBillingStatement" OnClick="lkbGenerateNewBillingStatement_Click" runat="server">Generate New Billing Statement</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <HeaderStyle BackColor="#FF8E01" ForeColor="Black" />

<PagerSettings LastPageText="&#187;" NextPageText="&#187;"></PagerSettings>

        <PagerStyle CssClass="pagination-ys" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource30th" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT BillingID, AccountNumber, DateAdded, BillNumber, ServicePlandID, TotalAmountDue, RemainingBalanceFromPreviousBill, TotalCurrentBill, DueDate, InstallationBalance, PaymentReceived FROM Billing WHERE (Status = @Status) AND (DueDateIdentifier = @DueDateIdentifier) AND (DueDate = @DueDate)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList2" DefaultValue="For Payment" Name="Status" PropertyName="SelectedValue" Type="String" />
            <asp:Parameter DefaultValue="30" Name="DueDateIdentifier" Type="String" />
            <asp:ControlParameter ControlID="lbldatetoday" DefaultValue="" Name="DueDate" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource30thwithsearch" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT Billing.BillingID, Billing.AccountNumber, Billing.DateAdded, Billing.BillNumber, Billing.ServicePlandID, Billing.TotalAmountDue, Billing.RemainingBalanceFromPreviousBill, Billing.TotalCurrentBill, Billing.DueDate, Billing.InstallationBalance, Billing.PaymentReceived FROM Billing INNER JOIN Customer ON Billing.AccountNumber = Customer.AccountNumber WHERE (Billing.Status = @Status) AND (Billing.DueDateIdentifier = @DueDateIdentifier) AND (Customer.UnitNo = @UnitNo) AND (Customer.TowerID = @TowerID) AND (Billing.DueDate = @DueDate)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList2" DefaultValue="For Payment" Name="Status" PropertyName="SelectedValue" Type="String" />
            <asp:Parameter DefaultValue="30" Name="DueDateIdentifier" Type="String" />
            <asp:ControlParameter ControlID="txtunitnumber" DefaultValue="" Name="UnitNo" PropertyName="Text" />
            <asp:ControlParameter ControlID="ddltower" Name="TowerID" PropertyName="SelectedValue" DefaultValue="" />
            <asp:ControlParameter ControlID="lbldatetoday" DefaultValue="" Name="DueDate" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource28th" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT BillingID, AccountNumber, DateAdded, BillNumber, ServicePlandID, TotalAmountDue, RemainingBalanceFromPreviousBill, TotalCurrentBill, DueDate, InstallationBalance, PaymentReceived FROM Billing WHERE (Status = @Status) AND (DueDateIdentifier = @DueDateIdentifier) AND (DueDate = @DueDate)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList2" DefaultValue="For Payment" Name="Status" PropertyName="SelectedValue" Type="String" />
            <asp:Parameter DefaultValue="28" Name="DueDateIdentifier" Type="String" />
            <asp:ControlParameter ControlID="lbldatetoday" DefaultValue="" Name="DueDate" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource28thwithsearch" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT Billing.BillingID, Billing.AccountNumber, Billing.DateAdded, Billing.BillNumber, Billing.ServicePlandID, Billing.TotalAmountDue, Billing.RemainingBalanceFromPreviousBill, Billing.TotalCurrentBill, Billing.DueDate, Billing.InstallationBalance, Billing.PaymentReceived FROM Billing INNER JOIN Customer ON Billing.AccountNumber = Customer.AccountNumber WHERE (Billing.Status = @Status) AND (Billing.DueDateIdentifier = @DueDateIdentifier) AND (Customer.UnitNo = @UnitNo) AND (Customer.TowerID = @TowerID) AND (Billing.DueDate = @DueDate)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList2" DefaultValue="For Payment" Name="Status" PropertyName="SelectedValue" Type="String" />
            <asp:Parameter DefaultValue="28" Name="DueDateIdentifier" Type="String" />
            <asp:ControlParameter ControlID="txtunitnumber" DefaultValue="" Name="UnitNo" PropertyName="Text" />
            <asp:ControlParameter ControlID="ddltower" Name="TowerID" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="lbldatetoday" DefaultValue="" Name="DueDate" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource21st" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT BillingID, AccountNumber, BillNumber, ServicePlandID, TotalAmountDue, RemainingBalanceFromPreviousBill, TotalCurrentBill, DueDate, InstallationBalance, PaymentReceived FROM Billing WHERE (DueDateIdentifier = @DueDateIdentifier) AND (Status = @Status) AND (DueDate = @DueDate)">
        <SelectParameters>
            <asp:Parameter DefaultValue="21" Name="DueDateIdentifier" Type="String" />
            <asp:ControlParameter ControlID="DropDownList2" DefaultValue="For Payment" Name="Status" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="lbldatetoday" DefaultValue="" Name="DueDate" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource21stwithsearch" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT Billing.BillingID, Billing.AccountNumber, Billing.DateAdded, Billing.BillNumber, Billing.ServicePlandID, Billing.TotalAmountDue, Billing.RemainingBalanceFromPreviousBill, Billing.TotalCurrentBill, Billing.DueDate, Billing.BalanceFromPreviousBill, Billing.InstallationBalance, Billing.PaymentReceived FROM Billing INNER JOIN Customer ON Billing.AccountNumber = Customer.AccountNumber WHERE (Billing.DueDateIdentifier = @DueDateIdentifier) AND (Billing.Status = @Status) AND (Customer.UnitNo = @UnitNo) AND (Customer.TowerID = @TowerID) AND (Billing.DueDate = @DueDate)">
        <SelectParameters>
            <asp:Parameter DefaultValue="21" Name="DueDateIdentifier" Type="String" />
            <asp:ControlParameter ControlID="DropDownList2" DefaultValue="For Payment" Name="Status" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="txtunitnumber" DefaultValue="" Name="UnitNo" PropertyName="Text" />
            <asp:ControlParameter ControlID="ddltower" Name="TowerID" PropertyName="SelectedValue" DefaultValue="" />
            <asp:ControlParameter ControlID="lbldatetoday" DefaultValue="" Name="DueDate" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource14th" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT BillingID, AccountNumber, DateAdded, BillNumber, ServicePlandID, TotalAmountDue, RemainingBalanceFromPreviousBill, TotalCurrentBill, DueDate, InstallationBalance, PaymentReceived FROM Billing WHERE (DueDateIdentifier = @DueDateIdentifier) AND (Status = @Status) AND (DueDate = @DueDate)">
        <SelectParameters>
            <asp:Parameter DefaultValue="14" Name="DueDateIdentifier" Type="String" />
            <asp:ControlParameter ControlID="DropDownList2" DefaultValue="For Payment" Name="Status" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="lbldatetoday" DefaultValue="" Name="DueDate" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource14thwithsearch" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT Billing.BillingID, Billing.AccountNumber, Billing.DateAdded, Billing.BillNumber, Billing.ServicePlandID, Billing.TotalAmountDue, Billing.RemainingBalanceFromPreviousBill, Billing.TotalCurrentBill, Billing.DueDate, Billing.InstallationBalance, Billing.PaymentReceived FROM Billing INNER JOIN Customer ON Billing.AccountNumber = Customer.AccountNumber WHERE (Billing.DueDateIdentifier = @DueDateIdentifier) AND (Billing.Status = @Status) AND (Customer.UnitNo = @UnitNo) AND (Customer.TowerID = @TowerID) AND (Billing.DueDate = @DueDate)">
        <SelectParameters>
            <asp:Parameter DefaultValue="14" Name="DueDateIdentifier" Type="String" />
            <asp:ControlParameter ControlID="DropDownList2" DefaultValue="For Payment" Name="Status" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="txtunitnumber" DefaultValue="" Name="UnitNo" PropertyName="Text" />
            <asp:ControlParameter ControlID="ddltower" Name="TowerID" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="lbldatetoday" DefaultValue="" Name="DueDate" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource7th" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT BillingID, AccountNumber, DateAdded, BillNumber, ServicePlandID, DueDate, RemainingBalanceFromPreviousBill, TotalCurrentBill, TotalAmountDue, InstallationBalance, PaymentReceived FROM Billing WHERE (DueDateIdentifier = @DueDateIdentifier) AND (Status = @Status) AND (DueDate = @DueDate)">
        <SelectParameters>
            <asp:Parameter DefaultValue="7" Name="DueDateIdentifier" Type="String" />
            <asp:ControlParameter ControlID="DropDownList2" DefaultValue="For Payment" Name="Status" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="lbldatetoday" DefaultValue="" Name="DueDate" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource7thwithsearch" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT Billing.BillingID, Billing.AccountNumber, Billing.DateAdded, Billing.BillNumber, Billing.ServicePlandID, Billing.TotalAmountDue, Billing.DueDate, Billing.RemainingBalanceFromPreviousBill, Billing.TotalCurrentBill, Billing.InstallationBalance, Billing.PaymentReceived FROM Billing INNER JOIN Customer ON Billing.AccountNumber = Customer.AccountNumber WHERE (Billing.DueDateIdentifier = @DueDateIdentifier) AND (Billing.Status = @Status) AND (Customer.UnitNo = @UnitNo) AND (Customer.TowerID = @TowerID) AND (Billing.DueDate = @DueDate)">
        <SelectParameters>
            <asp:Parameter DefaultValue="7" Name="DueDateIdentifier" Type="String" />
            <asp:ControlParameter ControlID="DropDownList2" DefaultValue="For Payment" Name="Status" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="txtunitnumber" Name="UnitNo" PropertyName="Text" />
            <asp:ControlParameter ControlID="ddltower" DefaultValue="" Name="TowerID" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="lbldatetoday" DefaultValue="" Name="DueDate" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourceForPaymentwithSearch" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT Billing.BillingID, Billing.AccountNumber, Billing.DateAdded, Billing.BillNumber, Billing.ServicePlandID, Billing.TotalAmountDue, Billing.DueDate, Billing.RemainingBalanceFromPreviousBill, Billing.TotalCurrentBill FROM Billing INNER JOIN Customer ON Billing.AccountNumber = Customer.AccountNumber WHERE Billing.BillNumber=@BillNumber  AND (Billing.Status = @Status) AND Customer.UnitNo=@UnitNo AND TowerID=@TowerID">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="BillNumber" />
            <asp:Parameter DefaultValue="For Payment" Name="Status" />
            <asp:ControlParameter ControlID="txtunitnumber" Name="UnitNo" PropertyName="Text" />
            <asp:ControlParameter ControlID="ddltower" DefaultValue="" Name="TowerID" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GVPastDue" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" DataKeyNames="BillingID" DataSourceID="SqlDataSource2" EmptyDataText="No past due payment." AllowPaging="True" AllowSorting="True" PagerSettings-NextPageText="&raquo;" PagerSettings-LastPageText="&raquo;" Visible="False">
        <Columns>
            <asp:BoundField DataField="BillingID" HeaderText="BillingID" ReadOnly="True" SortExpression="BillingID" />
            <asp:BoundField DataField="AccountNumber" HeaderText="AccountNumber" SortExpression="AccountNumber" />
            <asp:BoundField DataField="DateAdded" HeaderText="DateAdded" SortExpression="DateAdded" />
            <asp:BoundField DataField="BillNumber" HeaderText="BillNumber" SortExpression="BillNumber" />
            <asp:BoundField DataField="ServicePlandID" HeaderText="ServicePlandID" SortExpression="ServicePlandID" />
            <asp:BoundField DataField="TotalCurrentBill" HeaderText="TotalCurrentBill" SortExpression="TotalCurrentBill" />
            <asp:BoundField DataField="DueDate" HeaderText="Payment Date" SortExpression="DueDate" />
        </Columns>
        <PagerStyle CssClass="pagination-ys" />
        <HeaderStyle BackColor="#99CCFF" ForeColor="Black" />

<PagerSettings LastPageText="&#187;" NextPageText="&#187;"></PagerSettings>

        <PagerStyle CssClass="pagination-ys" />
    </asp:GridView>
                <asp:TextBox ID="txtDate" runat="server" CssClass="form form-control" Enabled="False" Visible="False"></asp:TextBox>
                <asp:TextBox ID="txtsearch" placeholder="Account Number..." runat="server" CssClass="form form-control" AutoPostBack="True" Visible="False"></asp:TextBox>
    <table style="width: 100%">
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Date Today : "></asp:Label>
                <asp:Label ID="lblMonth" runat="server"></asp:Label>
                /
                <asp:Label ID="lblDate" runat="server"></asp:Label>
                /
                <asp:Label ID="lblYear" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT BillingID, AccountNumber, DateAdded, BillNumber, ServicePlandID, TotalCurrentBill, DueDate FROM Billing WHERE (Status = @Status) AND (DueDate = @DueDate) ORDER BY DueDate DESC">
        <SelectParameters>
            <asp:Parameter DefaultValue="For Activation" Name="Status" Type="String" />
            <asp:ControlParameter ControlID="txtDate" DefaultValue="" Name="DueDate" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT BillingID, AccountNumber, DateAdded, BillNumber, ServicePlandID, TotalCurrentBill, DueDate, PaymentReceived FROM Billing WHERE (Status = @Status) AND (BillNumber = @BillNumber)">
        <SelectParameters>
            <asp:Parameter DefaultValue="For Payment" Name="Status" Type="String" />
            <asp:Parameter DefaultValue="1" Name="BillNumber" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT [TowerID] FROM [Tower]"></asp:SqlDataSource>

    <!--start of payment modal-->
    <div id="Payment" class="modal fade bs-example-modal-sm" role="dialog">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">Payment<button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                     <table class="nav-justified">
        <tr>
            <td class="datepicker-inline" style="width: 198px">Billing ID :</td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px; height: 30px;">
                <asp:Label ID="lblbillid" runat="server" CssClass="label label-success" Font-Size="Small"></asp:Label>
                
            </td>
        </tr>
                          <tr>
            <td class="datepicker-inline" style="width: 198px">&nbsp;</td>
        </tr>
                          <tr>
            <td class="datepicker-inline" style="width: 198px">Account Number :</td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px; height: 30px;">
                <asp:Label ID="lblAccountNumber" runat="server" CssClass="label label-info" Font-Size="Small"></asp:Label>
                
            </td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px; height: 16px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px">Installation Fee :</td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px; height: 16px;">
                <asp:Label ID="lblinstallationfee" runat="server"  Font-Size="Small"></asp:Label>
                
            </td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px">Total Current Bill :</td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px; height: 16px;">
                <asp:Label ID="lblcurrentbill" runat="server"  Font-Size="Small"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px">Total Amount Due :</td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px; height: 16px;">
                <asp:Label ID="lbltotalamountdue" runat="server"  Font-Size="Medium" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px; height: 16px;"></td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px">Cash :</td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px; height: 16px;">
                <asp:TextBox ID="txtcash" placeholder="0.00" runat="server" CssClass="form form-control"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px"><br />
                <asp:Button ID="Button1" CssClass="btn btn-info" runat="server" OnClick="btnPay_Click" Text="Pay" />
                <asp:Button ID="Button2" CssClass="btn btn-default" runat="server" OnClick="btnCancel_Click" Text="Cancel" />
            </td>
        </tr>             
    </table>
                </div>
            </div>
        </div>
    </div>
    <!-- end of payment Modal -->

    <!--start of another payment modal-->
    <div id="AnotherPayment" class="modal fade bs-example-modal-sm" role="dialog">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">Payment<button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                     <table class="nav-justified">
        <tr>
            <td class="datepicker-inline" style="width: 198px">Billing ID :</td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px; height: 30px;">
                <asp:Label ID="lblbillingidanotherpayment" runat="server" CssClass="label label-success" Font-Size="Small"></asp:Label>
                
            </td>
        </tr>
                          <tr>
            <td class="datepicker-inline" style="width: 198px">&nbsp;</td>
        </tr>
                          <tr>
            <td class="datepicker-inline" style="width: 198px">Account Number :</td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px; height: 30px;">
                <asp:Label ID="lblaccountnumberanotherpayment" runat="server" CssClass="label label-info" Font-Size="Small"></asp:Label>
                
            </td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px; height: 16px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px">Penalty(2%) From Previous Balance :</td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px; height: 16px;">
                <asp:Label ID="lblpenaltyfrompreviousbalance" runat="server"  Font-Size="Small"></asp:Label>
                
            </td>
        </tr>
       <tr>
            <td class="datepicker-inline" style="width: 198px">Installation Fee Balance :</td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px; height: 16px;">
                <asp:Label ID="lblinstallationfeebalance" runat="server"  Font-Size="Small"></asp:Label>
                
            </td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px">Remaining Balance From Previous Bill :</td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px; height: 16px;">
                <asp:Label ID="lblremainingbalanceanotherpayment" runat="server"  Font-Size="Small"></asp:Label>
                
            </td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px">Total Current Bill :</td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px; height: 16px;">
                <asp:Label ID="lbltotalcurrentbillanotherpayment" runat="server"  Font-Size="Small"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px">Total Amount Due :</td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px; height: 16px;">
                <asp:Label ID="lbltotalamountdueanotherpayment" runat="server"  Font-Size="Medium" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px; height: 16px;"></td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px">Cash :</td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px; height: 16px;">
                <asp:TextBox ID="txtcashanotherpayment" placeholder="0.00" runat="server" CssClass="form form-control"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px"><br />
                <asp:Button ID="btnpayanotherpayment" CssClass="btn btn-info" runat="server" OnClick="btnpayanotherpayment_Click" Text="Pay" />
                <asp:Button ID="Button4" CssClass="btn btn-default" runat="server" OnClick="btnCancel_Click" Text="Cancel" />
            </td>
        </tr>             
    </table>
                </div>
            </div>
        </div>
    </div>
    <!-- end of another payment Modal -->

    <!--start of ServiceCharge modal-->
    <div id="ServiceCharge" class="modal fade bs-example-modal-sm" role="dialog">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">Payment<button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                     <table class="nav-justified">
        <tr>
            <td class="datepicker-inline" style="width: 198px">Billing ID :</td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px; height: 30px;">
                <asp:Label ID="lblservicechargebillid" runat="server" CssClass="label label-success" Font-Size="Small"></asp:Label>
                
            </td>
        </tr>
                          <tr>
            <td class="datepicker-inline" style="width: 198px">&nbsp;</td>
        </tr>
                          <tr>
            <td class="datepicker-inline" style="width: 198px">Account Number :</td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px; height: 30px;">
                <asp:Label ID="lblservicechargeaccountnumber" runat="server" CssClass="label label-info" Font-Size="Small"></asp:Label>
                
            </td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px; height: 16px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px">Remaining Balance From Previous Bill :</td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px; height: 16px;">
                <asp:Label ID="lblservicechargebalance" runat="server"  Font-Size="Small"></asp:Label>
                
            </td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px">Total Current Bill :</td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px; height: 16px;">
                <asp:Label ID="Label5" runat="server"  Font-Size="Small"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px">Total Amount Due :</td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px; height: 16px;">
                <asp:Label ID="lblservicechargetotaldue" runat="server"  Font-Size="Medium" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px; height: 16px;"></td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px">Cash :</td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px; height: 16px;">
                </td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px"><br />
                <asp:Button ID="btnservicecharge" CssClass="btn btn-info" runat="server" OnClick="btnservicecharge_Click" Text="Penalty" />
                <asp:Button ID="Button5" CssClass="btn btn-default" runat="server" OnClick="btnCancel_Click" Text="Cancel" />
            </td>
        </tr>             
    </table>
                </div>
            </div>
        </div>
    </div>
    <!-- end of ServiceCharge Modal -->

    <!--start of error Modal-->
    <div id="YouCantaddbillyet" class="modal fade bs-example-modal-lg" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content"><div class="modal-header">Alert<button type="button" class="close" data-dismiss="modal">&times;</button>
                <div class="modal-body">
                    <div class="alert alert-danger" role="alert">You can't add bill yet onwards.</div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <!--end of error modal-->

    <!--start of error Modal-->
    <div id="CustomerIsForDisconnection" class="modal fade bs-example-modal-lg" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content"><div class="modal-header">Alert<button type="button" class="close" data-dismiss="modal">&times;</button>
                <div class="modal-body">
                    <div class="alert alert-danger" role="alert">This Customer is already For Disconnection.<br />
                    Account Number : <b><asp:Label ID="lblAccountNumberForDisconnection" runat="server" Text=""></asp:Label></b>. Click Submit to Confirm For Disconnection.</div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <asp:Button ID="btnSubmitForDisconnection" CssClass="btn btn-primary" runat="server" OnClick="btnSubmitForDisconnection_Click" Text="Submit" />
                </div>
            </div>
        </div>
    </div>
    </div>
    <!--end of error modal-->

    <!--start of error insufficient Modal-->
    <div id="InsufficientAmountofMoneyPaid" class="modal fade bs-example-modal-lg" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content"><div class="modal-header">Alert<button type="button" class="close" data-dismiss="modal">&times;</button>
                <div class="modal-body">
                    <div class="alert alert-danger" role="alert">Insufficient Amount of Money Paid. Must be equal or greater than the total current bill.</div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <!--end of error modal-->
    
    <!--start of Confirmation for new generation of bill Modal-->
    <div id="GenerateConfirmation" class="modal fade bs-example-modal-lg" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content"><div class="modal-header"><button type="button" class="close" data-dismiss="modal">&times;</button>
                <div class="modal-body">
                    Previous Billing Statement ID : <asp:Label ID="lblpreviousbillingstatementid" runat="server" Text="Label"></asp:Label>
                    <div class="alert alert-info" role="alert">This will generate a new billing statement to Account Number : <b><asp:Label ID="lblaccountnumbergenerateconfirmation" runat="server" Text=""></asp:Label></b>. Click Submit to Confirm.</div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <asp:Button ID="btnSubmitGenerate" CssClass="btn btn-primary" runat="server" OnClick="btnSubmitGenerate_Click" Text="Submit" />
                </div>
            </div>
        </div>
    </div>
        </div>
     <!--start of Confirmation for new generation of bill Modal-->

    <!--start of Confirmation for new generation with penalty of bill Modal-->
    <div id="GenerateConfirmationWithPenalty" class="modal fade bs-example-modal-lg" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content"><div class="modal-header"><button type="button" class="close" data-dismiss="modal">&times;</button>
                <div class="modal-body">
                    Previous Billing Statement ID : <asp:Label ID="lblbillidwithpenalty" runat="server" Text="Label"></asp:Label>
                    <div class="alert alert-warning" role="alert">This will generate a new billing statment to Account Number : <b><asp:Label ID="lblaccountnumberwithpenalty" runat="server" Text=""></asp:Label></b>.Due Date : <b><asp:Label ID="lblduedatepenalty" runat="server" Text=""></asp:Label></b>. Click Submit to Confirm.</div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <asp:Button ID="btnSubmitPenalty" CssClass="btn btn-primary" runat="server" Text="Submit" OnClick="btnSubmitPenalty_Click" />
                </div>
            </div>
        </div>
    </div>
        </div>
     <!--start of Confirmation for new generation with penalrty of bill Modal-->
    
</asp:Content>