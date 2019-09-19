<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Administrator.Master" CodeBehind="CustomerList.aspx.cs" Inherits="Exis.View.Administrator.CustomerList" %>


<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <!-- Bootstrap DatePicker -->
    <script type="text/javascript">
        $(function () {
            $('[id*=txtDate]').datepicker({
                changeMonth: true,
                changeYear: true,
                format: "mm/dd/yyyy",
                language: "tr"
            });
        });
    </script>
    <table class="nav-justified">
        <tr>
            <td style="height: 41px">    
                <asp:Label ID="lbltower" runat="server" Text="Tower "></asp:Label>
                <asp:DropDownList ID="ddltower" runat="server" DataSourceID="SqlDataSource3" DataTextField="TowerID" DataValueField="TowerID" AutoPostBack="True">
                </asp:DropDownList>
                <asp:Label ID="lblunitnumber" runat="server" Text="Unit Number"></asp:Label>
                <asp:TextBox ID="txtunitnumber" runat="server" MaxLength="4" OnTextChanged="txtunitnumber_TextChanged" AutoPostBack="True"></asp:TextBox>
            </td>
            <td style="height: 41px"></td>
        </tr>
        <tr>
            <td style="height: 15px">    &nbsp;</td>
            <td style="height: 15px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 15px">    
                <asp:Label ID="Label5" runat="server" Text="Total Number Of Customers :"></asp:Label>
