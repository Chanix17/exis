<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/CSR.Master" CodeBehind="List.aspx.cs" Inherits="Exis.View.CSR.List" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="height: 41px; width: 682px;">        
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>Show All</asp:ListItem>
                    <asp:ListItem>For Activation</asp:ListItem>
                    <asp:ListItem>For Payment</asp:ListItem>
                    <asp:ListItem>Ready For Activation</asp:ListItem>
                    <asp:ListItem>Active</asp:ListItem>
                    <asp:ListItem>Lacking Requirements</asp:ListItem>
                    <asp:ListItem>For Disconnection</asp:ListItem>
                    <asp:ListItem>Disconnected</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownList2" runat="server" Visible="False" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem>Unit Owner</asp:ListItem>
                    <asp:ListItem>Foreigner</asp:ListItem>
                    <asp:ListItem>Tenant</asp:ListItem>
                </asp:DropDownList>
            &nbsp;&nbsp;    
                <asp:Label ID="lbltower" runat="server" Text="Tower  "></asp:Label>
                <asp:DropDownList ID="ddltower" runat="server" DataSourceID="SqlDataSource9" DataTextField="TowerID" DataValueField="TowerID" AutoPostBack="True">
                </asp:DropDownList>
&nbsp; <asp:Label ID="lblunitnumber" runat="server" Text="Unit Number "></asp:Label>
                <asp:TextBox ID="txtunitnumber" runat="server" MaxLength="4" OnTextChanged="txtunitnumber_TextChanged"></asp:TextBox>
                <asp:Button ID="btnsearch" runat="server" Height="23px" OnClick="btnsearch_Click" Text="Search" />
            </td>
            <td style="height: 41px">    </td>
            <td style="height: 41px"></td>
        </tr>
        <tr>
            <td colspan="2" style="height: 16px">    
            </td>
            <td style="height: 16px"></td>
        </tr>
        </table>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="AccountNumber" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" CssClass="table table-bordered" EmptyDataText="Search By Account Number" Visible="False">
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
                        <asp:LinkButton ID="lkbUpdateInfo" OnClick="lkbUpdateInfo_Click" runat="server"> Update Info</asp:LinkButton> | 
                        <asp:LinkButton ID="lkbUpgradeServicePlan" OnClick="lkbUpgradeServicePlan_Click1" runat="server"> Upgrade Service Plan</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <HeaderStyle BackColor="#FF8E01" Font-Italic="False" ForeColor="Black" />
            <PagerStyle CssClass="pagination-ys" />
        </asp:GridView>

               <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="AccountNumber" DataSourceID="SqlDataSource2" AllowPaging="True" AllowSorting="True" CssClass="table table-bordered" EmptyDataText="Search By Account Number" OnRowDataBound="GridView2_RowDataBound" Visible="False">
        <Columns>
            <asp:BoundField DataField="AccountNumber" HeaderText="AccountNumber" ReadOnly="True" SortExpression="AccountNumber" />
            <asp:BoundField DataField="Lastname" HeaderText="Lastname" SortExpression="Lastname" />
            <asp:BoundField DataField="Firstname" HeaderText="Firstname" SortExpression="Firstname" />
            <asp:BoundField DataField="BillingAddress" HeaderText="BillingAddress" SortExpression="BillingAddress" />
            <asp:BoundField DataField="ServicePlanName" HeaderText="ServicePlanName" SortExpression="ServicePlanName" />
            <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
            <asp:BoundField DataField="ContactNumber" HeaderText="ContactNumber" SortExpression="ContactNumber" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            <asp:TemplateField HeaderStyle-Width="250">
                    <ItemTemplate>
                        <%--<asp:LinkButton ID="lkbInfo1" OnClick="lkbInfo_Click" runat="server">Details </asp:LinkButton> |--%> 
                        <%--<asp:LinkButton ID="lkbCreateJobOrder1" OnClick="lkbCreateJobOrder_Click" runat="server">Create Job Order</asp:LinkButton> | --%> 
                        <asp:LinkButton ID="lkbUpdateInfo1" OnClick="lkbUpdateInfo_Click" runat="server"> Update Info</asp:LinkButton>
                    </ItemTemplate>

