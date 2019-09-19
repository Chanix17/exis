<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Administrator.Master" CodeBehind="NewTower.aspx.cs" Inherits="Exis.View.Administrator.NewTower" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">

    <table class="nav-justified">
        <tr>
            <td style="width: 147px">
                <asp:Label ID="Label3" runat="server" Text="Tower ID"></asp:Label>
            </td>
            <td style="width: 406px">
                <asp:Label ID="lblTowerId" runat="server" CssClass="label label-primary" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 66px; width: 147px">
                <asp:Label ID="Label7" runat="server" Text="Tower Name"></asp:Label>
            </td>
            <td style="height: 66px; width: 406px;">
                <asp:TextBox ID="txtTowerName" CssClass="form form-control" runat="server"></asp:TextBox>
            </td>
            <td style="height: 66px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 147px">&nbsp;</td>
            <td style="width: 406px">
                <asp:Button ID="btncreate" runat="server" CssClass="btn btn-info" OnClick="btncreate_Click" Text="Create" />
                <asp:Button ID="btncancel" runat="server" CssClass="btn btn-default" PostBackUrl="~/" Text="Cancel" />
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