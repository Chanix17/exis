<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/CSR.Master" CodeBehind="NewCustomer.aspx.cs" Inherits="Exis.View.CSR.NewCustomer" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="width: 147px; height: 66px;">
                <asp:Label ID="Label5" runat="server" Text="First Name"></asp:Label>
            </td>
            <td style="height: 66px; width: 249px">
                <asp:TextBox ID="txtfname" CssClass="form form-control" runat="server" TabIndex="1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfname" CssClass="label label-warning" ErrorMessage="First name is required."></asp:RequiredFieldValidator>
            </td>
            <td style="height: 66px; width: 128px;">
                <asp:Label ID="Label10" runat="server" Text="Service Plan"></asp:Label>
            </td>
            <td style="height: 66px">
                <asp:DropDownList ID="ddlServiceplan" CssClass="form form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="ServicePlanName" DataValueField="ServicePlanName" TabIndex="9"></asp:DropDownList>
                </td>
        </tr>
        <tr>
            <td style="height: 66px; width: 147px">
                <asp:Label ID="Label6" runat="server"  Text="Middle Name"></asp:Label>
            </td>
            <td style="height: 66px; width: 249px;">
                <asp:TextBox ID="txtmname" CssClass="form form-control" placeholder="optional" runat="server" TabIndex="2"></asp:TextBox>
            </td>
            <td style="height: 66px; width: 128px;">
                <asp:Label ID="Label11" runat="server" Text="Billing Information" Font-Bold="True"></asp:Label>
                <br />
                <asp:Label ID="Label15" runat="server" Text="Tower"></asp:Label>
            </td>
            <td style="height: 66px">
                <asp:DropDownList ID="ddltowerno" CssClass="form form-control" runat="server" DataSourceID="SqlDataSource2" DataTextField="TowerID" DataValueField="TowerID" TabIndex="9"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT [TowerID] FROM [Tower] WHERE ([Status] = @Status)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Active" Name="Status" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="height: 66px; width: 147px">
                <asp:Label ID="Label7" runat="server" Text="Last Name"></asp:Label>
            </td>
            <td style="height: 66px; width: 249px;">
                <asp:TextBox ID="txtlname" CssClass="form form-control" runat="server" TabIndex="3"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtlname" CssClass="label label-warning" ErrorMessage="Last name is required."></asp:RequiredFieldValidator>
            </td>
            <td style="height: 66px; width: 128px;">
                <br />
                <br />
                <asp:Label ID="Label16" runat="server" Text="Unit No."></asp:Label>
            </td>
            <td style="height: 66px">
                <asp:TextBox ID="txtunitno" CssClass="form form-control"  placeholder="ex. 101" runat="server" TabIndex="11" MaxLength="4"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtunitno" CssClass="label label-warning" ErrorMessage="Unit number is required."></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 66px; width: 147px">
                <asp:Label ID="Label8" runat="server" Text="Birth Date"></asp:Label>
            </td>
            <td style="height: 66px; width: 249px;">
                <asp:TextBox ID="txtDate" placeholder="Date/Month/Year" CssClass="form form-control" runat="server" TabIndex="4" ></asp:TextBox>
            </td>
            <td style="height: 66px; width: 128px;">
                <asp:Label ID="Label12" runat="server" Text="Email Address"></asp:Label>
            </td>
            <td style="height: 66px">
                <asp:TextBox ID="txtemailadd" placeholder="ex. exis@gmail.com"  CssClass="form form-control" runat="server" TextMode="Email" TabIndex="11"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtemailadd" CssClass="label label-warning" ErrorMessage="Email address is required."></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemailadd" CssClass="label label-warning" ErrorMessage="Incorrect email expression" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 66px; width: 147px">
                <asp:Label ID="Label1" runat="server" Text="Civil Status"></asp:Label>
            </td>
            <td style="height: 66px; width: 249px;">
                <asp:DropDownList ID="txtCivilStatus" runat="server" CssClass="form form-control" TabIndex="6" Width="165px">
                    <asp:ListItem>Single</asp:ListItem>
                    <asp:ListItem>Married</asp:ListItem>
                    <asp:ListItem>Widowed</asp:ListItem>
                    <asp:ListItem>Divorced</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="height: 66px; width: 128px;">
                <asp:Label ID="Label13" runat="server" Text="Contact Number 1"></asp:Label>
            </td>
            <td style="height: 66px">
                <asp:TextBox ID="txtcontactnumber1" placeholder="09123456789" CssClass="form form-control" runat="server" MaxLength="11" TextMode="Phone" TabIndex="12"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtcontactnumber1" CssClass="label label-warning" ErrorMessage="must have atleast 1 Contact Number."></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtcontactnumber1" CssClass="label label-warning" ErrorMessage="invalid phone number" ValidationExpression="(\?\d{2}?\s?\d{3}\s?\d{3}\s?\d{4})|([0]\d{3}\s?\d{3}\s?\d{4})"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 66px; width: 147px">
                <asp:Label ID="Label2" runat="server" Text="Gender"></asp:Label>
            </td>
            <td style="height: 66px; width: 249px;">
                <asp:DropDownList ID="txtGender" runat="server" CssClass="form form-control" TabIndex="6" Width="165px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
                </td>
            <td style="height: 66px; width: 128px;">
                <asp:Label ID="Label14" runat="server"  Text="Contact Number 2"></asp:Label>
            </td>
            <td style="height: 66px">
                <asp:TextBox ID="txtcontactnumber2" placeholder="optional" CssClass="form form-control" runat="server" MaxLength="11" TextMode="Phone" TabIndex="13"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 66px; width: 147px">
                <asp:Label ID="Label4" runat="server" Text="Nationality"></asp:Label>
            </td>
            <td style="height: 66px; width: 249px;">
                <asp:TextBox ID="txtNationality" placeholder="ex. Filipino" CssClass="form form-control" runat="server" TabIndex="7"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtNationality" CssClass="label label-warning" ErrorMessage="Nationality is required."></asp:RequiredFieldValidator>
                </td>
            <td style="height: 66px; width: 128px;">
                <asp:Label ID="Label17" runat="server"  Text="Requirements"></asp:Label>
                <br />
                <br />
                <br />
                <br />
            </td>
            <td style="height: 66px; margin-left: 40px;">
                <asp:DropDownList ID="ddlsets" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlsets_SelectedIndexChanged">
                    <asp:ListItem>Unit Owner</asp:ListItem>
                    <asp:ListItem>Foreigner</asp:ListItem>
                    <asp:ListItem>Tenant</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <asp:CheckBox ID="chckvalidid" runat="server" Text=" Valid ID" />
