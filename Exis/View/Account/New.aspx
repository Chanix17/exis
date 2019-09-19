<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Administrator.Master" CodeBehind="New.aspx.cs" Inherits="Exis.View.Account.New" %>


<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="width: 147px">
                <asp:Label ID="Label3" runat="server" Text="User ID"></asp:Label>
            </td>
            <td style="width: 406px">
                <asp:Label ID="lblUserID" runat="server" CssClass="label label-primary" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 147px; height: 66px;">
                <asp:Label ID="Label5" runat="server" Text="First Name"></asp:Label>
            </td>
            <td style="height: 66px; width: 406px">
                <asp:TextBox ID="txtfname" CssClass="form form-control" runat="server"></asp:TextBox>
            </td>
            <td style="height: 66px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 66px; width: 147px">
                <asp:Label ID="Label6" runat="server" Text="Middle Name"></asp:Label>
            </td>
            <td style="height: 66px; width: 406px;">
                <asp:TextBox ID="txtmname" CssClass="form form-control" runat="server"></asp:TextBox>
            </td>
            <td style="height: 66px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 66px; width: 147px">
                <asp:Label ID="Label7" runat="server" Text="Last Name"></asp:Label>
            </td>
            <td style="height: 66px; width: 406px;">
                <asp:TextBox ID="txtlname" CssClass="form form-control" runat="server"></asp:TextBox>
            </td>
            <td style="height: 66px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 66px; width: 147px">
                <asp:Label ID="Label8" runat="server" Text="User Type"></asp:Label>
            </td>
            <td style="height: 66px; width: 406px;">
                <asp:DropDownList ID="ddlUserType" runat="server" CssClass="form form-control">
                    <asp:ListItem>Administrator</asp:ListItem>
                    <asp:ListItem>CSR</asp:ListItem>
                    <asp:ListItem>Cashier</asp:ListItem>
                    <asp:ListItem>Technical</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="height: 66px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 16px; width: 147px">&nbsp;</td>
            <td style="height: 16px; width: 406px;"></td>
            <td style="height: 16px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 147px">&nbsp;</td>
            <td style="width: 406px">
                <asp:Button ID="btnRegister" runat="server" CssClass="btn btn-info" OnClick="btnRegister_Click" Text="Register" />
                <asp:Button ID="btncancel" runat="server" CssClass="btn btn-default" PostBackUrl="~/View/Account/Default.aspx" Text="Cancel" />
                &nbsp;<br />
                <br />
                <asp:Label ID="lbmessage" runat="server" CssClass="label label-success"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 147px">&nbsp;</td>
            <td style="width: 406px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 147px">&nbsp;</td>
            <td style="width: 406px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>