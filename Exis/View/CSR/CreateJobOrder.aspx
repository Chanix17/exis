<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/CSR.Master" CodeBehind="CreateJobOrder.aspx.cs" Inherits="Exis.View.CSR.CreateJobOrder" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">

    <table class="nav-justified">
        <tr>
            <td style="height: 16px; width: 151px"></td>
            <td style="height: 16px; width: 178px;"></td>
            <td style="height: 16px"></td>
            <td style="height: 16px"></td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 151px; height: 50px;">
                <asp:Label ID="Label4" runat="server" Text="Job Id"></asp:Label>
            </td>
            <td style="height: 50px; width: 178px;">
                <asp:Label ID="lbljobid" runat="server" CssClass="label label-primary" Font-Size="Medium"></asp:Label>
            </td>
            <td style="height: 50px"></td>
            <td style="height: 50px"></td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 151px; height: 50px">
                <asp:Label ID="Label5" runat="server" Text="Job Type"></asp:Label>
            </td>
            <td style="height: 50px; width: 178px;">
                <asp:DropDownList ID="ddljobtype" runat="server" CssClass="form form-control" Width="202px" AutoPostBack="True" OnSelectedIndexChanged="ddljobtype_SelectedIndexChanged">
                    <asp:ListItem>For Repair</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="height: 50px"></td>
            <td style="height: 50px"></td>
        </tr>
        <tr>
            <td style="width: 151px; height: 69px">
                <asp:Label ID="Label11" runat="server" Text="Tower "></asp:Label>
            </td>
            <td style="height: 69px; width: 178px;">
                <asp:DropDownList ID="ddltower" runat="server" CssClass="form form-control" Width="168px" OnSelectedIndexChanged="ddljobtype_SelectedIndexChanged" DataSourceID="SqlDataSource3" DataTextField="TowerName" DataValueField="TowerName">
                </asp:DropDownList>
            </td>
            <td style="height: 69px">
                &nbsp;</td>
            <td style="height: 69px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 151px; height: 69px">
                <asp:Label ID="Label12" runat="server" Text="Unit Number"></asp:Label>
            </td>
            <td style="height: 69px; width: 178px;">
                <asp:TextBox ID="txtunitnumber" runat="server" CssClass="form form-control"></asp:TextBox>
                <asp:Label ID="lblaccountnumberdoesnotexist" runat="server" CssClass="label label-danger" Text="Account number does not exist." Visible="False"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtunitnumber" CssClass="label label-warning" ErrorMessage="Unit number required."></asp:RequiredFieldValidator>
            </td>
            <td style="height: 69px">
                &nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="btnCheckAccount" runat="server" OnClick="btnCheckAccount_Click">Check Account</asp:LinkButton>
            </td>
            <td style="height: 69px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 151px; height: 69px">
                <asp:Label ID="Label6" runat="server" Text="Account Number"></asp:Label>
            </td>
            <td style="height: 69px; width: 178px;">
                <asp:TextBox ID="txtAccountNumber" runat="server" CssClass="form form-control" Enabled="False"></asp:TextBox>
            </td>
            <td style="height: 69px">
                &nbsp;&nbsp;&nbsp;
                </td>
            <td style="height: 69px"></td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 151px; height: 50px">
                <asp:Label ID="Label7" runat="server" Text="Description / Issues / Concerns"></asp:Label>
            </td>
            <td style="height: 50px; " colspan="2">
                <asp:TextBox ID="txtdescription" runat="server" CssClass="form form-control" TextMode="MultiLine" Height="107px" Width="604px"></asp:TextBox>
            </td>
            <td style="height: 100px"></td>
        </tr>
        <tr>
            <td style="width: 151px; height: 132px">
                <asp:Label ID="Label8" runat="server" Text="Installation Notes" Visible="False"></asp:Label>
            </td>
            <td style="height: 132px; " colspan="2">
                <asp:TextBox ID="txtinstallationnotes" runat="server" CssClass="form form-control" TextMode="MultiLine" Height="107px" Width="604px" Visible="False"></asp:TextBox>
            </td>
            <td style="height: 132px"></td>
        </tr>
        <tr>
            <td style="height: 16px; width: 151px">
                <asp:Label ID="Label9" runat="server" Text="Schedule Date"></asp:Label>
            </td>
            <td style="height: 16px; width: 178px;">
                <asp:TextBox ID="txtDate" placeholder="Month/Date/Year" CssClass="form form-control" runat="server" ></asp:TextBox>
            </td>
            <td style="height: 50px"><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList1" CssClass="label label-warning"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 50px"></td>
        </tr>
        <tr>
            <td style="height: 16px; width: 151px">
                <asp:Label ID="Label10" runat="server" Text="Schedule Time"></asp:Label>
            </td>
            <td style="height: 16px; width: 178px;">
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form form-control" DataSourceID="SqlDataSource1" DataTextField="Time" DataValueField="Time" Width="192px">
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form form-control" DataSourceID="SqlDataSource2" DataTextField="Time" DataValueField="Time" Width="192px" Visible="False">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT [Time] FROM [TimeForRepair] WHERE ([Status] = @Status)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Active" Name="Status" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td style="height: 50px">&nbsp;</td>
            <td style="height: 50px">&nbsp;</td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 151px">&nbsp;</td>
            <td class="datepicker-inline" style="width: 178px">
                <asp:Button ID="btnCreate" runat="server" CssClass="btn btn-info" Text="Create" OnClick="btnCreate_Click" />
                <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-default" Text="Cancel" />
                <br />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 151px">&nbsp;</td>
            <td class="datepicker-inline" style="width: 178px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 151px">&nbsp;</td>
            <td class="datepicker-inline" style="width: 178px">
                <asp:Label ID="lbmessage" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 151px">&nbsp;</td>
            <td class="datepicker-inline" style="width: 178px">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT [Time] FROM [Time]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT [TowerName] FROM [Tower]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
     <!--start of Detail modal-->
    <div id="Detail" class="modal fade bs-example-modal-sm" role="dialog">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">Customer Detail<button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    Account Number : <asp:TextBox ID="txtaccountnumberdet" runat="server" CssClass="form form-control" Enabled="false"></asp:TextBox>
                    Name : <asp:TextBox ID="txtnamedet" runat="server" CssClass="form form-control" Enabled="false"></asp:TextBox>
                    Service Plan : <asp:TextBox ID="txtserviceplandet" runat="server" CssClass="form form-control" Enabled="false"></asp:TextBox>
                    Billing Address : <asp:TextBox ID="txtbillingaddressdet" runat="server" CssClass="form form-control" Enabled="false"></asp:TextBox>
                    <br /><asp:Button ID="btnConfirm" OnClick="btnConfirm_Click" runat="server" CssClass="btn btn-success" Text="Confirm" /><asp:Button ID="btnCancelconfirmation" OnClick="btnCancelconfirmation_Click" runat="server" CssClass="btn btn-default" Text="Cancel" />
                </div>
            </div>
        </div>
    </div>
    <!-- end of detail modal-->
    <!--start of Detail modal-->
    <div id="Detail2" class="modal fade bs-example-modal-sm" role="dialog">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header"><button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <asp:Label ID="Label1" runat="server" CssClass="label label-danger" Text="Account Number Does Not Exist!" Font-Size="Medium"></asp:Label>
                    <br /><asp:Button ID="Button2" runat="server" CssClass="btn btn-default" Text="Ok" />
                </div>
            </div>
        </div>
    </div>
    <!-- end of detail modal-->
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
                    <div class="alert alert-success" role="alert"><b>Well Done</b> You successfully added Job Order.</div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <!--end of Succesfully Added Modal-->
    <!--start of Full Schedule Modal-->
    <div id="ConflictSchedule" class="modal fade bs-example-modal-lg" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content"><div class="modal-header">Alert<button type="button" class="close" data-dismiss="modal">&times;</button>
                <div class="modal-body">
                    <div class="alert alert-danger" role="alert">A Conflict of schedule on the date and time. Please select another date and time for this Job Order.</div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <!--end of Succesfully Added Modal-->
    <!--start of Full Schedule Modal-->
    <div id="ErrorSchedule" class="modal fade bs-example-modal-lg" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content"><div class="modal-header">Alert<button type="button" class="close" data-dismiss="modal">&times;</button>
                <div class="modal-body">
                    <div class="alert alert-danger" role="alert">Schedule Date must be today or the next day.</div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <!--end of Succesfully Added Modal-->
</asp:Content>