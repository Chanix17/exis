using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Exis.Model;

namespace Exis.View.Tech
{
    public partial class List : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            spnMyReq.DataBind();
            spnDone.DataBind();
            spnMyReq.DataBind();
            spnPending.DataBind();
            int day = 10;
            if(day > int.Parse(DateTime.Now.Day.ToString()))
            {
                txtDate.Text = "0" + DateTime.Now.Day.ToString() + "/0" + DateTime.Now.Month.ToString() + "/" + DateTime.Now.Year.ToString();
            }
            else
            {
                txtDate.Text = DateTime.Now.Day.ToString() + "/0" + DateTime.Now.Month.ToString() + "/" + DateTime.Now.Year.ToString();
            }

            DataClasses1DataContext db=new DataClasses1DataContext();
            //badge for open
            var copen=db.CountBadgeForActivationFromJobOrder();
            foreach (var countopen in copen)
            {
                spnMyReq.InnerText = countopen.Column1.ToString();
            }

            //badge for in progress
            var cinprog = db.CountBadgeForRepairAndOpenFromJobOrder("In Progress","For Activation");
            foreach (var countinprog in cinprog)
            {
                spnActive.InnerText = countinprog.Column1.ToString();
            }

            //badge for in pending
            var cpend = db.CountBadgeForRepairAndOpenFromJobOrder("Pending", "For Activation");
            foreach (var countpending in cpend)
            {
                spnPending.InnerText = countpending.Column1.ToString();
            }

