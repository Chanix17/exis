<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Tech.Master" CodeBehind="ViewAllJobOrders.aspx.cs" Inherits="Exis.View.Tech.ViewAllJobOrders" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">

    <table style="width: 100%">
        <tr>
            <td style="width: 177px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 177px">
                <asp:TextBox ID="txtDate" placeholder="Month/Date/Year" runat="server" CssClass="form form-control"></asp:TextBox>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                    <asp:ListItem>Show All</asp:ListItem>
                    <asp:ListItem>For Activation</asp:ListItem>
                    <asp:ListItem>For Repair</asp:ListItem>
                    <asp:ListItem>For Disconnection</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 177px">
                <asp:Button ID="btnsetDate" runat="server" CssClass="btn btn-default" OnClick="btnsetDate_Click" Text="Set Date" />
            </td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 177px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-striped" DataKeyNames="JobId" DataSourceID="SqlDataSource2" EmptyDataText="Select Specific Date..." AllowPaging="True" AllowSorting="True" OnRowDataBound="GridView2_RowDataBound">
        <Columns>
            <asp:BoundField DataField="JobId" HeaderText="JobId" ReadOnly="True" SortExpression="JobId" />
            <asp:BoundField DataField="JobType" HeaderText="JobType" SortExpression="JobType" />
            <asp:BoundField DataField="AccountNumber" HeaderText="AccountNumber" SortExpression="AccountNumber" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="InstallationNotes" HeaderText="InstallationNotes" SortExpression="InstallationNotes" />
            <asp:BoundField DataField="Remarks" HeaderText="Remarks" SortExpression="Remarks" />
            <asp:BoundField DataField="Technician" HeaderText="Technician" SortExpression="Technician" />
            <asp:BoundField DataField="DateCreated" HeaderText="DateCreated" SortExpression="DateCreated" />
            <asp:BoundField DataField="DateScheduled" HeaderText="DateScheduled" SortExpression="DateScheduled" />
            <asp:BoundField DataField="TimeScheduled" HeaderText="TimeScheduled" SortExpression="TimeScheduled" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
        </Columns>
        <PagerStyle CssClass="pagination-ys" />
        <HeaderStyle BackColor="#FF8E01" ForeColor="Black" />
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT [JobId], [JobType], [AccountNumber], [Description], [InstallationNotes], [Remarks], [Technician], [DateCreated], [DateScheduled], [TimeScheduled], [Status] FROM [JobOrder]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-striped" DataKeyNames="JobId" DataSourceID="SqlDataSource1" EmptyDataText="Select Specific Date..." AllowPaging="True" AllowSorting="True" Visible="False" OnRowDataBound="GridView1_RowDataBound">
        <Columns>
            <asp:BoundField DataField="JobId" HeaderText="JobId" ReadOnly="True" SortExpression="JobId" />
            <asp:BoundField DataField="JobType" HeaderText="JobType" SortExpression="JobType" />
            <asp:BoundField DataField="AccountNumber" HeaderText="AccountNumber" SortExpression="AccountNumber" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="InstallationNotes" HeaderText="InstallationNotes" SortExpression="InstallationNotes" />
            <asp:BoundField DataField="Remarks" HeaderText="Remarks" SortExpression="Remarks" />
            <asp:BoundField DataField="Technician" HeaderText="Technician" SortExpression="Technician" />
            <asp:BoundField DataField="DateCreated" HeaderText="DateCreated" SortExpression="DateCreated" />
            <asp:BoundField DataField="DateScheduled" HeaderText="DateScheduled" SortExpression="DateScheduled" />
            <asp:BoundField DataField="TimeScheduled" HeaderText="TimeScheduled" SortExpression="TimeScheduled" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
        </Columns>
        <PagerStyle CssClass="pagination-ys" />
        <HeaderStyle BackColor="#FF8E01" ForeColor="Black" />
</asp:GridView>
    <asp:GridView ID="GVForActivation" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-striped" DataKeyNames="JobId" DataSourceID="SqlDataSource3" EmptyDataText="Select Specific Date..." AllowPaging="True" AllowSorting="True" Visible="False" OnRowDataBound="GridView1_RowDataBound">
        <Columns>
            <asp:BoundField DataField="JobId" HeaderText="JobId" ReadOnly="True" SortExpression="JobId" />
            <asp:BoundField DataField="JobType" HeaderText="JobType" SortExpression="JobType" />
            <asp:BoundField DataField="AccountNumber" HeaderText="AccountNumber" SortExpression="AccountNumber" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="InstallationNotes" HeaderText="InstallationNotes" SortExpression="InstallationNotes" />
            <asp:BoundField DataField="Remarks" HeaderText="Remarks" SortExpression="Remarks" />
            <asp:BoundField DataField="Technician" HeaderText="Technician" SortExpression="Technician" />
            <asp:BoundField DataField="DateCreated" HeaderText="DateCreated" SortExpression="DateCreated" />
            <asp:BoundField DataField="DateScheduled" HeaderText="DateScheduled" SortExpression="DateScheduled" />
            <asp:BoundField DataField="TimeScheduled" HeaderText="TimeScheduled" SortExpression="TimeScheduled" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
        </Columns>
        <PagerStyle CssClass="pagination-ys" />
        <HeaderStyle BackColor="#FF8E01" ForeColor="Black" />
