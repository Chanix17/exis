using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Exis.Model;
using System.Data;

namespace Exis.View.CSR
{
    public partial class List : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (DropDownList1.Text == "For Activation")
            {
                DropDownList2.Visible = false;

                GVLackingRequirementsForeigner.Visible = false;
                GVLackingRequirementsTenant.Visible = false;
                GVLackingRequirementsUnitOwner.Visible = false;
                GVShowAll.Visible = false;
                GridView1.Visible = false;
                GridView2.Visible = false;
                GridView3.Visible = true;
                GridViewForDisconnection.Visible = false;
                GridViewForDisconnected.Visible = false;

                lbltower.Visible = false;
                lblunitnumber.Visible = false;
                txtunitnumber.Visible = false;
                ddltower.Visible = false;
                btnsearch.Visible = false;
            }
            else if (DropDownList1.Text == "For Disconnection")
            {
                DropDownList2.Visible = false;

                GVLackingRequirementsForeigner.Visible = false;
                GVLackingRequirementsTenant.Visible = false;
                GVLackingRequirementsUnitOwner.Visible = false;
                GVShowAll.Visible = false;
                GridView1.Visible = false;
                GridView2.Visible = false;
                GridView3.Visible = false;
                GridViewForDisconnection.Visible = true;
                GridViewForDisconnected.Visible = false;

                lbltower.Visible = false;
                lblunitnumber.Visible = false;
                txtunitnumber.Visible = false;
                ddltower.Visible = false;
                btnsearch.Visible = false;
            }
            else if (DropDownList1.Text == "Disconnected")
            {
                DropDownList2.Visible = false;

                GVLackingRequirementsForeigner.Visible = false;
                GVLackingRequirementsTenant.Visible = false;
                GVLackingRequirementsUnitOwner.Visible = false;
                GVShowAll.Visible = false;
                GridView1.Visible = false;
                GridView2.Visible = false;
                GridView3.Visible = false;
                GridViewForDisconnection.Visible = false;
                GridViewForDisconnected.Visible = true;

                lbltower.Visible = false;
                lblunitnumber.Visible = false;
                txtunitnumber.Visible = false;
                ddltower.Visible = false;
                btnsearch.Visible = false;
            }
            else if (DropDownList1.Text == "Show All" && txtunitnumber.Text=="")
            {
                DropDownList2.Visible = false;

                GVLackingRequirementsForeigner.Visible = false;
                GVLackingRequirementsTenant.Visible = false;
                GVLackingRequirementsUnitOwner.Visible = false;
                GVShowAll.Visible = true;
                GridView1.Visible = false;
                GridView2.Visible = false;
                GridView3.Visible = false;
                GridViewForDisconnection.Visible = false;
                GridViewForDisconnected.Visible = false;

                lbltower.Visible = true;
                lblunitnumber.Visible = true;
                txtunitnumber.Visible = true;
                ddltower.Visible = true;
                btnsearch.Visible = true;
            }
            else if (DropDownList1.Text == "Show All" && txtunitnumber.Text != "")
            {
                DropDownList2.Visible = false;

                GVLackingRequirementsForeigner.Visible = false;
                GVLackingRequirementsTenant.Visible = false;
                GVLackingRequirementsUnitOwner.Visible = false;
                GVShowAll.Visible = false;
                GridView1.Visible = true;
                GridView2.Visible = false;
                GridViewForDisconnection.Visible = false;
                GridViewForDisconnected.Visible = false;
                GridView3.Visible = false;

                lbltower.Visible = true;
                lblunitnumber.Visible = true;
                txtunitnumber.Visible = true;
                ddltower.Visible = true;
                btnsearch.Visible = true;
            }
            else if (DropDownList1.Text == "Lacking Requirements" && DropDownList1.Text=="Unit Owner")
            {
                DropDownList2.Visible = true;

                GVLackingRequirementsForeigner.Visible = false;
                GVLackingRequirementsTenant.Visible = false;
                GVLackingRequirementsUnitOwner.Visible = true;
                GVShowAll.Visible = false;
                GridView1.Visible = false;
                GridView2.Visible = false;
                GridView3.Visible = false;
                GridViewForDisconnection.Visible = false;
                GridViewForDisconnected.Visible = false;

                lbltower.Visible = false;
                lblunitnumber.Visible = false;
                txtunitnumber.Visible = false;
                ddltower.Visible = false;
                btnsearch.Visible = false;
            }

