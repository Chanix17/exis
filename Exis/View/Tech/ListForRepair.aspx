<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Tech.Master" CodeBehind="ListForRepair.aspx.cs" Inherits="Exis.View.Tech.ListForRepair" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="height: 16px"></td>
            <td style="height: 16px"></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 41px">
                  <asp:LinkButton ID="btnOpen" CssClass="btn btn-default" role="Button" runat="server" OnClick="btnPending_Click">Open <span id="spnMyReq" runat="server" class="badge"></span></asp:LinkButton>
                  <asp:LinkButton ID="btnActive" CssClass="btn btn-info" role="Button" runat="server" OnClick="btnActive_Click">In Progress <span id="spnActive" runat="server" class="badge"></span></asp:LinkButton>
                  <asp:LinkButton ID="btnPending" CssClass="btn btn-danger" role="Button" runat="server" OnClick="btnPending_Click1">Pending <span id="spnPending" runat="server" class="badge"></span></asp:LinkButton>
                <asp:LinkButton ID="btnDone" CssClass="btn btn-primary" role="Button" runat="server" OnClick="btnDone_Click">Done <span id="spnDone" runat="server" class="badge"></span></asp:LinkButton>
                  <%--<asp:Button ID="btnDone" CssClass="btn btn-default" runat="server" OnClick="btnDone_Click" Text="Done" />--%>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        </table>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" DataSourceID="SqlDataSource1" EmptyDataText="No Open Jobs Today">
        <Columns>
            <asp:BoundField DataField="JobId" HeaderText="JobId" SortExpression="JobId" />
            <asp:BoundField DataField="JobType" HeaderText="JobType" SortExpression="JobType" />
            <asp:BoundField DataField="AccountNumber" HeaderText="AccountNumber" SortExpression="AccountNumber" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Technician" HeaderText="Technician" SortExpression="Technician" />
            <asp:BoundField DataField="DateCreated" HeaderText="DateCreated" SortExpression="DateCreated" />
            <asp:BoundField DataField="DateScheduled" HeaderText="DateScheduled" SortExpression="DateScheduled" />
            <asp:BoundField DataField="TimeScheduled" HeaderText="TimeScheduled" SortExpression="TimeScheduled" />
            <asp:TemplateField HeaderStyle-Width="275">
                <ItemTemplate>
                    <asp:LinkButton ID="lkbAssign" OnClick="lkbAssign_Click" runat="server">Assign </asp:LinkButton> | 
                    <asp:LinkButton ID="lkbPrintJobOrder" OnClick="lkbPrintJobOrder_Click" runat="server">Print Job Order</asp:LinkButton> | 
                    <asp:LinkButton ID="lkbStart" OnClick="lkbStart_Click" runat="server" OnClientClick="return confirm('Start Job?');">Start</asp:LinkButton> | 
                    <asp:LinkButton ID="lkbReschedule" OnClick="lkbReschedule_Click" runat="server">Reschedule </asp:LinkButton>
<%--                <asp:LinkButton ID="lkbCreateJobOrder" OnClick="lkbCreateJobOrder_Click" runat="server"> | Create Job Order | </asp:LinkButton>
                    <asp:LinkButton ID="lkbUpdateInfo" OnClick="lkbUpdateInfo_Click" runat="server"> Update Info</asp:LinkButton>--%>
                </ItemTemplate>

<HeaderStyle Width="275px"></HeaderStyle>
            </asp:TemplateField>
        </Columns>
        <HeaderStyle BackColor="#FF8E01" />
    </asp:GridView>

     <asp:GridView ID="GVActive" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" DataSourceID="SqlDataSource2" Visible="False" EmptyDataText="All Jobs Are Done For Today">
        <Columns>
            <asp:BoundField DataField="JobId" HeaderText="JobId" SortExpression="JobId" />
            <asp:BoundField DataField="JobType" HeaderText="JobType" SortExpression="JobType" />
            <asp:BoundField DataField="AccountNumber" HeaderText="AccountNumber" SortExpression="AccountNumber" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Technician" HeaderText="Technician" SortExpression="Technician" />
            <asp:BoundField DataField="DateCreated" HeaderText="DateCreated" SortExpression="DateCreated" />
            <asp:BoundField DataField="DateScheduled" HeaderText="DateScheduled" SortExpression="DateScheduled" />
            <asp:BoundField DataField="TimeScheduled" HeaderText="TimeScheduled" SortExpression="TimeScheduled" />
            <asp:TemplateField HeaderStyle-Width="120">
                <ItemTemplate>
                    <asp:LinkButton ID="lkbPending" OnClick="lkbPending_Click" runat="server">Pending</asp:LinkButton><asp:Label ID="lblwara" runat="server" Text=" | "></asp:Label>
                    <asp:LinkButton ID="lkbDoneJob" OnClick="lkbDoneJob_Click" runat="server" OnClientClick="return confirm('Done Job?');">Done</asp:LinkButton>
                </ItemTemplate>

