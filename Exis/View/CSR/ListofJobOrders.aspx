<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/CSR.Master" CodeBehind="ListofJobOrders.aspx.cs" Inherits="Exis.View.CSR.ListofJobOrders" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 16px">
              <div class="btn-group" role="group" aria-label="...">
                  <asp:Button ID="btnPending" CssClass="btn btn-danger" runat="server" Text="Pending" OnClick="btnPending_Click" />
                  <asp:Button ID="btnActive" CssClass="btn btn-primary" runat="server" OnClick="btnActive_Click" Text="Active" />
                 <%-- <asp:Button ID="btnDone" CssClass="btn btn-default" runat="server" OnClick="btnDone_Click" Text="Done" />--%>
              </div>
            </td>
            <td style="height: 16px"></td>
        </tr>
    </table>

    <br />

    <asp:GridView ID="GVPending" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CssClass="table table-bordered" DataSourceID="SqlDataSource1" Visible="False">
    <Columns>
        <asp:BoundField DataField="JobId" HeaderText="Job Id" SortExpression="JobId" />
        <asp:BoundField DataField="JobType" HeaderText="Job Type" SortExpression="JobType" />
        <asp:BoundField DataField="AccountNumber" HeaderText="Account Number" SortExpression="AccountNumber" />
        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
        <asp:BoundField DataField="InstallationNotes" HeaderText="Installation Notes" SortExpression="InstallationNotes" />
        <asp:BoundField DataField="Technician" HeaderText="Technician" SortExpression="Technician" />
        <asp:BoundField DataField="DateCreated" HeaderText="DateCreated" SortExpression="DateCreated" />
        <asp:BoundField DataField="DateScheduled" HeaderText="DateScheduled" SortExpression="DateScheduled" />
        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
    </Columns>
</asp:GridView>
    <asp:GridView ID="GVActive" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CssClass="table table-bordered" DataSourceID="SqlDataSource2" Visible="False">
    <Columns>
        <asp:BoundField DataField="JobId" HeaderText="Job Id" SortExpression="JobId" />
        <asp:BoundField DataField="JobType" HeaderText="Job Type" SortExpression="JobType" />
        <asp:BoundField DataField="AccountNumber" HeaderText="Account Number" SortExpression="AccountNumber" />
        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
        <asp:BoundField DataField="InstallationNotes" HeaderText="Installation Notes" SortExpression="InstallationNotes" />
        <asp:BoundField DataField="Technician" HeaderText="Technician" SortExpression="Technician" />
        <asp:BoundField DataField="DateCreated" HeaderText="DateCreated" SortExpression="DateCreated" />
        <asp:BoundField DataField="DateScheduled" HeaderText="DateScheduled" SortExpression="DateScheduled" />
        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
    </Columns>
</asp:GridView>
    <asp:GridView ID="GVDone" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CssClass="table table-bordered" DataSourceID="SqlDataSource3" Visible="False">
    <Columns>
        <asp:BoundField DataField="JobId" HeaderText="Job Id" SortExpression="JobId" />
        <asp:BoundField DataField="JobType" HeaderText="Job Type" SortExpression="JobType" />
        <asp:BoundField DataField="AccountNumber" HeaderText="Account Number" SortExpression="AccountNumber" />
        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
        <asp:BoundField DataField="InstallationNotes" HeaderText="Installation Notes" SortExpression="InstallationNotes" />
        <asp:BoundField DataField="Technician" HeaderText="Technician" SortExpression="Technician" />
        <asp:BoundField DataField="DateCreated" HeaderText="DateCreated" SortExpression="DateCreated" />
        <asp:BoundField DataField="DateScheduled" HeaderText="DateScheduled" SortExpression="DateScheduled" />
        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT JobId, JobType, AccountNumber, Description, InstallationNotes, Technician, DateCreated, DateScheduled, Status FROM JobOrder WHERE (Status = @Status)">
    <SelectParameters>
        <asp:Parameter DefaultValue="Pending" Name="Status" Type="String" />
    </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT JobId, JobType, AccountNumber, Description, InstallationNotes, Technician, DateCreated, DateScheduled, Status FROM JobOrder WHERE (Status = @Status)">
    <SelectParameters>
        <asp:Parameter DefaultValue="Active" Name="Status" Type="String" />
    </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT JobId, JobType, AccountNumber, Description, InstallationNotes, Technician, DateCreated, DateScheduled, Status FROM JobOrder WHERE (Status = @Status)">
    <SelectParameters>
        <asp:Parameter DefaultValue="Done" Name="Status" Type="String" />
    </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>