            else if (DropDownList1.Text == "Lacking Requirements" && DropDownList1.Text == "Foreigner")
            {
                DropDownList2.Visible = true;

                GVLackingRequirementsForeigner.Visible = true;
                GVLackingRequirementsTenant.Visible = false;
                GVLackingRequirementsUnitOwner.Visible = false;
                GVShowAll.Visible = false;
                GridView1.Visible = false;
                GridView2.Visible = false;
                GridView3.Visible = false;
                GridViewForDisconnection.Visible = false;
                GridViewForDisconnected.Visible = false;

                lbltower.Visible = false;
                lblunitnumber.Visible = false;
                txtunitnumber.Visible = false;
                ddltower.Visible = false;
                btnsearch.Visible = false;
            }

            else if (DropDownList1.Text == "Lacking Requirements" && DropDownList1.Text == "Tenant")
            {
                DropDownList2.Visible = true;

                GVLackingRequirementsForeigner.Visible = false;
                GVLackingRequirementsTenant.Visible = true;
                GVLackingRequirementsUnitOwner.Visible = false;
                GVShowAll.Visible = false;
                GridView1.Visible = false;
                GridView2.Visible = false;
                GridView3.Visible = false;
                GridViewForDisconnection.Visible = false;
                GridViewForDisconnected.Visible = false;

                lbltower.Visible = false;
                lblunitnumber.Visible = false;
                txtunitnumber.Visible = false;
                ddltower.Visible = false;
                btnsearch.Visible = false;
                GridViewForDisconnection.Visible = false;
            }

            else if(DropDownList1.Text=="For Payment" || DropDownList1.Text=="Ready For Activation" || DropDownList1.Text=="Active" || DropDownList1.Text=="For Upgrade")
            {
                DropDownList2.Visible = false;

                GVLackingRequirementsForeigner.Visible = false;
                GVLackingRequirementsTenant.Visible = false;
                GVLackingRequirementsUnitOwner.Visible = false;
                GVShowAll.Visible = false;
                GridView1.Visible = false;
                GridView2.Visible = true;
                GridView3.Visible = false;
                GridViewForDisconnection.Visible = false;
                GridViewForDisconnected.Visible = false;

                lbltower.Visible = false;
                lblunitnumber.Visible = false;
                txtunitnumber.Visible = false;
                ddltower.Visible = false;
                btnsearch.Visible = false;
            }

            

            //check if customer type ends here.