&nbsp;<asp:CheckBox ID="chckauthoritytomovein" runat="server" Text=" Authority to move in" />
&nbsp;
                <br />
                <asp:CheckBox ID="chckpassport" runat="server" Text=" Passport" Visible="False" />
                <asp:CheckBox ID="chckicrcard" runat="server" Text=" ICR-card" Visible="False" />
                <asp:CheckBox ID="chckicrcard0" runat="server" Text=" Leases of Contract" Visible="False" />
                <br />
            </td>
        </tr>
        <tr>
            <td style="height: 66px; width: 147px">
                &nbsp;</td>
            <td style="height: 66px; width: 249px;">
                &nbsp;</td>
            <td style="height: 66px; width: 128px;">
                &nbsp;</td>
            <td style="height: 66px">
                <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-info" OnClick="btnSubmit_Click" Text="Submit" TabIndex="14" />
                <asp:Button ID="btncancel" runat="server" CssClass="btn btn-default" PostBackUrl="~/View/CSR/" Text="Cancel" TabIndex="15" />
                </td>
        </tr>
        <tr>
            <td style="height: 66px; width: 147px">
                &nbsp;</td>
            <td style="height: 66px; width: 249px;">
                &nbsp;</td>
            <td style="height: 66px; width: 128px;">
                &nbsp;</td>
            <td style="height: 66px">
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 147px"><asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ExisConnectionString %>' SelectCommand="SELECT [ServicePlanName] FROM [ServicePlan] WHERE ([Status] = @Status)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="Active" Name="Status" Type="String" />
                </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td style="width: 249px" class="datepicker-inline">&nbsp;</td>
            <td class="datepicker-inline" style="width: 128px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <!--start of Error Modal-->
    <div id="Error" class="modal fade bs-example-modal-lg" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content"><div class="modal-header">Alert<button type="button" class="close" data-dismiss="modal">&times;</button>
                <div class="modal-body">
                    <div class="alert alert-danger" role="alert"><b>Oh snap!</b> Change a few things up and try submitting again.</div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <!--start of Succesfully Added Modal-->
    <div id="Success" class="modal fade bs-example-modal-lg" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content"><div class="modal-header">Success<button type="button" class="close" data-dismiss="modal">&times;</button>
                <div class="modal-body">
                    <div class="alert alert-success" role="alert"><b>Well Done</b> You successfully added a customer.</div>
                </div>
            </div>
        </div>
    </div>
        </div>
    <!--end of Succesfully Added Modal-->
        <!--start of  error Modal-->
    
     <!--start of Error Modal-->
    <div id="CustomerAlreadyExist" class="modal fade bs-example-modal-lg" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content"><div class="modal-header">Alert<button type="button" class="close" data-dismiss="modal">&times;</button>
                <div class="modal-body">
                    <div class="alert alert-danger" role="alert">Customer already exist.</div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <!--start of errorexits Modal-->
    
</asp:Content>