            //badge for in done
            var cdone = db.CountBadgeForRepairAndOpenFromJobOrder("Done", "For Activation");
            foreach (var countdone in cdone)
            {
                spnDone.InnerText = countdone.Column1.ToString();
            }

        }

        protected void btnPending_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            GVActive.Visible = false;
            GVDone.Visible = false;
            GVPending.Visible = false;
            GridView1.DataBind();
        }

        protected void btnActive_Click(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            GVActive.Visible = true;
            GVDone.Visible = false;
            GVPending.Visible = false;
            GVActive.DataBind();
        }

        protected void btnDone_Click(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            GVActive.Visible = false;
            GVDone.Visible = true;
            GVPending.Visible = false;
            GVDone.DataBind();
        }
        protected void btnPending_Click1(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            GVActive.Visible = false;
            GVDone.Visible = false;
            GVPending.Visible = true;
            GVPending.DataBind();
        }

        public void refreshgridviews()
        {
            GridView1.DataBind();
            GVActive.DataBind();
            GVDone.DataBind();
            GVPending.DataBind();
            Response.Redirect("~/View/Tech/List");
        }

        protected void lkbAssign_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            GridViewRow gvr = (GridViewRow)btn.NamingContainer;
            txtJobId.Text = gvr.Cells[0].Text;
            if(gvr.Cells[5].ToString()==null)
            {
                txtTechnical.Text = "";
            }
            else
            {
                txtTechnical.Text = gvr.Cells[5].Text;
            }
            ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#Assign').modal();", true);
        }

        protected void lkbPrintJobOrder_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            GridViewRow gvr = (GridViewRow)btn.NamingContainer;
            DataClasses1DataContext db = new DataClasses1DataContext();
            var totalamount = db.SelectJobOrder(gvr.Cells[0].Text);
            ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", "var Mleft = (screen.width/2)-(760/2);var Mtop = (screen.height/2)-(700/2);window.open('/Print/JobOrderForm?JobOrderId=" + gvr.Cells[0].Text + "', null, 'fullscreen=yes,toolbar=no,scrollbars=yes,menubar=no,location=no,top=\'+Mtop+\', left=\'+Mleft+\'' );", true);
        }

        protected void btnAssign_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            db.AssignTechnical(txtJobId.Text, txtTechnical.Text);
            refreshgridviews();
            spnMyReq.DataBind();
            spnDone.DataBind();
            spnMyReq.DataBind();
            spnPending.DataBind();
        }

        protected void lkbStart_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            GridViewRow gvr = (GridViewRow)btn.NamingContainer;
            if (gvr.Cells[5].Text == "Not Yet Assigned")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#Error').modal();", true);
            }
            else
            {
                DataClasses1DataContext db = new DataClasses1DataContext();
                db.UpdateJobOrderStatus(gvr.Cells[0].Text, "In Progress");
                refreshgridviews();
            }
            
        }

        protected void lkbDoneJob_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            GridViewRow gvr = (GridViewRow)btn.NamingContainer;
            DataClasses1DataContext db = new DataClasses1DataContext();
            lbljoborderidsetactive.Text=gvr.Cells[0].Text;
            lblaccountnumbersetactive.Text=gvr.Cells[2].Text;
            ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#ActiveConfirmation').modal();", true);
        }

        protected void lkbPending_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            GridViewRow gvr = (GridViewRow)btn.NamingContainer;
            DataClasses1DataContext db = new DataClasses1DataContext();
            lbljoborderidremarks.Text = gvr.Cells[0].Text;
            ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#Pending').modal();", true);
        }

        protected void btnPendingremarks_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            db.UpdateJobOrderPending(lbljoborderidremarks.Text,txtremarks.Text, "Pending");
            refreshgridviews();
            spnMyReq.DataBind();
            spnDone.DataBind();
            spnMyReq.DataBind();
            spnPending.DataBind();
        }
        protected void btnSetDate_Click(object sender, EventArgs e)
        {
            
            refreshgridviews();
        }

        protected void txtDate_DataBinding(object sender, EventArgs e)
        {
            refreshgridviews();
        }

        protected void btnSubmitActive_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            db.UpdateJobOrderStatus(lbljoborderidsetactive.Text, "Done");
            db.UpdateCustomerActive(lblaccountnumbersetactive.Text);

            //set due date for the next billing
            //start of next bill of customer
            //start of count bill
            string billid;
            var countall = db.CountAllBill();
            foreach (var countall1 in countall)
            {
                int countallbill = int.Parse(countall1.Column1.ToString());
                int countallbilll = countallbill + 1;
                //end of count bill
                var totalamount0 = db.CountBill(lblaccountnumbersetactive.Text);
                foreach (var t0 in totalamount0)
                {
                    int user = int.Parse(t0.Column1.ToString());
                    int userr = user + 1;
                    //select plan of customer by accountid
                    var serviceplanbyaccount = db.SelectCustomer(lblaccountnumbersetactive.Text);
                    foreach (var serviceplan1 in serviceplanbyaccount)
                    {
                        //start of selecting planid
                        var totalamount01 = db.SelectServicePlanByPlanName(serviceplan1.ServicePlanName.ToString());
                        foreach (var t01 in totalamount01)
                        {
                            //condition for date 7th,14th,21st or 30th
                            //7th first
                            int datetoday = int.Parse(DateTime.Now.Day.ToString());
                            int nextmonth = int.Parse(DateTime.Now.Month.ToString()) + 1;
                            int nextyear = int.Parse(DateTime.Now.Year.ToString()) + 1;
                            int specialmonth = 2;
                            string duedate = "";
                            string duedateidentifier = "";
                            if (datetoday < 8)
                            {
                                if (nextyear >= int.Parse(DateTime.Now.Year.ToString()) && nextmonth != 13)
                                {
                                    duedate = nextmonth.ToString() + "/7/" + DateTime.Now.Year.ToString();
                                    duedateidentifier = "7";
                                }
                                else if (nextmonth == 13)
                                {
                                    duedate = "1/" + "7/" + nextyear.ToString();
                                    duedateidentifier = "7";
                                }
                            }
                            else if (datetoday >= 8 && datetoday <= 14)
                            {
                                if (nextyear >= int.Parse(DateTime.Now.Year.ToString()) && nextmonth != 13)
                                {
                                    duedate = nextmonth.ToString() + "/" + "14/" + DateTime.Now.Year.ToString();
                                    duedateidentifier = "14";
                                }
                                else if (nextmonth == 13)
                                {
                                    duedate = "1/" + "14/" + nextyear.ToString();
                                    duedateidentifier = "14";
                                }
                            }
                            else if (datetoday >= 15 && datetoday <= 21)
                            {
                                if (nextyear >= int.Parse(DateTime.Now.Year.ToString()) && nextmonth != 13)
                                {
                                    duedate = nextmonth.ToString() + "/" + "21/" + DateTime.Now.Year.ToString();
                                    duedateidentifier = "21";
                                }
                                else if (nextmonth == 13)
                                {
                                    duedate = "1/" + "21/" + nextyear.ToString();
                                    duedateidentifier = "21";
                                }
                            }
                            else if (datetoday >= 21 && datetoday <= 30)
                            {
                                if (int.Parse(DateTime.Now.Month.ToString()) == specialmonth)
                                {
                                    if (nextyear >= int.Parse(DateTime.Now.Year.ToString()) && nextmonth != 13)
                                    {
                                        duedate = nextmonth.ToString() + "/" + "28/" + DateTime.Now.Year.ToString();
                                        duedateidentifier = "28";
                                    }
                                }
                                else
                                {
                                    if (nextyear >= int.Parse(DateTime.Now.Year.ToString()) && nextmonth != 13)
                                    {
                                        duedate = nextmonth.ToString() + "/" + "30/" + DateTime.Now.Year.ToString();
                                        duedateidentifier = "30";
                                    }
                                    else if (nextmonth == 13)
                                    {
                                        duedate = "1/" + "30/" + nextyear.ToString();
                                        duedateidentifier = "30";
                                    }
                                }
                            }
                            // end of condition for date
                            billid = "Bill-" + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + DateTime.Now.Day.ToString() + "0" + countallbilll.ToString();

                            var customer = db.SelectBillingbyAccountNumber(lblaccountnumbersetactive.Text);
                            foreach (var customeracc in customer)
                            {
                                decimal totalduee = customeracc.TotalCurrentBill + customeracc.RemainingBalanceFromPreviousBill+decimal.Parse(customeracc.InstallationBalance.ToString());
                                db.InsertBillingInstallation(billid, lblaccountnumbersetactive.Text, DateTime.Now.ToString(), userr, 0, 0, 0, customeracc.RemainingBalanceFromPreviousBill, t01.ServicePlanID.ToString(), t01.Total, totalduee, duedate, duedateidentifier, "For Payment", customeracc.InstallationBalance);

                            }
                            db.UPDATEJobOrderToClosed(lblaccountnumbersetactive.Text);
                        }
                    }
                }
            }
            //end of count bill
            //end of first bill of client

            refreshgridviews();
            spnMyReq.DataBind();
            spnDone.DataBind();
            spnMyReq.DataBind();
            spnPending.DataBind();
        }

        protected void lkbReschedule_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            GridViewRow gvr = (GridViewRow)btn.NamingContainer;
            DataClasses1DataContext db = new DataClasses1DataContext();
            lbljoborderidresched.Text = gvr.Cells[0].Text;
            ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#Reschedule').modal();", true);
        }

        protected void btnSubmitResched_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            var checkschedforinstallation = db.CheckScheduleInstallationForToday("For Activation", "Open", txtDate.Text);
            foreach (var checkdayinstallation in checkschedforinstallation)
            {
                int countinstallation = int.Parse(checkdayinstallation.Column1.ToString());
                if (countinstallation == 5)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#FullSchedule').modal();", true);
                }
                else
                {
                    db.UpdateJobOrderResched(lbljoborderidresched.Text, txtDateResched.Text);
                    refreshgridviews();
                    ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#SuccessReschedule').modal();", true);
                }
            }
            spnMyReq.DataBind();
            spnDone.DataBind();
            spnMyReq.DataBind();
            spnPending.DataBind();
            
        }

        protected void lkbJoBOrderDetails_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            GridViewRow gvr = (GridViewRow)btn.NamingContainer;
            DataClasses1DataContext db = new DataClasses1DataContext();
            lbldetjobid.Text = gvr.Cells[0].Text;
            lbldetaccountnumber.Text = gvr.Cells[2].Text;
            lbldetjobtype.Text = gvr.Cells[1].Text;
            var selectaccount = db.SelectCustomer(gvr.Cells[2].Text);
            foreach (var saccount in selectaccount)
            {
                lbldetserviceplan.Text = saccount.ServicePlanName.ToString();
                lbldetaddress.Text = saccount.BillingAddress.ToString();
                var seljoborder = db.SelectJobOrder(gvr.Cells[0].Text);
                foreach (var job in seljoborder)
                {
                    txtdetdescription.Text = job.Description.ToString();
                    txtdetinstallationnotes.Text = job.InstallationNotes.ToString();
                    ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#Detail').modal();", true);
                }
                
            }
            spnMyReq.DataBind();
            spnDone.DataBind();
            spnMyReq.DataBind();
            spnPending.DataBind();
        }

   
    }
}