<HeaderStyle Width="250px"></HeaderStyle>
                </asp:TemplateField>
        </Columns>
        <HeaderStyle BackColor="#FF8E01" ForeColor="Black" />
        <PagerStyle CssClass="pagination-ys" />
    </asp:GridView>

    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="AccountNumber" DataSourceID="SqlDataSource8" AllowPaging="True" AllowSorting="True" CssClass="table table-bordered" EmptyDataText="Search By Account Number" OnRowDataBound="GridView2_RowDataBound" Visible="False">
        <Columns>
            <asp:BoundField DataField="AccountNumber" HeaderText="AccountNumber" ReadOnly="True" SortExpression="AccountNumber" />
            <asp:BoundField DataField="Lastname" HeaderText="Lastname" SortExpression="Lastname" />
            <asp:BoundField DataField="Firstname" HeaderText="Firstname" SortExpression="Firstname" />
            <asp:BoundField DataField="BillingAddress" HeaderText="BillingAddress" SortExpression="BillingAddress" />
            <asp:BoundField DataField="ServicePlanName" HeaderText="ServicePlanName" SortExpression="ServicePlanName" />
            <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
            <asp:BoundField DataField="ContactNumber" HeaderText="ContactNumber" SortExpression="ContactNumber" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            <asp:TemplateField HeaderStyle-Width="250">
                    <ItemTemplate>
                        <%--<asp:LinkButton ID="lkbInfo1" OnClick="lkbInfo_Click" runat="server">Details </asp:LinkButton> |--%> 
                        <asp:LinkButton ID="lkbCreateJobOrder1" OnClick="lkbCreateJobOrder_Click" runat="server">Create Job Order</asp:LinkButton> |
                        <asp:LinkButton ID="lkbUpdateInfo1" OnClick="lkbUpdateInfo_Click" runat="server"> Update Info</asp:LinkButton>
                    </ItemTemplate>

<HeaderStyle Width="250px"></HeaderStyle>
                </asp:TemplateField>
        </Columns>
        <HeaderStyle BackColor="#FF8E01" ForeColor="Black" />
        <PagerStyle CssClass="pagination-ys" />
    </asp:GridView>
    
    
    <asp:GridView ID="GridViewForDisconnection" runat="server" AutoGenerateColumns="False" DataKeyNames="AccountNumber" DataSourceID="SqlDataForDisconnection" AllowPaging="True" AllowSorting="True" CssClass="table table-bordered" EmptyDataText="Search By Account Number" OnRowDataBound="GridView2_RowDataBound" Visible="False">
        <Columns>
            <asp:BoundField DataField="AccountNumber" HeaderText="AccountNumber" ReadOnly="True" SortExpression="AccountNumber" />
            <asp:BoundField DataField="Lastname" HeaderText="Lastname" SortExpression="Lastname" />
            <asp:BoundField DataField="Firstname" HeaderText="Firstname" SortExpression="Firstname" />
            <asp:BoundField DataField="BillingAddress" HeaderText="BillingAddress" SortExpression="BillingAddress" />
            <asp:BoundField DataField="ServicePlanName" HeaderText="ServicePlanName" SortExpression="ServicePlanName" />
            <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
            <asp:BoundField DataField="ContactNumber" HeaderText="ContactNumber" SortExpression="ContactNumber" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            <asp:TemplateField HeaderStyle-Width="250">
                    <ItemTemplate>
                        <%--<asp:LinkButton ID="lkbInfo1" OnClick="lkbInfo_Click" runat="server">Details </asp:LinkButton> |--%> 
                        <asp:LinkButton ID="lkbCreateJobOrderForDisconnection" OnClick="lkbCreateJobOrderForDisconnection_Click" runat="server">Create Job Order For Disconnection</asp:LinkButton>
                    </ItemTemplate>

