<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/site.Master" CodeBehind="ChangePassword.aspx.cs" Inherits="Exis.View.Account.ChangePassword" %>


<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
    <tr>
        <td style="width: 135px; height: 65px">
            <asp:Label ID="Label6" runat="server" Text="User ID"></asp:Label>
        </td>
        <td class="modal-sm" style="width: 328px; height: 65px">
            <asp:Label ID="lbuserid" runat="server" CssClass="label label-info" Text="Label"></asp:Label>
        </td>
        <td style="height: 65px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 135px; height: 65px">
            <asp:Label ID="Label3" runat="server" Text="Old Password"></asp:Label>
        </td>
        <td class="modal-sm" style="width: 328px; height: 65px">
            <asp:TextBox ID="txtoldpass" runat="server" CssClass="form form-control"></asp:TextBox>
        </td>
        <td style="height: 65px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtoldpass" CssClass="label label-danger" ErrorMessage="This field is required."></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 135px; height: 66px">
            <asp:Label ID="Label4" runat="server" Text="New Password"></asp:Label>
        </td>
        <td class="modal-sm" style="width: 328px; height: 66px">
            <asp:TextBox ID="txtnewpass" runat="server" CssClass="form form-control"></asp:TextBox>
        </td>
        <td style="height: 66px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtnewpass" CssClass="label label-danger" ErrorMessage="This field is required."></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 135px; height: 67px">
            <asp:Label ID="Label5" runat="server" Text="Confirm Password"></asp:Label>
        </td>
        <td class="modal-sm" style="width: 328px; height: 67px">
            <asp:TextBox ID="txtconfirmpass" runat="server" CssClass="form form-control"></asp:TextBox>
        </td>
        <td style="height: 67px">
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtconfirmpass" ControlToValidate="txtnewpass" CssClass="label label-warning" ErrorMessage="The new password and confirm password in different."></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 135px">&nbsp;</td>
        <td class="modal-sm" style="width: 328px">
            <asp:Button ID="btnupdate" runat="server" CssClass="btn btn-info" OnClick="btnupdate_Click" Text="Submit Changes" />
            <asp:Button ID="btncancel" runat="server" CssClass="btn btn-default" PostBackUrl="~/View/Administrator" Text="Cancel" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 135px; height: 16px;">&nbsp;</td>
        <td class="modal-sm" style="width: 328px; height: 16px;">
            &nbsp;</td>
        <td style="height: 16px">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 135px; height: 16px;"></td>
        <td class="modal-sm" style="width: 328px; height: 16px;">
            <asp:Label ID="lbmessage" runat="server" CssClass="label label-success"></asp:Label>
&nbsp;<asp:Label ID="lbmessage2" runat="server" CssClass="label label-warning"></asp:Label>
        </td>
        <td style="height: 16px"></td>
    </tr>
    <tr>
        <td style="width: 135px">&nbsp;</td>
        <td class="modal-sm" style="width: 328px">
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>