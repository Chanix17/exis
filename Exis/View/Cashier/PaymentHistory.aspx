<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/CSR.Master" CodeBehind="PaymentHistory.aspx.cs" Inherits="Exis.View.Cashier.PaymentHistory" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">

    <table style="width: 100%">
        <tr>
            <td style="height: 41px">
                <asp:Label ID="lbltower" runat="server" Text="Tower "></asp:Label>
                <asp:DropDownList ID="ddltower" runat="server" DataSourceID="SqlDataSource3" DataTextField="TowerID" DataValueField="TowerID" AutoPostBack="True">
                </asp:DropDownList>
                <asp:Label ID="lblunitnumber" runat="server" Text="Unit Number"></asp:Label>
                <asp:TextBox ID="txtunitnumber" runat="server" MaxLength="4" OnTextChanged="txtunitnumber_TextChanged" AutoPostBack="True"></asp:TextBox>
            </td>
            <td style="height: 41px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <asp:GridView ID="GVPaymentHistory" CssClass="table table-bordered table-striped" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="Search by Account Number">
        <Columns>
            <asp:BoundField DataField="AccountNumber" HeaderText="AccountNumber" SortExpression="AccountNumber" />
            <asp:BoundField DataField="BillNumber" HeaderText="BillNumber" SortExpression="BillNumber" />
            <asp:BoundField DataField="PaymentReceived" HeaderText="PaymentReceived" SortExpression="PaymentReceived" />
            <asp:BoundField DataField="ServicePlandID" HeaderText="ServicePlandID" SortExpression="ServicePlandID" />
            <asp:BoundField DataField="TotalCurrentBill" HeaderText="TotalCurrentBill" SortExpression="TotalCurrentBill" />
            <asp:BoundField DataField="TotalAmountDue" HeaderText="TotalAmountDue" SortExpression="TotalAmountDue" />
            <asp:BoundField DataField="DueDate" HeaderText="DueDate" SortExpression="DueDate" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
        </Columns>
        <HeaderStyle BackColor="#FF8E01" ForeColor="Black" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT Billing.AccountNumber, Billing.BillNumber, Billing.PaymentReceived, Billing.ServicePlandID, Billing.TotalCurrentBill, Billing.TotalAmountDue, Billing.DueDate, Billing.Status FROM Billing INNER JOIN Customer ON Billing.AccountNumber = Customer.AccountNumber WHERE (Customer.UnitNo = @Unitno) AND (Customer.TowerID = @TowerID) ORDER BY Billing.DueDate DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtunitnumber" Name="Unitno" PropertyName="Text" />
            <asp:ControlParameter ControlID="ddltower" Name="TowerID" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT [TowerID] FROM [Tower]"></asp:SqlDataSource>

    </asp:Content>