<HeaderStyle Width="250px"></HeaderStyle>
                </asp:TemplateField>
        </Columns>
        <HeaderStyle BackColor="#FF8E01" ForeColor="Black" />
        <PagerStyle CssClass="pagination-ys" />
    </asp:GridView>
    
    
    <asp:GridView ID="GridViewForDisconnected" runat="server" AutoGenerateColumns="False" DataKeyNames="AccountNumber" DataSourceID="SqlDataForDisconnected" AllowPaging="True" AllowSorting="True" CssClass="table table-bordered" EmptyDataText="Search By Account Number" OnRowDataBound="GridView2_RowDataBound" Visible="False">
        <Columns>
            <asp:BoundField DataField="AccountNumber" HeaderText="AccountNumber" ReadOnly="True" SortExpression="AccountNumber" />
            <asp:BoundField DataField="Lastname" HeaderText="Lastname" SortExpression="Lastname" />
            <asp:BoundField DataField="Firstname" HeaderText="Firstname" SortExpression="Firstname" />
            <asp:BoundField DataField="BillingAddress" HeaderText="BillingAddress" SortExpression="BillingAddress" />
            <asp:BoundField DataField="ServicePlanName" HeaderText="ServicePlanName" SortExpression="ServicePlanName" />
            <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
            <asp:BoundField DataField="ContactNumber" HeaderText="ContactNumber" SortExpression="ContactNumber" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            <asp:TemplateField HeaderStyle-Width="250">
                    <ItemTemplate>
                        <%--<asp:LinkButton ID="lkbInfo1" OnClick="lkbInfo_Click" runat="server">Details </asp:LinkButton> |--%> 
                        <asp:LinkButton ID="lkbRequestForReconnection" OnClick="lkbCreateJobOrderForDisconnection_Click" runat="server">Reconnection</asp:LinkButton>
                    </ItemTemplate>

