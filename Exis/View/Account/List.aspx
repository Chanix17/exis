<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Administrator.Master" CodeBehind="List.aspx.cs" Inherits="Exis.View.Account.List" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CssClass="table table-bordered" DataKeyNames="UserID" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="True" SortExpression="UserID" />
        <asp:BoundField DataField="Firstname" HeaderText="Firstname" SortExpression="Firstname" />
        <asp:BoundField DataField="Middlename" HeaderText="Middlename" SortExpression="Middlename" />
        <asp:BoundField DataField="Lastname" HeaderText="Lastname" SortExpression="Lastname" />
        <asp:BoundField DataField="UserType" HeaderText="UserType" SortExpression="UserType" />
        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
        <asp:TemplateField HeaderStyle-Width="325">
                <ItemTemplate>
                    <asp:LinkButton ID="lkbResetPassword" OnClick="lkbResetPassword_Click" runat="server" OnClientClick="return confirm('Reset Password selected user?');">Reset Password</asp:LinkButton> |
                    <asp:LinkButton ID="lkbChangeUserType" runat="server" OnClick="lkbChangeUserType_Click">Change User Type</asp:LinkButton> | 
                    <asp:LinkButton ID="lkbSetInActive" OnClick="lkbSetInActive_Click" runat="server" OnClientClick="return confirm('Set an Inactive selected user?');">Set As Inactive</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
    </Columns>
        <HeaderStyle BackColor="#FF8E01" ForeColor="Black" />
        <PagerStyle CssClass="pagination-ys" />
</asp:GridView>
    <table style="width: 100%">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

     <!--start of Update Modal-->
    <div id="UpdateUserType" class="modal fade bs-example-modal-sm" role="dialog">
        <div class="modal-dialog modal-sm">
            <div class="modal-content"><div class="modal-header">Change User Type<button type="button" class="close" data-dismiss="modal">&times;</button>
                <div class="modal-body">
                    <asp:Label ID="lbl1" runat="server" Text="User ID : "></asp:Label>
                    <br />
                    <asp:Label ID="lbluserid" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:DropDownList CssClass="form form-control" ID="ddlusertype" runat="server">
                        <asp:ListItem>Administrator</asp:ListItem>
                        <asp:ListItem>CSR</asp:ListItem>
                        <asp:ListItem>Cashier</asp:ListItem>
                        <asp:ListItem>Technical</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:Button ID="btnSubmitUserTypeChange" OnClick="btnSubmitUserTypeChange_Click" runat="server" CssClass="btn btn-primary" Text="Submit" />
                </div>
            </div>
        </div>
    </div>
    </div>
    <!--start of errorexits Modal-->

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [UserID], [Firstname], [Middlename], [Lastname], [UserType], [Status] FROM [User] WHERE ([Status] = @Status)">
    <SelectParameters>
        <asp:Parameter DefaultValue="Active" Name="Status" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>