<HeaderStyle Width="120px"></HeaderStyle>
            </asp:TemplateField>
        </Columns>
         <HeaderStyle BackColor="#FF8E01" />
    </asp:GridView>
     <asp:GridView ID="GVDone" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" DataSourceID="SqlDataSource3" Visible="False" EmptyDataText="No Job Done For Today.">
        <Columns>
            <asp:BoundField DataField="JobId" HeaderText="JobId" SortExpression="JobId" />
            <asp:BoundField DataField="JobType" HeaderText="JobType" SortExpression="JobType" />
            <asp:BoundField DataField="AccountNumber" HeaderText="AccountNumber" SortExpression="AccountNumber" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Technician" HeaderText="Technician" SortExpression="Technician" />
            <asp:BoundField DataField="DateCreated" HeaderText="DateCreated" SortExpression="DateCreated" />
            <asp:BoundField DataField="DateScheduled" HeaderText="DateScheduled" SortExpression="DateScheduled" />
            <asp:BoundField DataField="TimeScheduled" HeaderText="TimeScheduled" SortExpression="TimeScheduled" />
        </Columns>
         <HeaderStyle BackColor="#FF8E01" />
    </asp:GridView>

     <asp:GridView ID="GVPending" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" DataSourceID="SqlDataSource4" Visible="False" EmptyDataText="No Pending Jobs">
        <Columns>
            <asp:BoundField DataField="JobId" HeaderText="JobId" SortExpression="JobId" />
            <asp:BoundField DataField="JobType" HeaderText="JobType" SortExpression="JobType" />
            <asp:BoundField DataField="AccountNumber" HeaderText="AccountNumber" SortExpression="AccountNumber" />
            <asp:BoundField DataField="Remarks" HeaderText="Remarks" SortExpression="Remarks" />
            <asp:BoundField DataField="Technician" HeaderText="Technician" SortExpression="Technician" />
            <asp:BoundField DataField="DateScheduled" HeaderText="DateScheduled" SortExpression="DateScheduled" />
             <asp:BoundField DataField="TimeScheduled" HeaderText="TimeScheduled" SortExpression="TimeScheduled" />
             <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="lkbDoneJob1" OnClick="lkbDoneJob_Click" runat="server" OnClientClick="return confirm('Done Job?');">Done</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
         <HeaderStyle BackColor="#FF8E01" />
    </asp:GridView>

                <asp:TextBox ID="txtDate" placeholder="Date/Month/Year" CssClass="form form-control" runat="server" Enabled="False" ReadOnly="True" Visible="False" ></asp:TextBox>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT JobId, JobType, AccountNumber, Description, InstallationNotes, Technician, DateCreated, DateScheduled, TimeScheduled FROM JobOrder WHERE (Status = @Status) AND (JobType = @JobType)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Open" Name="Status" Type="String" />
            <asp:Parameter DefaultValue="For Repair" Name="JobType" />
        </SelectParameters>
    </asp:SqlDataSource>
     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT JobId, JobType, AccountNumber, Description, InstallationNotes, Technician, DateCreated, DateScheduled, TimeScheduled FROM JobOrder WHERE (Status = @Status) AND (JobType = @JobType)">
        <SelectParameters>
            <asp:Parameter DefaultValue="In Progress" Name="Status" Type="String" />
            <asp:Parameter DefaultValue="For Repair" Name="JobType" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT JobId, JobType, AccountNumber, Description, InstallationNotes, Technician, DateCreated, DateScheduled, TimeScheduled FROM JobOrder WHERE (Status = @Status) AND (JobType = @JobType)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Done" Name="Status" Type="String" />
            <asp:Parameter DefaultValue="For Repair" Name="JobType" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT JobId, JobType, AccountNumber, Description, InstallationNotes, Remarks, Technician, DateCreated, DateScheduled, TimeScheduled FROM JobOrder WHERE (Status = @Status) AND (JobType = @JobType)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Pending" Name="Status" Type="String" />
            <asp:Parameter DefaultValue="For Repair" Name="JobType" />
        </SelectParameters>
    </asp:SqlDataSource>
    <!--start of Info modal-->
    <div id="Assign" class="modal fade bs-example-modal-sm" role="dialog">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">Job Order Assignment<button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                     <table class="nav-justified">
        <tr>
            <td class="datepicker-inline" style="width: 364px">Job Order ID:
                <asp:TextBox ID="txtJobId" runat="server" CssClass="form form-control" Enabled="false"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 364px">Technician
                <asp:TextBox ID="txtTechnical" runat="server" CssClass="form form-control" Width="225px"></asp:TextBox>
            </td>
        </tr>  
        <tr>
            <td></td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 364px"><br />
                <asp:Button ID="btnAssign" CssClass="btn btn-info" runat="server" OnClick="btnAssign_Click" Text="Assign" />
            </td>
        </tr>             
    </table>
                </div>
            </div>
        </div>
    </div>
    <!-- end of Detail Modal -->
     <!--start of pending modal-->
    <div id="Pending" class="modal fade bs-example-modal-sm" role="dialog">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">Remarks<button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                     <table class="nav-justified">
        <tr>
            <td class="datepicker-inline" style="width: 198px">Job Order ID:
                
            </td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px">&nbsp;</td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px">
                <asp:Label ID="lbljoborderidremarks" runat="server" CssClass="label label-success" Font-Size="Small"></asp:Label>
                
            </td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px">&nbsp;</td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px">Pending Information :
                </td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px">
                <asp:TextBox ID="txtremarks" CssClass="form form-control" runat="server" TextMode="MultiLine" Height="74px" Width="253px"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px"><br />
                <asp:Button ID="btnPendingremarks" CssClass="btn btn-info" runat="server" OnClick="btnPendingremarks_Click" Text="Submit" />
            </td>
        </tr>             
    </table>
                </div>
            </div>
        </div>
    </div>
    <!-- end of pending Modal -->
    <!--start of Error Modal-->
    <div id="Error" class="modal fade bs-example-modal-lg" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content"><div class="modal-header">Alert<button type="button" class="close" data-dismiss="modal">&times;</button>
                <div class="modal-body">
                    <div class="alert alert-danger" role="alert">Must assigned Technician.</div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <!--start of resched modal-->
    <div id="Reschedule" class="modal fade bs-example-modal-sm" role="dialog">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">Reschedule<button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <table class="nav-justified">
        <tr>
            <td class="datepicker-inline" style="width: 198px">Job Order ID:
                
            </td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px">&nbsp;</td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px">
                <asp:Label ID="lbljoborderidresched" runat="server" CssClass="label label-success" Font-Size="Small"></asp:Label>
                
            </td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px">&nbsp;</td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px">Date : </td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px">
                <asp:TextBox ID="txtDateResched" runat="server" CssClass="form form-control"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 198px"><br />
                <asp:Button ID="btnSubmitResched" CssClass="btn btn-info" runat="server" OnClick="btnSubmitResched_Click" Text="Submit" />
            </td>
        </tr>             
    </table>
                </div>
            </div>
        </div>
    </div>
    <!-- end of resched Modal -->
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
    <div id="FullSchedule" class="modal fade bs-example-modal-lg" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content"><div class="modal-header">Alert<button type="button" class="close" data-dismiss="modal">&times;</button>
                <div class="modal-body">
                    <div class="alert alert-danger" role="alert">Schedule for that day is full. Please select another date.</div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <!--end of Succesfully Added Modal-->
</asp:Content>