&nbsp;<asp:Label ID="lbltotalnumberofcustomer" runat="server" CssClass="label label-success" Font-Size="Small"></asp:Label>
            </td>
            <td style="height: 15px">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
   
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="AccountNumber" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" CssClass="table table-bordered" EmptyDataText="Search By Tower and Unit Number">
            <Columns>
                <asp:BoundField DataField="AccountNumber" HeaderText="Account Number" ReadOnly="True" SortExpression="AccountNumber" />
                <asp:BoundField DataField="Lastname" HeaderText="Last Name" SortExpression="Lastname" />
                <asp:BoundField DataField="Firstname" HeaderText="First Name" SortExpression="Firstname" />
    <asp:BoundField DataField="ServicePlanName" HeaderText="Service Plan" SortExpression="ServicePlanName"></asp:BoundField>
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:TemplateField HeaderStyle-Width="250">
                    <ItemTemplate>
                        <%--<asp:LinkButton ID="lkbInfo" OnClick="lkbInfo_Click" runat="server">Details </asp:LinkButton> |--%> 
                        <%--<asp:LinkButton ID="lkbCreateJobOrder" OnClick="lkbCreateJobOrder_Click" runat="server">Create Job Order</asp:LinkButton> | --%> 
                        <asp:LinkButton ID="lkbUpdateInfo" OnClick="lkbUpdateInfo_Click" runat="server"> Update Info</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <HeaderStyle BackColor="#FF8E01" Font-Italic="False" ForeColor="Black" />
            <PagerStyle CssClass="pagination-ys" />
        </asp:GridView>
     
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="AccountNumber" DataSourceID="SqlDataSource4" AllowPaging="True" AllowSorting="True" CssClass="table table-bordered" EmptyDataText="Search By Tower and Unit Number" Visible="False">
            <Columns>
                <asp:BoundField DataField="AccountNumber" HeaderText="Account Number" ReadOnly="True" SortExpression="AccountNumber" />
                <asp:BoundField DataField="Lastname" HeaderText="Last Name" SortExpression="Lastname" />
                <asp:BoundField DataField="Firstname" HeaderText="First Name" SortExpression="Firstname" />
    <asp:BoundField DataField="ServicePlanName" HeaderText="Service Plan" SortExpression="ServicePlanName"></asp:BoundField>
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:TemplateField HeaderStyle-Width="250">
                    <ItemTemplate>
                        <%--<asp:LinkButton ID="lkbInfo" OnClick="lkbInfo_Click" runat="server">Details </asp:LinkButton> |--%> 
                        <%--<asp:LinkButton ID="lkbCreateJobOrder" OnClick="lkbCreateJobOrder_Click" runat="server">Create Job Order</asp:LinkButton> | --%> 
                        <asp:LinkButton ID="lkbUpdateInfo0" OnClick="lkbUpdateInfo_Click" runat="server"> Update Info</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <HeaderStyle BackColor="#FF8E01" Font-Italic="False" ForeColor="Black" />
            <PagerStyle CssClass="pagination-ys" />
        </asp:GridView>
     
    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Show All</asp:LinkButton>
     
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT [TowerID] FROM [Tower]"></asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT AccountNumber, Firstname, Middlename, Lastname, Birthdate, CivilStatus, Gender, Nationality, CompanyName, BillingAddress, EmailAddress, ContactNumber, ContactNumber2, Status, DateAdded, ServicePlanName FROM Customer WHERE @TowerID=@TowerID AND UnitNo=@UnitNo">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddltower" PropertyName="SelectedValue" Name="TowerID"></asp:ControlParameter>
            <asp:ControlParameter ControlID="txtunitnumber" Name="UnitNo" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT [ServicePlanName] FROM [ServicePlan]"></asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT AccountNumber, Firstname, Middlename, Lastname, Birthdate, CivilStatus, Gender, Nationality, CompanyName, BillingAddress, EmailAddress, ContactNumber, ContactNumber2, Status, DateAdded, ServicePlanName FROM Customer">
    </asp:SqlDataSource>
    
    <!--start of Update modal-->
    <div id="Update" class="modal fade bs-example-modal-lg" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">Customer Info<button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <table class="nav-justified">
        <tr>
            <td class="modal-sm" style="width: 349px">Account Number :
                <br />
                <asp:TextBox CssClass="form form-control" ID="txtaccountnumberdet2" runat="server" Enabled="false"></asp:TextBox>
            </td>
            <td style="width: 408px">Tower :
                <br />
                <asp:DropDownList CssClass="form form-control" ID="ddltowerno" runat="server" Width="161px" Enabled="false" DataSourceID="SqlDataSource3" DataTextField="TowerID" DataValueField="TowerID"></asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 349px; height: 37px;">First Name :
                <br />
                <asp:TextBox CssClass="form form-control" ID="txtfirstname" runat="server" Width="147px"></asp:TextBox>
            </td>
            <td style="height: 37px; width: 408px;">Unit No. :<br />
                <asp:TextBox CssClass="form form-control" Enabled="False" ID="txtunitno" runat="server" Width="219px"></asp:TextBox>
            </td>
            <td style="height: 37px">&nbsp;</td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 349px; height: 37px;">Middle Name :
                <br />
                <asp:TextBox CssClass="form form-control" ID="txtmname" runat="server" Width="147px"></asp:TextBox>
            </td>
            <td style="height: 37px; width: 408px;">Email Address :
                <br />
                <asp:TextBox CssClass="form form-control" ID="txtemaildet2" runat="server" Width="224px"></asp:TextBox>
            </td>
            <td style="height: 37px">&nbsp;</td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 349px; height: 37px;">Last Name :
                <br />
                <asp:TextBox CssClass="form form-control" ID="txtlname" runat="server" Width="147px"></asp:TextBox>
            </td>
            <td style="height: 37px; width: 408px;">Contact Number 1 :<br />
                <asp:TextBox CssClass="form form-control" ID="txtcontactnumberdet2" runat="server" Width="220px" MaxLength="11"></asp:TextBox>
                <asp:RegularExpressionValidator ControlToValidate="txtcontactnumberdet2" ID="RegularExpressionValidator1" runat="server" CssClass="label label-warning" ErrorMessage="Invalid Phone Number" ValidationExpression="(\?\d{2}?\s?\d{3}\s?\d{3}\s?\d{4})|([0]\d{3}\s?\d{3}\s?\d{4})"></asp:RegularExpressionValidator>
            </td>
            <td style="height: 37px">&nbsp;</td>
        </tr>
            <tr>
            <td class="modal-sm" style="width: 349px">Birth Date :<br />
                <asp:TextBox CssClass="form form-control" ID="txtDate" runat="server"></asp:TextBox>
            </td>
            <td style="width: 408px">Contact Number 2:<br />
                <asp:TextBox CssClass="form form-control" ID="txtcontactnumber2det2" runat="server" Width="216px" MaxLength="11"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 37px; width: 349px;">&nbsp;Civil Status :
                <br />
                <asp:DropDownList ID="txtcivilstatusdet2" runat="server" CssClass="form-control" Width="118px">
                    <asp:ListItem>Single</asp:ListItem>
                    <asp:ListItem>Married</asp:ListItem>
                    <asp:ListItem>Widowed</asp:ListItem>
                    <asp:ListItem>Divorced</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="height: 37px; width: 408px;">Status :
                <br />
                <asp:TextBox CssClass="form form-control" ID="txtstatusdet2" runat="server" Enabled="false" Width="216px"></asp:TextBox>
            </td>
            <td style="height: 37px">&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 349px">Gender :<br />
                <asp:DropDownList ID="txtgenderdet2" runat="server" CssClass="form-control">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 408px">Service Plan :<asp:TextBox ID="txtserviceplan" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Change Service Plan</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 349px; height: 51px;">&nbsp;Nationality :<br />
                <asp:TextBox CssClass="form form-control" ID="txtnationalitydet2" runat="server"></asp:TextBox>
            </td>
            <td style="height: 51px; width: 408px">
                <asp:DropDownList CssClass="form form-control" ID="ddlserviceplan" runat="server" DataSourceID="SqlDataSource2" DataTextField="ServicePlanName" DataValueField="ServicePlanName">
                </asp:DropDownList>
            </td>
            <td style="height: 51px">&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 349px">
                &nbsp;</td>
            <td style="width: 408px">
                <asp:Button ID="btnUpdateCustomerInfo" OnClick="btnUpdateCustomerInfo_Click" CssClass="btn btn-primary" runat="server" Text="Update" />
                <asp:Button ID="Button1" CssClass="btn btn-default" runat="server" Text="Cancel" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 349px">
                &nbsp;</td>
            <td style="width: 408px">
                <br />
            </td>
            <td>
                &nbsp;</td>
    </table>
                </div>
            </div>
        </div>
    </div>
    
    <!-- end of Update Modal -->
    </asp:Content>