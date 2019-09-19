<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Administrator.Master" CodeBehind="Tower.aspx.cs" Inherits="Exis.View.Administrator.Tower" %>


<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CssClass="table table-bordered" DataSourceID="SqlDataSource1" DataKeyNames="TowerID">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="TowerID" HeaderText="TowerID" ReadOnly="True" SortExpression="TowerID" />
            <asp:BoundField DataField="TowerName" HeaderText="TowerName" SortExpression="TowerName" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
        </Columns>
        <HeaderStyle BackColor="#FF8E01" ForeColor="Black" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT [TowerID], [TowerName], [Status] FROM [Tower] WHERE ([Status] = @Status)" DeleteCommand="DELETE FROM [Tower] WHERE [TowerID] = @TowerID" InsertCommand="INSERT INTO [Tower] ([TowerID], [TowerName], [Status]) VALUES (@TowerID, @TowerName, @Status)" UpdateCommand="UPDATE [Tower] SET [TowerName] = @TowerName, [Status] = @Status WHERE [TowerID] = @TowerID">
        <DeleteParameters>
            <asp:Parameter Name="TowerID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TowerID" Type="Int32" />
            <asp:Parameter Name="TowerName" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="Active" Name="Status" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="TowerName" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="TowerID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>