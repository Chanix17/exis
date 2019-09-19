<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="SendTestEmail.aspx.cs" Inherits="Exis.SendTestEmail" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <asp:Button ID="btnSend" runat="server" OnClick="btnSend_Click" Text="Send" />
</asp:Content>