<HeaderStyle Width="250px"></HeaderStyle>
                </asp:TemplateField>
        </Columns>
        <HeaderStyle BackColor="#FF8E01" ForeColor="Black" />
        <PagerStyle CssClass="pagination-ys" />
    </asp:GridView>
    
    
               <asp:GridView ID="GVShowAll" runat="server" AutoGenerateColumns="False" DataKeyNames="AccountNumber" DataSourceID="SqlDataSource4" AllowPaging="True" AllowSorting="True" CssClass="table table-bordered" EmptyDataText="Search By Account Number" OnRowDataBound="GVShowAll_RowDataBound">
        <Columns>
            <asp:BoundField DataField="AccountNumber" HeaderText="AccountNumber" ReadOnly="True" SortExpression="AccountNumber" />
            <asp:BoundField DataField="Lastname" HeaderText="Lastname" SortExpression="Lastname" />
            <asp:BoundField DataField="Firstname" HeaderText="Firstname" SortExpression="Firstname" />
            <asp:BoundField DataField="BillingAddress" HeaderText="BillingAddress" SortExpression="BillingAddress" />
            <asp:BoundField DataField="ServicePlanName" HeaderText="ServicePlanName" SortExpression="ServicePlanName" />
            <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
            <asp:BoundField DataField="ContactNumber" HeaderText="ContactNumber" SortExpression="ContactNumber" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            <asp:TemplateField HeaderStyle-Width="250">
                <ItemTemplate>
                        <%--<asp:LinkButton ID="lkbInfo2" OnClick="lkbInfo_Click" runat="server">Details </asp:LinkButton> | --%>
                        <%--<asp:LinkButton ID="lkbCreateJobOrder2" OnClick="lkbCreateJobOrder_Click" runat="server">Create Job Order</asp:LinkButton> | --%>
                        <asp:LinkButton ID="lkbUpdateInfo2" OnClick="lkbUpdateInfo_Click" runat="server"> Update Info</asp:LinkButton>
                    </ItemTemplate>
                <HeaderStyle Width="250px"></HeaderStyle>
                </asp:TemplateField>
        </Columns>
        <HeaderStyle BackColor="#FF8E01" ForeColor="Black" />
        <PagerStyle CssClass="pagination-ys" />
    </asp:GridView>
    
    
               <asp:GridView ID="GVLackingRequirementsUnitOwner" runat="server" AutoGenerateColumns="False" DataKeyNames="AccountNumber" DataSourceID="SqlDataSource5" AllowPaging="True" AllowSorting="True" CssClass="table table-bordered" EmptyDataText="No Customer with Lacking Requirements" OnRowDataBound="GVShowAll_RowDataBound" Visible="False">
        <Columns>
            <asp:BoundField DataField="AccountNumber" HeaderText="AccountNumber" ReadOnly="True" SortExpression="AccountNumber" />
            <asp:BoundField DataField="Firstname" HeaderText="Firstname" SortExpression="Firstname" />
            <asp:BoundField DataField="Middlename" HeaderText="Middlename" SortExpression="Middlename" />
            <asp:BoundField DataField="Lastname" HeaderText="Lastname" SortExpression="Lastname" />
            <asp:BoundField DataField="BillingAddress" HeaderText="BillingAddress" SortExpression="BillingAddress" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            <asp:BoundField DataField="CustomerType" HeaderText="CustomerType" SortExpression="CustomerType" />
            <asp:TemplateField HeaderText="Valid ID">
                        <ItemTemplate>
                            <asp:CheckBox ID="chkbox4" Enabled="false" runat="server" Checked='<%# Convert.ToBoolean(Eval("ValidID")) %>' Text='<%# Eval("ValidID").ToString().Equals("True") ? "  " : "  " %>' />
                        </ItemTemplate>
                        </asp:TemplateField>
                       <asp:TemplateField HeaderText="Authority To Move In">
                        <ItemTemplate>
                            <asp:CheckBox ID="chkbox5" Enabled="false" runat="server" Checked='<%# Convert.ToBoolean(Eval("AuthorityToMoveIn")) %>' Text='<%# Eval("AuthorityToMoveIn").ToString().Equals("True") ? "  " : "  " %>' />
                        </ItemTemplate>
                        </asp:TemplateField>
            <asp:TemplateField HeaderStyle-Width="250">
                <ItemTemplate>
                        <%--<asp:LinkButton ID="lkbInfo2" OnClick="lkbInfo_Click" runat="server">Details </asp:LinkButton> | --%>
                        <asp:LinkButton ID="lkbUpdateInfo2" OnClick="lkbUpdateInfo_Click" runat="server"> Update Info</asp:LinkButton>
                    </ItemTemplate>
                <HeaderStyle Width="250px"></HeaderStyle>
                </asp:TemplateField>
        </Columns>
        <HeaderStyle BackColor="#FF8E01" ForeColor="Black" />
        <PagerStyle CssClass="pagination-ys" />
    </asp:GridView>
    
    
               <asp:GridView ID="GVLackingRequirementsForeigner" runat="server" AutoGenerateColumns="False" DataKeyNames="AccountNumber" DataSourceID="SqlDataSource6" AllowPaging="True" AllowSorting="True" CssClass="table table-bordered" EmptyDataText="No Customer with Lacking Requirements" OnRowDataBound="GVShowAll_RowDataBound" Visible="False">
        <Columns>
            <asp:BoundField DataField="AccountNumber" HeaderText="AccountNumber" ReadOnly="True" SortExpression="AccountNumber" />
            <asp:BoundField DataField="Firstname" HeaderText="Firstname" SortExpression="Firstname" />
            <asp:BoundField DataField="Middlename" HeaderText="Middlename" SortExpression="Middlename" />
            <asp:BoundField DataField="Lastname" HeaderText="Lastname" SortExpression="Lastname" />
            <asp:BoundField DataField="BillingAddress" HeaderText="BillingAddress" SortExpression="BillingAddress" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            <asp:BoundField DataField="CustomerType" HeaderText="CustomerType" SortExpression="CustomerType" />
            <asp:TemplateField HeaderText="Valid ID">
            <ItemTemplate>
                <asp:CheckBox ID="chkbox6" Enabled="false" runat="server" Checked='<%# Convert.ToBoolean(Eval("ValidID")) %>' Text='<%# Eval("ValidID").ToString().Equals("True") ? "  " : "  " %>' />
            </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Authority To Move In">
            <ItemTemplate>
                <asp:CheckBox ID="chkbox7" Enabled="false" runat="server" Checked='<%# Convert.ToBoolean(Eval("AuthorityToMoveIn")) %>' Text='<%# Eval("AuthorityToMoveIn").ToString().Equals("True") ? "  " : "  " %>' />
            </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Passport">
            <ItemTemplate>
                <asp:CheckBox ID="chkbox8" Enabled="false" runat="server" Checked='<%# Convert.ToBoolean(Eval("Passport")) %>' Text='<%# Eval("Passport").ToString().Equals("True") ? "  " : "  " %>' />
            </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ICR Card">
            <ItemTemplate>
                <asp:CheckBox ID="chkbox9" Enabled="false" runat="server" Checked='<%# Convert.ToBoolean(Eval("ICRCard")) %>' Text='<%# Eval("ICRCard").ToString().Equals("True") ? "  " : "  " %>' />
            </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderStyle-Width="250">
                <ItemTemplate>
                        <%--<asp:LinkButton ID="lkbInfo2" OnClick="lkbInfo_Click" runat="server">Details </asp:LinkButton> | --%>
                        <asp:LinkButton ID="lkbUpdateInfo3" OnClick="lkbUpdateInfo_Click" runat="server"> Update Info</asp:LinkButton>
                    </ItemTemplate>
                <HeaderStyle Width="250px"></HeaderStyle>
                </asp:TemplateField>
        </Columns>
        <HeaderStyle BackColor="#FF8E01" ForeColor="Black" />
        <PagerStyle CssClass="pagination-ys" />
    </asp:GridView>
    
    
               <asp:GridView ID="GVLackingRequirementsTenant" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource7" AllowPaging="True" AllowSorting="True" CssClass="table table-bordered" EmptyDataText="No Customer with Lacking Requirements" OnRowDataBound="GVShowAll_RowDataBound" Visible="False">
                   <Columns>
                       <asp:BoundField DataField="AccountNumber" HeaderText="AccountNumber" SortExpression="AccountNumber" />
                       <asp:BoundField DataField="Firstname" HeaderText="Firstname" SortExpression="Firstname" />
                       <asp:BoundField DataField="Middlename" HeaderText="Middlename" SortExpression="Middlename" />
                       <asp:BoundField DataField="Lastname" HeaderText="Lastname" SortExpression="Lastname" />
                       <asp:BoundField DataField="BillingAddress" HeaderText="BillingAddress" SortExpression="BillingAddress" />
                       <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                       <asp:BoundField DataField="CustomerType" HeaderText="CustomerType" SortExpression="CustomerType" />
                       <asp:TemplateField HeaderText="Valid ID">
                        <ItemTemplate>
                            <asp:CheckBox ID="chkbox1" Enabled="false" runat="server" Checked='<%# Convert.ToBoolean(Eval("ValidID")) %>' Text='<%# Eval("ValidID").ToString().Equals("True") ? "  " : "  " %>' />
                        </ItemTemplate>
                        </asp:TemplateField>
                       <asp:TemplateField HeaderText="Authority To Move In">
                        <ItemTemplate>
                            <asp:CheckBox ID="chkbox2" Enabled="false" runat="server" Checked='<%# Convert.ToBoolean(Eval("AuthorityToMoveIn")) %>' Text='<%# Eval("AuthorityToMoveIn").ToString().Equals("True") ? "  " : "  " %>' />
                        </ItemTemplate>
                        </asp:TemplateField>
                       <asp:TemplateField HeaderText="Lease of Contract">
                        <ItemTemplate>
                            <asp:CheckBox ID="chkbox3" Enabled="false" runat="server" Checked='<%# Convert.ToBoolean(Eval("LeaseOfContract")) %>' Text='<%# Eval("LeaseOfContract").ToString().Equals("True") ? "  " : "  " %>' />
                        </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderStyle-Width="250">
                        <ItemTemplate>
                                <%--<asp:LinkButton ID="lkbInfo2" OnClick="lkbInfo_Click" runat="server">Details </asp:LinkButton> | --%>
                                <asp:LinkButton ID="lkbUpdateInfo3" OnClick="lkbUpdateInfo_Click" runat="server"> Update Info</asp:LinkButton>
                            </ItemTemplate>
                        <HeaderStyle Width="250px"></HeaderStyle>
                        </asp:TemplateField>
                   </Columns>
        <HeaderStyle BackColor="#FF8E01" ForeColor="Black" />
        <PagerStyle CssClass="pagination-ys" />
    </asp:GridView>
    
    
    <asp:TextBox ID="txtsearch" placeholder="Account Number" runat="server" CssClass="form form-control" AutoPostBack="True" OnTextChanged="txtsearch_TextChanged" Visible="False"></asp:TextBox>
    
    
    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT CustomerType.AccountNumber, Customer.Firstname, Customer.Middlename, Customer.Lastname, Customer.BillingAddress, Customer.Status, CustomerType.CustomerType, CustomerType.ValidID, CustomerType.AuthorityToMoveIn, CustomerType.LeaseOfContract FROM CustomerType LEFT OUTER JOIN Customer ON CustomerType.AccountNumber = Customer.AccountNumber WHERE (CustomerType.CustomerType = @CustomerType) AND (CustomerType.ValidID = @ValidID OR CustomerType.AuthorityToMoveIn = @AuthorityToMoveIn OR CustomerType.LeaseOfContract = @LeaseOfContract)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList2" DefaultValue="Tenant" Name="CustomerType" PropertyName="SelectedValue" />
            <asp:Parameter DefaultValue="false" Name="ValidID"></asp:Parameter>
            <asp:Parameter DefaultValue="false" Name="AuthorityToMoveIn"></asp:Parameter>
            <asp:Parameter DefaultValue="false" Name="LeaseOfContract"></asp:Parameter>
        </SelectParameters>
    </asp:SqlDataSource>
    
    
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT CustomerType.AccountNumber, Customer.Firstname, Customer.Middlename, Customer.Lastname, Customer.BillingAddress, Customer.Status, CustomerType.CustomerType, CustomerType.ValidID, CustomerType.AuthorityToMoveIn, CustomerType.Passport, CustomerType.ICRCard FROM CustomerType LEFT OUTER JOIN Customer ON CustomerType.AccountNumber = Customer.AccountNumber WHERE (CustomerType.CustomerType = @CustomerType) AND (CustomerType.ValidID = @ValidID OR CustomerType.AuthorityToMoveIn = @AuthorityToMoveIn OR CustomerType.Passport = @Passport OR CustomerType.ICRCard = @ICRCard)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList2" DefaultValue="Foreigner" Name="CustomerType" PropertyName="SelectedValue" />
            <asp:Parameter DefaultValue="false" Name="ValidID" />
            <asp:Parameter DefaultValue="false" Name="AuthorityToMoveIn"></asp:Parameter>
            <asp:Parameter DefaultValue="false" Name="Passport"></asp:Parameter>
            <asp:Parameter DefaultValue="false" Name="ICRCard"></asp:Parameter>
        </SelectParameters>
    </asp:SqlDataSource>
    
    
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT Customer.AccountNumber, Customer.Firstname, Customer.Middlename, Customer.Lastname, Customer.BillingAddress, Customer.Status, CustomerType.CustomerType, CustomerType.ValidID, CustomerType.AuthorityToMoveIn FROM Customer INNER JOIN CustomerType ON Customer.AccountNumber = CustomerType.AccountNumber WHERE (CustomerType.CustomerType = @CustomerType) AND (CustomerType.ValidID = @ValidID OR CustomerType.AuthorityToMoveIn = @AuthorityToMoveIn)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList2" DefaultValue="UnitOwner" Name="CustomerType" PropertyName="SelectedValue" />
            <asp:Parameter DefaultValue="false" Name="ValidID" />
            <asp:Parameter DefaultValue="false" Name="AuthorityToMoveIn"></asp:Parameter>
        </SelectParameters>
    </asp:SqlDataSource>
    
    
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT AccountNumber, Lastname, Firstname, BillingAddress, EmailAddress, ContactNumber, ContactNumber2, Status, ServicePlanName FROM Customer ORDER BY DateAdded ASC"></asp:SqlDataSource>
    
    
    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ExisConnectionString %>' SelectCommand="SELECT AccountNumber, Lastname, Firstname, CompanyName, BillingAddress, EmailAddress, ContactNumber, ContactNumber2, Status, DateAdded, ServicePlanName FROM Customer WHERE (Status = @Status) ORDER BY DateAdded DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Status" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    
    
    <asp:SqlDataSource runat="server" ID="SqlDataSource8" ConnectionString='<%$ ConnectionStrings:ExisConnectionString %>' SelectCommand="SELECT AccountNumber, Lastname, Firstname, CompanyName, BillingAddress, EmailAddress, ContactNumber, ContactNumber2, Status, DateAdded, ServicePlanName FROM Customer WHERE (Status = @Status) ORDER BY DateAdded DESC">
        <SelectParameters>
            <asp:Parameter DefaultValue="For Activation" Name="Status" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT AccountNumber, Firstname, Middlename, Lastname, Birthdate, CivilStatus, Gender, Nationality, CompanyName, BillingAddress, EmailAddress, ContactNumber, ContactNumber2, Status, DateAdded, ServicePlanName FROM Customer WHERE @TowerID=@TowerID AND UnitNo=@UnitNo">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddltower" PropertyName="SelectedValue" Name="TowerID"></asp:ControlParameter>
            <asp:ControlParameter ControlID="txtunitnumber" Name="UnitNo" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT [TowerID] FROM [Tower]"></asp:SqlDataSource>
    
    
    <asp:SqlDataSource runat="server" ID="SqlDataForDisconnection" ConnectionString='<%$ ConnectionStrings:ExisConnectionString %>' SelectCommand="SELECT AccountNumber, Lastname, Firstname, CompanyName, BillingAddress, EmailAddress, ContactNumber, ContactNumber2, Status, DateAdded, ServicePlanName FROM Customer WHERE (Status = @Status) ORDER BY DateAdded DESC">
        <SelectParameters>
            <asp:Parameter DefaultValue="For Disconnection" Name="Status" />
        </SelectParameters>
    </asp:SqlDataSource>
    
    
    <asp:SqlDataSource runat="server" ID="SqlDataForDisconnected" ConnectionString='<%$ ConnectionStrings:ExisConnectionString %>' SelectCommand="SELECT AccountNumber, Lastname, Firstname, CompanyName, BillingAddress, EmailAddress, ContactNumber, ContactNumber2, Status, DateAdded, ServicePlanName FROM Customer WHERE (Status = @Status) ORDER BY DateAdded DESC">
        <SelectParameters>
            <asp:Parameter DefaultValue="Disconnected" Name="Status" />
        </SelectParameters>
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
            <td class="datepicker-inline" style="width: 364px">Account Number :
                <asp:TextBox ID="txtaccountnumberdet2" runat="server" CssClass="form form-control" Enabled="false"></asp:TextBox>
            </td>
            <td>Billing Address :
                <asp:TextBox ID="txtbillingaddressdet2" runat="server" CssClass="form form-control" Width="387px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 364px">Name :
                <asp:TextBox ID="txtnamedet2" runat="server" CssClass="form form-control" Enabled="false" Width="268px"></asp:TextBox>
            </td>
            <td>Tower :
                <asp:DropDownList ID="ddltowerno" CssClass="form form-control" runat="server" Width="161px" Enabled="false" DataSourceID="SqlDataSource3" DataTextField="TowerID" DataValueField="TowerID"></asp:DropDownList>
            </td>
        </tr>
            <tr>
            <td class="datepicker-inline" style="width: 364px">Birth Date :<asp:TextBox ID="txtbirthdatedet2" runat="server" CssClass="form form-control" Enabled="false"></asp:TextBox>
            </td>
            <td>&nbsp;Unit No. :<asp:TextBox Enabled="false" ID="txtunitno" runat="server" CssClass="form form-control" Width="387px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 16px; width: 364px;">&nbsp;Civil Status :
                <asp:TextBox ID="txtcivilstatusdet2" runat="server" CssClass="form form-control" Enabled="false"></asp:TextBox>
            </td>
            <td style="height: 16px">Email Address :
                <asp:TextBox ID="txtemaildet2" runat="server" CssClass="form form-control" Width="224px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 364px">Gender :<asp:TextBox ID="txtgenderdet2" runat="server" CssClass="form form-control" Enabled="false"></asp:TextBox>
            </td>
            <td>&nbsp;Contact Number 1 :<asp:TextBox ID="txtcontactnumberdet2" runat="server" CssClass="form form-control" Width="220px" MaxLength="11"></asp:TextBox>
                <asp:RegularExpressionValidator ControlToValidate="txtcontactnumberdet2" ID="RegularExpressionValidator1" runat="server" CssClass="label label-warning" ErrorMessage="Invalid Phone Number" ValidationExpression="(\?\d{2}?\s?\d{3}\s?\d{3}\s?\d{4})|([0]\d{3}\s?\d{3}\s?\d{4})"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 364px">&nbsp;Nationality :<asp:TextBox ID="txtnationalitydet2" runat="server" CssClass="form form-control" Enabled="false"></asp:TextBox>
            </td>
            <td>&nbsp;Contact Number 2:<asp:TextBox ID="txtcontactnumber2det2" runat="server" CssClass="form form-control" Width="216px" MaxLength="11"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 364px">
            </td>
            <td>Status :
                <asp:TextBox ID="txtstatusdet2" runat="server" CssClass="form form-control" Enabled="false" Width="216px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 364px">Service Plan :<asp:TextBox ID="txtserviceplandet2" runat="server" CssClass="form form-control" Enabled="false" Width="225px"></asp:TextBox>
            &nbsp;&nbsp;
            <td>Date Applied :
                <asp:TextBox ID="txtdateapplieddet2" runat="server" CssClass="form form-control" Enabled="false" Width="216px"></asp:TextBox>
            </td>
        
        </tr>
                         <tr>
            <td class="datepicker-inline" style="width: 364px">
                <br />
                <br />
                <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:ExisConnectionString %>" SelectCommand="SELECT [ServicePlanName] FROM [ServicePlan]"></asp:SqlDataSource>
                             </td>
            <td>
                <br />
                Requirements : 
                <asp:DropDownList ID="ddlsets2" runat="server" Enabled="false">
                    <asp:ListItem>Unit Owner</asp:ListItem>
                    <asp:ListItem>Foreigner</asp:ListItem>
                    <asp:ListItem>Tenant</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <asp:CheckBox ID="chckvalidid2" runat="server" Enabled="true" Text=" Valid ID" />
                &nbsp;<asp:CheckBox ID="chckauthoritytomovein2" runat="server" Enabled="true" Text=" Authority to move in" />
                &nbsp;
                <br />
                <asp:CheckBox ID="chckpassport2" runat="server" Enabled="true" Text=" Passport" Visible="False" />
                <asp:CheckBox ID="chckicrcard2" runat="server" Enabled="true" Text=" ICR-card" Visible="False" />
                <asp:CheckBox ID="chchkloc2" runat="server" Enabled="true" Text=" Leases of Contract" Visible="False" />
                <br />
            </td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 364px">
            &nbsp;</td>
            <td>
                <br />
                <asp:Button ID="btnUpdateCustomerInfo" OnClick="btnUpdateCustomerInfo_Click" CssClass="btn btn-primary" runat="server" Text="Update" />
                <asp:Button ID="Button1" CssClass="btn btn-default" runat="server" Text="Cancel" />
            </td>
    </table>
                </div>
            </div>
        </div>
    </div>
    
    <!-- end of Update Modal -->
    <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:ExisConnectionString %>' SelectCommand="SELECT [TowerID] FROM [Tower] WHERE ([Status] = @Status)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Active" Name="Status" Type="String"></asp:Parameter>
                    </SelectParameters>
                </asp:SqlDataSource>

    <!--start of Upgrade modal-->
    <div id="Upgrade" class="modal fade bs-example-modal-sm" role="dialog">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">Upgrade Customer Service Plan<button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                      <table class="nav-justified">
        <tr>
            <td class="datepicker-inline" style="width: 364px">Account Number :
                <asp:TextBox ID="txtaccountnumberupgrade" runat="server" CssClass="form form-control" Enabled="false"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 364px">Name :
                <asp:TextBox ID="txtcustomernameupgrade" runat="server" CssClass="form form-control" Enabled="false" Width="225px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 364px">Current Service Plan :<asp:TextBox ID="txtcurrentserviceplanupgrade" runat="server" CssClass="form form-control" Enabled="false" Width="225px"></asp:TextBox>
            &nbsp;&nbsp;
                    
        </tr>
                         <tr>
            <td class="datepicker-inline" style="width: 364px">
                <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-control">
                    <asp:ListItem>Service Plan 2 (20 mbps)</asp:ListItem>
                    <asp:ListItem>Service Plan 3 (30 mbps)</asp:ListItem>
                </asp:DropDownList>
                <br />
                             </td>
        </tr>
        <tr>
            <td class="datepicker-inline" style="width: 364px">
                <asp:Button ID="btnSubmitUpgrade" OnClick="btnSubmitUpgrade_Click" CssClass="btn btn-primary" runat="server" Text="Upgrade" />
                <asp:Button ID="Button3" CssClass="btn btn-default" runat="server" Text="Cancel" />
            </td>
            </table>
                </div>
            </div>
        </div>
    </div>
    
    <!-- end of Upgrade Modal -->
    <!--start of ErrorUpgrade Modal-->
    <div id="ErrorUpgrade" class="modal fade bs-example-modal-lg" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content"><div class="modal-header">Alert<button type="button" class="close" data-dismiss="modal">&times;</button>
                <div class="modal-body">
                    <div class="alert alert-danger" role="alert">Customer must be Active first before you upgrade! </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <!--start of ErrorUpgrade Modal-->
    
    <!--start of ErrorOutstandingBalance Modal-->
    <div id="ErrorOutstandingBalance" class="modal fade bs-example-modal-lg" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content"><div class="modal-header">Alert<button type="button" class="close" data-dismiss="modal">&times;</button>
                <div class="modal-body">
                    <div class="alert alert-danger" role="alert">Customer must have no outstanding balance</div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <!--start of ErrorOutstandingBalance Modal-->
    
   
    <!--start of NNoAvailableUpgrade Modal-->
    <div id="NoAvailableUpgrade" class="modal fade bs-example-modal-lg" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content"><div class="modal-header">Alert<button type="button" class="close" data-dismiss="modal">&times;</button>
                <div class="modal-body">
                    <div class="alert alert-warning" role="alert">No Available Upgrade at this moment.</div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <!--start of NoAvailableUpgrade Modal-->
</asp:Content>