<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="List.aspx.cs" MasterPageFile="~/Administrator.Master" Inherits="Exis.View.ServicePlan.List" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CssClass="table table-bordered" DataSourceID="SqlDataSource2" DataKeyNames="ServicePlanID">
        <Columns>
            <asp:BoundField DataField="ServicePlanID" HeaderText="ServicePlanID" ReadOnly="True" SortExpression="ServicePlanID" />
            <asp:BoundField DataField="ServicePlanName" HeaderText="ServicePlanName" SortExpression="ServicePlanName" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Internet" HeaderText="Internet" SortExpression="Internet" />
            <asp:BoundField DataField="VAT" HeaderText="VAT" SortExpression="VAT" />
            <asp:BoundField DataField="Less" HeaderText="Less" SortExpression="Less" />
            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lkbedit" OnClick="lkbedit_Click" runat="server">Edit </asp:LinkButton>
                        <%--<asp:LinkButton ID="lkbCreateJobOrder" OnClick="lkbCreateJobOrder_Click" runat="server">Create Job Order</asp:LinkButton> | 
                        <asp:LinkButton ID="lkbUpdateInfo" OnClick="lkbUpdateInfo_Click" runat="server"> Update Info</asp:LinkButton>--%>
                    </ItemTemplate>
                </asp:TemplateField>
        </Columns>
        <HeaderStyle BackColor="#FF8E01" ForeColor="Black" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT [ServicePlanID], [ServicePlanName], [Description], [Internet], [VAT], [Less], [Total], [Status] FROM [ServicePlan]" OldValuesParameterFormatString="original_{0}">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT [ServicePlanID], [ServicePlanName], [Description], [Internet], [VAT], [Less], [Total], [Status] FROM [ServicePlan] WHERE ([Status] = @Status)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Active" Name="Status" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <!--start of edit modal-->
    <div id="Edit" class="modal fade bs-example-modal-sm" role="dialog">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    Service Plan ID : <asp:Label ID="txtserviceplanid" CssClass="label label-success" Font-Size="Small" runat="server" Text=""></asp:Label>
                    <table class="nav-justified">
                        <tr>
                            <td>
                                <asp:Label ID="lblSerc" runat="server" Text="Service Plan"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtserviceplanname" runat="server" CssClass="form form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Description"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtdescription" Height="200" Width="200" runat="server" CssClass="form form-control" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Internet"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtinternet" placeholder="ex. 1300.00" runat="server" CssClass="form form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID=  "Label3" runat="server" Text="VAT"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtvat" runat="server" placeholder="ex. 1300.00" CssClass="form form-control"></asp:TextBox>
                            </td>
                        </tr>
                         <tr>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text="Less"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtless" runat="server" placeholder="ex. 1300.00" CssClass="form form-control"></asp:TextBox>
                            </td>
                        </tr>
                         <tr>
                            <td>
                                <asp:Label ID="Label5" runat="server" placeholder="ex. 1300.00" Text="Total"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txttotal" runat="server" CssClass="form form-control"></asp:TextBox>
                            </td>
                        </tr>
                         <tr>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text="Status"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlstatus" CssClass="form form-control" runat="server">
                                    <asp:ListItem>Active</asp:ListItem>
                                    <asp:ListItem>Inactive</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="modal-footer">
                    <asp:Button ID="btnSubmit" OnClick="btnSubmit_Click" runat="server" Text="Submit Changes" CssClass="btn btn-primary" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>