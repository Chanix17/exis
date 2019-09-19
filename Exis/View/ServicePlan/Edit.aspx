<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Administrator.Master" CodeBehind="Edit.aspx.cs" Inherits="Exis.View.ServicePlan.Edit" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="width: 147px">
                <asp:Label ID="Label3" runat="server" Text="Service Plan ID"></asp:Label>
            </td>
            <td style="width: 406px">
                <asp:Label ID="lbServicePlanId" runat="server" CssClass="label label-primary" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 147px; height: 66px;">
                <asp:Label ID="Label5" runat="server" Text="Service Plan Name"></asp:Label>
            </td>
            <td style="height: 66px; width: 406px">
                <asp:TextBox ID="txtserviceplanname" CssClass="form form-control" runat="server"></asp:TextBox>
            </td>
            <td style="height: 66px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 66px; width: 147px">
                <asp:Label ID="Label6" runat="server" Text="Description"></asp:Label>
            </td>
            <td style="height: 66px; width: 406px;">
                <asp:TextBox ID="txtdescription" CssClass="form form-control" runat="server" Height="39px" TextMode="MultiLine" Width="228px"></asp:TextBox>
            </td>
            <td style="height: 66px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 66px; width: 147px">
                <asp:Label ID="Label7" runat="server" Text="Internet"></asp:Label>
            </td>
            <td style="height: 66px; width: 406px;">
                <asp:TextBox ID="txtinternet" CssClass="form form-control" runat="server"></asp:TextBox>
            </td>
            <td style="height: 66px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 66px; width: 147px">
                <asp:Label ID="Label8" runat="server" Text="VAT"></asp:Label>
            </td>
            <td style="height: 66px; width: 406px;">
                <asp:TextBox ID="txtvat" CssClass="form form-control" runat="server"></asp:TextBox>
            </td>
            <td style="height: 66px">
                &nbsp;</td>
        </tr>
           <tr>
            <td style="height: 66px; width: 147px">
                <asp:Label ID="Label1" runat="server" Text="Less"></asp:Label>
            </td>
            <td style="height: 66px; width: 406px;">
                <asp:TextBox ID="txtless" CssClass="form form-control" runat="server"></asp:TextBox>
            </td>
            <td style="height: 66px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 66px; width: 147px">
                <asp:Label ID="Label2" runat="server" Text="Total"></asp:Label>
            </td>
            <td style="height: 66px; width: 406px;">
                <asp:TextBox ID="txttotal" CssClass="form form-control" runat="server"></asp:TextBox>
            </td>
            <td style="height: 66px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 66px; width: 147px">
                <asp:Label ID="Label4" runat="server" Text="Status"></asp:Label>
            </td>
            <td style="height: 66px; width: 406px;">
                <asp:DropDownList ID="ddlstatus" CssClass="form form-control" runat="server">
                    <asp:ListItem>Active</asp:ListItem>
                    <asp:ListItem>Inactive</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="height: 66px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 147px">&nbsp;</td>
            <td style="width: 406px">
                <asp:Button ID="btncreate" runat="server" CssClass="btn btn-info" OnClick="btncreate_Click" Text="Update" />
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