<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Exis._Default" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
<div class="row">
  <div class="col-xs-6">
    <table class="nav-justified">
    <tr>
        <td colspan="2">
            <asp:Image ID="Image3" CssClass="img-responsive" runat="server" ImageAlign="Middle" ImageUrl="~/Images/exisbody.png" Height="127px" Width="228px" />
        </td>
    </tr>
    <tr>
        <td style="height: 50px">
            <asp:Label ID="Label3" runat="server" Text="Username"></asp:Label>
        </td>
        <td style="height: 50px">
            <asp:TextBox ID="txtusername" runat="server" CssClass="form form-control"></asp:TextBox>
        </td>
        <td style="height: 50px"></td>
    </tr>
    <tr>
        <td style="height: 50px" >
            <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
        </td>
        <td style="height: 50px">
            <asp:TextBox ID="txtpassword" runat="server" CssClass="form form-control" TextMode="Password"></asp:TextBox>
        </td>
        <td style="height: 50px"></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-info" OnClick="btnlogin_Click" Text="Login" />
            <asp:Label ID="lbMessage" runat="server" CssClass="label label-danger"></asp:Label>
            <br />
            <br />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
  </div>
  <div class="col-xs-6"></div>
</div>
</asp:Content>