            //if (txtsearch.Text == null)
            //{
            //    GridView1.Visible = true;
            //    GridView2.Visible = false;
            //    GridView1.DataBind();
            //}
            //else
            //{
            //    GridView1.Visible = false;
            //    GridView2.Visible = true;
            //    GridView2.DataBind();
            //}
            //if (DropDownList1.Text == "Show All")
            //{
            //    GridView1.Visible = false;
            //    GridView2.Visible = false;
            //    GVShowAll.Visible = true;
            //}
            //else
            //{
            //    GridView1.Visible = false;
            //    GridView2.Visible = true;
            //    GridView2.DataBind();
            //    GridView1.DataBind();
            //    GVShowAll.Visible = false;
            //}
        }

        protected void lkbUpdateInfo_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#Update').modal();", true);
            LinkButton btn = (LinkButton)sender;
            GridViewRow gvr = (GridViewRow)btn.NamingContainer;
            DataClasses1DataContext db = new DataClasses1DataContext();
            txtaccountnumberdet2.Text = gvr.Cells[0].Text;
            var totalamount = db.SelectCustomer(gvr.Cells[0].Text);
            foreach (var t in totalamount)
            {
                if (gvr.Cells[0].Text == t.AccountNumber.ToString())
                {
                    txtaccountnumberdet2.Text = t.AccountNumber.ToString();
                    txtbillingaddressdet2.Text = t.BillingAddress.ToString();
                    txtunitno.Text = t.UnitNo.ToString();
                    ddltowerno.SelectedValue = t.TowerID.ToString();
                    txtnamedet2.Text = t.Lastname.ToString() + "," + t.Firstname.ToString();
                    txtserviceplandet2.Text = t.ServicePlanName.ToString();
                    txtcivilstatusdet2.Text = t.CivilStatus.ToString();
                    txtgenderdet2.Text = t.Gender.ToString();
                    txtnationalitydet2.Text = t.Nationality.ToString();
                    txtbirthdatedet2.Text = t.Birthdate.ToString();
                    txtemaildet2.Text = t.EmailAddress.ToString();
                    txtcontactnumberdet2.Text = t.ContactNumber.ToString();
                    txtcontactnumber2det2.Text = t.ContactNumber2.ToString();
                    txtstatusdet2.Text = t.Status.ToString();
                    txtdateapplieddet2.Text = t.DateAdded.ToString();
                }
            }

            var ctype = db.SelectCustomerType(gvr.Cells[0].Text);
            foreach (var c in ctype)
            {
                ddlsets2.Text = c.CustomerType.ToString();
                if (ddlsets2.Text == "Unit Owner")
                {
                    chckpassport2.Visible = false;
                    chckicrcard2.Visible = false;
                    chchkloc2.Visible = false;
                    if (c.ValidID.ToString() == "true")
                    {
                        chckvalidid2.Checked = true;
                    }
                    else
                    {
                        chckvalidid2.Checked = false;
                    }
                    if (c.AuthorityToMoveIn.ToString() == "true")
                    {
                        chckauthoritytomovein2.Checked = true;
                    }
                    else
                    {
                        chckauthoritytomovein2.Checked = false;
                    }
                }
                else if (ddlsets2.Text == "Foreigner")
                {
                    chckpassport2.Visible = true;
                    chckicrcard2.Visible = true;
                    chchkloc2.Visible = false;
                    if (c.ValidID.ToString() == "true")
                    {
                        chckvalidid2.Checked = true;
                    }
                    else
                    {
                        chckvalidid2.Checked = false;
                    }
                    if (c.AuthorityToMoveIn.ToString() == "true")
                    {
                        chckauthoritytomovein2.Checked = true;
                    }
                    else
                    {
                        chckauthoritytomovein2.Checked = false;
                    }
                    if (c.Passport.ToString() == "true")
                    {
                        chckpassport2.Checked = true;
                    }
                    else
                    {
                        chckpassport2.Checked = false;
                    }
                    if (c.ICRCard.ToString() == "true")
                    {
                        chckicrcard2.Checked = true;
                    }
                    else
                    {
                        chckicrcard2.Checked = false;
                    }
                }
                else if (ddlsets2.Text == "Tenant")
                {
                    chchkloc2.Visible = true;
                    chckpassport2.Visible = false;
                    chckicrcard2.Visible = false;
                    if (c.ValidID.ToString() == "true")
                    {
                        chckvalidid2.Checked = true;
                    }
                    else
                    {
                        chckvalidid2.Checked = false;
                    }
                    if (c.AuthorityToMoveIn.ToString() == "true")
                    {
                        chckauthoritytomovein2.Checked = true;
                    }
                    else
                    {
                        chckauthoritytomovein2.Checked = false;
                    }
                    if (c.LeaseOfContract.ToString() == "true")
                    {
                        chchkloc2.Checked = true;
                    }
                    else
                    {
                        chchkloc2.Checked = false;
                    }
                }
            }
        }

        protected void lkbCreateJobOrder_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            GridViewRow gvr = (GridViewRow)btn.NamingContainer;
            Session["accnumbjob"] = gvr.Cells[0].Text;
            Session["serviceplancreatejoborder"] = gvr.Cells[4].Text;
            Session["jobordertypefordisconnecton"] = "For Activation";
            //if(gvr.Cells[5].Text == "For Activation")
            //{
            //    Session["setToActivation"] = "true";
            //}
            //else
            //{

            //}
            Response.Redirect("~/View/CSR/CreateJobOrder");
        }

        protected void lkbInfo_Click(object sender, EventArgs e)
        {
            //ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#Detail').modal();", true);
            //LinkButton btn = (LinkButton)sender;
            //GridViewRow gvr = (GridViewRow)btn.NamingContainer;
            //DataClasses1DataContext db = new DataClasses1DataContext();
            //txtaccountnumberdet.Text = gvr.Cells[0].Text;
            //var totalamount = db.SelectCustomer(gvr.Cells[0].Text);
            //foreach (var t in totalamount)
            //{
            //    if (gvr.Cells[0].Text == t.AccountNumber.ToString())
            //    {
            //        ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#Detail').modal();", true);
            //        txtaccountnumberdet.Text = t.AccountNumber.ToString();
            //        txtbilladdressdet.Text = t.BillingAddress.ToString();
            //        txtunitnodet.Text = t.UnitNo.ToString();
            //        txttowerdet.Text= t.TowerID.ToString();
            //        txtnamedet.Text = t.Lastname.ToString() + "," + t.Firstname.ToString();
            //        txtserviceplandet.Text = t.ServicePlanName.ToString();
            //        txtcivilstatusdet.Text = t.CivilStatus.ToString();
            //        txtgenderdet.Text = t.Gender.ToString();
            //        txtnationalitydet.Text = t.Nationality.ToString();
            //        txtbirthdatedet.Text = t.Birthdate.ToString();
            //        txtemaildet.Text = t.EmailAddress.ToString();
            //        txtcontact1det.Text = t.ContactNumber.ToString();
            //        txtcontact2det.Text = t.ContactNumber2.ToString();
            //        txtstatusdet.Text = t.Status.ToString();
            //        txtdateapplieddet.Text = t.DateAdded.ToString();

            //        //start of retreiving data from customertype
            //        var ctype = db.SelectCustomerType(gvr.Cells[0].Text);
            //        foreach (var c in ctype)
            //        {
            //            ddlsets1.Text = c.CustomerType.ToString();
            //            if(ddlsets1.Text=="Unit Owner")
            //            {
            //                if(c.ValidID.ToString()=="true")
            //                {
            //                    chckvalidid1.Checked = true;
            //                }
            //                if (c.AuthorityToMoveIn.ToString() == "true")
            //                {
            //                    chckauthoritytomovein1.Checked = true;
            //                }
            //            }
            //            else if (ddlsets1.Text == "Foreigner")
            //            {
            //                if (c.AuthorityToMoveIn.ToString() == "true")
            //                {
            //                    chckvalidid1.Checked = true;
            //                }
            //                if (c.AuthorityToMoveIn.ToString() == "true")
            //                {
            //                    chckauthoritytomovein1.Checked = true;
            //                }
            //                if (c.Passport.ToString() == "true")
            //                {
            //                    chckpassport1.Checked = true;
            //                }
            //                if (c.ICRCard.ToString() == "true")
            //                {
            //                    chckicrcard1.Checked = true;
            //                }
            //            }
            //            else if (ddlsets1.Text == "Tenant")
            //            {
            //                if (c.AuthorityToMoveIn.ToString() == "true")
            //                {
            //                    chckvalidid1.Checked = true;
            //                }
            //                if (c.AuthorityToMoveIn.ToString() == "true")
            //                {
            //                    chckauthoritytomovein1.Checked = true;
            //                }
            //                if (c.LeaseOfContract.ToString() == "true")
            //                {
            //                    loc1.Checked = true;
            //                }
            //            }
            //        }
            //        //check if customer type starts here
            //        if (ddlsets1.Text == "Foreigner")
            //        {
            //            chckpassport1.Visible = true;
            //            chckicrcard1.Visible = true;
            //            loc1.Visible = false;
            //        }
            //        else if (ddlsets1.Text == "Tenant")
            //        {
            //            loc1.Visible = true;
            //            chckpassport1.Visible = false;
            //            chckicrcard1.Visible = false;
            //        }
            //        else
            //        {
            //            chckpassport1.Visible = false;
            //            chckicrcard1.Visible = false;
            //            loc1.Visible = false;
            //        }
            //        GridView1.DataBind();
            //        GridView2.DataBind();
            //        GVShowAll.DataBind();
            //    }
            //}
        }

        protected void btnUpdateCustomerInfo_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            db.UpdateCustomer(txtaccountnumberdet2.Text,"", txtbillingaddressdet2.Text,ddltowerno.Text,txtunitno.Text, txtemaildet2.Text, txtcontactnumberdet2.Text, txtcontactnumber2det2.Text);
            string validid2;
            if(chckvalidid2.Checked==true)
            {
                validid2="true";
            }
            else
            {
                validid2="false";
            }
            string authoritytomovein2;
            if(chckauthoritytomovein2.Checked == true)
            {
                authoritytomovein2="true";
            }
            else
            {
                authoritytomovein2 = "false";
            }
            string passport2;
            if(chckpassport2.Checked==true)
            {
                passport2 = "true";
            }
            else
            {
                passport2 = "false";
            }
            string icrcard2;
            if(chckicrcard2.Checked==true)
            {
                icrcard2="true";
            }
            else
            {
                icrcard2 = "false";
            }
            string loc2;
            if(chchkloc2.Checked==true)
            {
                loc2="true";
            }
            else
            {
                loc2 = "false";
            }
            db.UpdateCustomerType(txtaccountnumberdet2.Text, validid2, authoritytomovein2, passport2, icrcard2, loc2);
            GridView1.DataBind();
            GridView2.DataBind();
            GVShowAll.DataBind();
            GVLackingRequirementsForeigner.DataBind();
            GVLackingRequirementsTenant.DataBind();
            GVLackingRequirementsUnitOwner.DataBind();
        }

        protected void btnSearchAccountNumber_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            GridView2.Visible = false;
            GVShowAll.Visible = false;
            GridView2.DataBind();
            GridView1.DataBind();
        }

        protected void txtsearch_TextChanged(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            GridView2.Visible = false;
            GridView2.DataBind();
            GridView1.DataBind();
            GVShowAll.Visible = false;
        }

        protected void GVShowAll_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //if (e.Row.RowType == DataControlRowType.DataRow)
            //{
            //    DataRowView drv = e.Row.DataItem as DataRowView;
            //    if (drv["ValidID"].ToString().Equals("false"))
            //    {
            //        e.Row.DataItem = "Lacking";
            //        e.Row.ForeColor = System.Drawing.Color.Red;
            //    }
            //    if (drv["AuthorityToMoveIn"].ToString().Equals("false"))
            //    {
            //        e.Row.DataItem = "Lacking";
            //        e.Row.ForeColor = System.Drawing.Color.Red;
            //    }
            //}
        }

        protected void ddlsets_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList2.Text == "Unit Owner")
            {
                GVLackingRequirementsForeigner.Visible = false;
                GVLackingRequirementsTenant.Visible = false;
                GVLackingRequirementsUnitOwner.Visible = true;
                GVShowAll.Visible = false;
                GridView1.Visible = false;
                GridView2.Visible = false;
                GridView3.Visible = false;
            }
            else if (DropDownList2.Text == "Foreigner")
            {
                GVLackingRequirementsForeigner.Visible = true;
                GVLackingRequirementsTenant.Visible = false;
                GVLackingRequirementsUnitOwner.Visible = false;
                GVShowAll.Visible = false;
                GridView1.Visible = false;
                GridView2.Visible = false;
                GridView3.Visible = false;
            }
            else if (DropDownList2.Text == "Tenant")
            {
                GVLackingRequirementsForeigner.Visible = false;
                GVLackingRequirementsTenant.Visible = true;
                GVLackingRequirementsUnitOwner.Visible = false;
                GVShowAll.Visible = false;
                GridView1.Visible = false;
                GridView2.Visible = false;
                GridView3.Visible = false;
            }
        }

        protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
        {
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.Text == "Lacking Requirements")
            {
                DropDownList2.Visible = true;

                GVLackingRequirementsForeigner.Visible = false;
                GVLackingRequirementsTenant.Visible = false;
                GVLackingRequirementsUnitOwner.Visible = true;
                GVShowAll.Visible = false;
                GridView1.Visible = false;
                GridView2.Visible = false;
                GridView3.Visible = false;

                lbltower.Visible = false;
                lblunitnumber.Visible = false;
                txtunitnumber.Visible = false;
                ddltower.Visible = false;
                btnsearch.Visible = false;
            }
            else
            {
                DropDownList2.Visible = false;
            }
        }

        protected void txtunitnumber_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            lbltower.Visible = true;
            lblunitnumber.Visible = true;
            txtunitnumber.Visible = true;
            ddltower.Visible = true;
            btnsearch.Visible = true;

            GVLackingRequirementsForeigner.Visible = false;
            GVLackingRequirementsTenant.Visible = false;
            GVLackingRequirementsUnitOwner.Visible = false;
            GVShowAll.Visible = false;
            GridView1.Visible = true;
            GridView2.Visible = false;
            GridView3.Visible = false;
        }

        protected void lkbUpgradeServicePlan_Click(object sender, EventArgs e)
        {
            
            ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#Update').modal();", true);
        }
        decimal outstandingbalance;
        string cserviceplan;
        protected void lkbUpgradeServicePlan_Click1(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();

            LinkButton btn = (LinkButton)sender;
            GridViewRow gvr = (GridViewRow)btn.NamingContainer;
            var selectbill = db.SelectBillingbyAccountNumberandStatusForPayment(gvr.Cells[0].Text);
            foreach(var selectoutstangbalance in selectbill)
            {
                outstandingbalance = selectoutstangbalance.RemainingBalanceFromPreviousBill;
            }
            var selectcustomer = db.SelectCustomer(gvr.Cells[0].Text);
            foreach(var selectedcustomer in selectcustomer)
            {
                cserviceplan=selectedcustomer.ServicePlanName;
            }
            if (gvr.Cells[4].Text == "Active" && outstandingbalance == 0)
            {
                if (cserviceplan == "Service Plan 1 (10 mbps)")
                {

                }
                else if (cserviceplan == "Service Plan 2 (20 mbps)")
                {
                    DropDownList4.Items.Remove("Service Plan 2 (20 mbps)");
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#NoAvailableUpgrade').modal();", true);
                }
                txtaccountnumberupgrade.Text = gvr.Cells[0].Text;
                txtcustomernameupgrade.Text = gvr.Cells[1].Text + "," + gvr.Cells[2].Text;
                txtcurrentserviceplanupgrade.Text = gvr.Cells[3].Text;

                ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#Upgrade').modal();", true);
                
            }
            else if(outstandingbalance!=0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#ErrorOutstandingBalance').modal();", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#ErrorUpgrade').modal();", true);
            }

        }
        decimal svplantotal1;
        string svplanid1;
        protected void btnSubmitUpgrade_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            
            var selectsvplan = db.SelectServicePlanByPlanName(DropDownList4.Text);
            foreach (var svplan in selectsvplan)
            {
                svplantotal1 = decimal.Parse(svplan.Total.ToString());
                svplanid1 = svplan.ServicePlanID;
            }
            db.UpdateCustomerServicePlanByCSR(txtaccountnumberupgrade.Text, DropDownList4.Text);
            db.UpdateBillingFromCSRbyAccountNumberandForPayment(txtaccountnumberupgrade.Text, svplantotal1, svplantotal1, svplanid1);
            GridView1.DataBind();
            GridView2.DataBind();
            GridView3.DataBind();
            GVShowAll.DataBind();
        }

        protected void lkbCreateJobOrderForDisconnection_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            GridViewRow gvr = (GridViewRow)btn.NamingContainer;
            Session["accnumbjob"] = gvr.Cells[0].Text;
            Session["serviceplancreatejoborder"] = gvr.Cells[4].Text;
            Session["jobordertypefordisconnecton"] = "For Disconnection";
            //if(gvr.Cells[5].Text == "For Activation")
            //{
            //    Session["setToActivation"] = "true";
            //}
            //else
            //{

            //}
            Response.Redirect("~/View/CSR/CreateJobOrder");
        }
    }
}