</asp:GridView>
    <asp:GridView ID="GVForRepair" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-striped" DataKeyNames="JobId" DataSourceID="SqlDataSource4" EmptyDataText="Select Specific Date..." AllowPaging="True" AllowSorting="True" Visible="False" OnRowDataBound="GridView1_RowDataBound">
        <Columns>
            <asp:BoundField DataField="JobId" HeaderText="JobId" ReadOnly="True" SortExpression="JobId" />
            <asp:BoundField DataField="JobType" HeaderText="JobType" SortExpression="JobType" />
            <asp:BoundField DataField="AccountNumber" HeaderText="AccountNumber" SortExpression="AccountNumber" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Remarks" HeaderText="Remarks" SortExpression="Remarks" />
            <asp:BoundField DataField="Technician" HeaderText="Technician" SortExpression="Technician" />
            <asp:BoundField DataField="DateCreated" HeaderText="DateCreated" SortExpression="DateCreated" />
            <asp:BoundField DataField="DateScheduled" HeaderText="DateScheduled" SortExpression="DateScheduled" />
            <asp:BoundField DataField="TimeScheduled" HeaderText="TimeScheduled" SortExpression="TimeScheduled" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
        </Columns>
        <PagerStyle CssClass="pagination-ys" />
        <HeaderStyle BackColor="#FF8E01" ForeColor="Black" />
</asp:GridView>
    <asp:GridView ID="GVForDisconnection" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-striped" DataKeyNames="JobId" DataSourceID="SqlDataSource5" EmptyDataText="Select Specific Date..." AllowPaging="True" AllowSorting="True" Visible="False" OnRowDataBound="GridView1_RowDataBound">
        <Columns>
            <asp:BoundField DataField="JobId" HeaderText="JobId" ReadOnly="True" SortExpression="JobId" />
            <asp:BoundField DataField="JobType" HeaderText="JobType" SortExpression="JobType" />
            <asp:BoundField DataField="AccountNumber" HeaderText="AccountNumber" SortExpression="AccountNumber" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Remarks" HeaderText="Remarks" SortExpression="Remarks" />
            <asp:BoundField DataField="Technician" HeaderText="Technician" SortExpression="Technician" />
            <asp:BoundField DataField="DateCreated" HeaderText="DateCreated" SortExpression="DateCreated" />
            <asp:BoundField DataField="DateScheduled" HeaderText="DateScheduled" SortExpression="DateScheduled" />
            <asp:BoundField DataField="TimeScheduled" HeaderText="TimeScheduled" SortExpression="TimeScheduled" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
        </Columns>
        <PagerStyle CssClass="pagination-ys" />
        <HeaderStyle BackColor="#FF8E01" ForeColor="Black" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT JobId, JobType, AccountNumber, Description, InstallationNotes, Remarks, Technician, DateCreated, DateScheduled, TimeScheduled, Status FROM JobOrder WHERE (DateScheduled = @DateScheduled)">
    <SelectParameters>
        <asp:ControlParameter ControlID="txtDate" Name="DateScheduled" PropertyName="Text" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT JobId, JobType, AccountNumber, Description, InstallationNotes, Remarks, Technician, DateCreated, DateScheduled, TimeScheduled, Status FROM JobOrder WHERE (DateScheduled = @DateScheduled) AND JobType=@JobType">
    <SelectParameters>
        <asp:ControlParameter ControlID="txtDate" Name="DateScheduled" PropertyName="Text" Type="String" />
        <asp:Parameter DefaultValue="For Activation" Name="JobType" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT JobId, JobType, AccountNumber, Description, InstallationNotes, Remarks, Technician, DateCreated, DateScheduled, TimeScheduled, Status FROM JobOrder WHERE (DateScheduled = @DateScheduled) AND JobType=@JobType">
    <SelectParameters>
        <asp:ControlParameter ControlID="txtDate" Name="DateScheduled" PropertyName="Text" Type="String" />
        <asp:Parameter DefaultValue="For Repair" Name="JobType" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT JobId, JobType, AccountNumber, Description, InstallationNotes, Remarks, Technician, DateCreated, DateScheduled, TimeScheduled, Status FROM JobOrder WHERE (DateScheduled = @DateScheduled) AND JobType=@JobType">
    <SelectParameters>
        <asp:ControlParameter ControlID="txtDate" Name="DateScheduled" PropertyName="Text" Type="String" />
        <asp:Parameter DefaultValue="For Disconnection" Name="JobType" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>