using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Exis.Model;
using System.Net.Mail;
using System.Data;

namespace Exis.View.Cashier
{
    public partial class ForPayment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMonth.Text = DateTime.Now.Month.ToString();
            lblDate.Text = DateTime.Now.Day.ToString();
            lblYear.Text = DateTime.Now.Year.ToString();


            if (lblMonth.Text == "2" && DropDownList1.Text != "28th of the month")
            {
                DropDownList1.Items.Remove("28th of the month");
                //DropDownList1.Items.Remove("30th of the month");
            }
            else if (lblMonth.Text != "2" && DropDownList1.Text == "30th of the month")
            {
                DropDownList1.Items.Remove("28th of the month");
                //DropDownList1.Items.Add("30th of the month");
            }

            if (DropDownList1.Text == "For Activation")
            {
                lbldatetoday.Text = "";
                if (txtunitnumber.Text == "")
                {
                    GvForPayment.Visible = true;
                    GVPastDue.Visible = false;
                    GV14th.Visible = false;
                    GV21st.Visible = false;
                    GV28th.Visible = false;
                    GV30th.Visible = false;
                    GV7th.Visible = false;
                    txtsearch.Visible = false;

                    GV14thwithsearch.Visible = false;
                    GV21stwithsearch.Visible = false;
                    GV28thwithsearch.Visible = false;
                    GV30thwithsearch.Visible = false;
                    GV7thwithsearch.Visible = false;
                    GvForPaymentwithSearch.Visible = false;
                }
                else
                {
                    GvForPayment.Visible = false;
                    GVPastDue.Visible = false;
                    GV14th.Visible = false;
                    GV21st.Visible = false;
                    GV28th.Visible = false;
                    GV30th.Visible = false;
                    GV7th.Visible = false;
                    txtsearch.Visible = false;

                    GV14thwithsearch.Visible = false;
                    GV21stwithsearch.Visible = false;
                    GV28thwithsearch.Visible = false;
                    GV30thwithsearch.Visible = false;
                    GV7thwithsearch.Visible = false;
                    GvForPaymentwithSearch.Visible = true;
                }
            }
            else if (DropDownList1.Text == "7th of the month")
            {
                lbldatetoday.Text = DateTime.Now.Month.ToString() + "/7/" + DateTime.Now.Year.ToString();
                GvForPayment.Visible = false;
                GVPastDue.Visible = false;
                GV14th.Visible = false;
                GV21st.Visible = false;
                GV28th.Visible = false;
                GV30th.Visible = false;
                GvForPaymentwithSearch.Visible = false;

                if (txtunitnumber.Text == "")
                {
                    GV14thwithsearch.Visible = false;
                    GV21stwithsearch.Visible = false;
                    GV28thwithsearch.Visible = false;
                    GV30thwithsearch.Visible = false;
                    GV7thwithsearch.Visible = false;
                    GV7th.Visible = true;
                }
                else
                {
                    GV14thwithsearch.Visible = false;
                    GV21stwithsearch.Visible = false;
                    GV28thwithsearch.Visible = false;
                    GV30thwithsearch.Visible = false;
                    GV7thwithsearch.Visible = true;
                    GV7th.Visible = false;
                }
            }
            else if (DropDownList1.Text == "14th of the month")
            {
                lbldatetoday.Text = DateTime.Now.Month.ToString() + "/14/" + DateTime.Now.Year.ToString();
                GvForPayment.Visible = false;
                GVPastDue.Visible = false;
                GV21st.Visible = false;
                GV28th.Visible = false;
                GV30th.Visible = false;
                GV7th.Visible = false;
                GvForPaymentwithSearch.Visible = false;

                if (txtunitnumber.Text == "")
                {
                    GV14thwithsearch.Visible = false;
                    GV21stwithsearch.Visible = false;
                    GV28thwithsearch.Visible = false;
                    GV30thwithsearch.Visible = false;
                    GV7thwithsearch.Visible = false;
                    GV14th.Visible = true;
                }
                else
                {
                    GV14thwithsearch.Visible = true;
                    GV21stwithsearch.Visible = false;
                    GV28thwithsearch.Visible = false;
                    GV30thwithsearch.Visible = false;
                    GV7thwithsearch.Visible = false;
                    GV14th.Visible = false;
                }
            }
            else if (DropDownList1.Text == "21st of the month")
            {
                lbldatetoday.Text = DateTime.Now.Month.ToString() + "/21/" + DateTime.Now.Year.ToString();
                GvForPayment.Visible = false;
                GvForPaymentwithSearch.Visible = false;
                GVPastDue.Visible = false;
                GV14th.Visible = false;
                GV28th.Visible = false;
                GV30th.Visible = false;
                GV7th.Visible = false;

                if (txtunitnumber.Text == "")
                {
                    GV14thwithsearch.Visible = false;
                    GV21stwithsearch.Visible = false;
                    GV28thwithsearch.Visible = false;
                    GV30thwithsearch.Visible = false;
                    GV7thwithsearch.Visible = false;
                    GV21st.Visible = true;
                }
                else
                {
                    GV14thwithsearch.Visible = false;
                    GV21stwithsearch.Visible = true;
                    GV28thwithsearch.Visible = false;
                    GV30thwithsearch.Visible = false;
                    GV7thwithsearch.Visible = false;
                    GV21st.Visible = false;
                }
            }
            else if (DropDownList1.Text == "30th of the month")
            {
                DateTime datecheck7limit=DateTime.Parse(DateTime.Now.Month.ToString()+"/7/"+DateTime.Now.Year.ToString());
                if(DateTime.Now < datecheck7limit)
                {
                    int datemonth = int.Parse(DateTime.Now.Month.ToString()) - 1;
                    if (datemonth == 0)
                    {
                        lbldatetoday.Text = "12/30/" + DateTime.Now.Year.ToString();
                    }
                    else
                    {
                        lbldatetoday.Text = datemonth.ToString()+"/30/" + DateTime.Now.Year.ToString();
                    }
                }
                else
                {
                    lbldatetoday.Text = DateTime.Now.Month.ToString() + "/30/" + DateTime.Now.Year.ToString();
                }
                GvForPayment.Visible = false;
                GvForPaymentwithSearch.Visible = false;
                GVPastDue.Visible = false;
                GV14th.Visible = false;
                GV21st.Visible = false;
                GV28th.Visible = false;
                GV7th.Visible = false;

                if (txtunitnumber.Text == "")
                {
                    GV14thwithsearch.Visible = false;
                    GV21stwithsearch.Visible = false;
                    GV28thwithsearch.Visible = false;
                    GV30thwithsearch.Visible = false;
                    GV7thwithsearch.Visible = false;
                    GV30th.Visible = true;
                }
                else
                {
                    GV14thwithsearch.Visible = false;
                    GV21stwithsearch.Visible = false;
                    GV28thwithsearch.Visible = false;
                    GV30thwithsearch.Visible = true;
                    GV7thwithsearch.Visible = false;
                    GV30th.Visible = false;
                }
            }
            else if (DropDownList1.Text == "28th of the month")
            {
                lbldatetoday.Text = DateTime.Now.Month.ToString() + "/28/" + DateTime.Now.Year.ToString();
                GvForPayment.Visible = false;
                GvForPaymentwithSearch.Visible = false;
                GVPastDue.Visible = false;
                GV14th.Visible = false;
                GV21st.Visible = false;
                GV30th.Visible = false;
                GV7th.Visible = false;

                if (txtunitnumber.Text == "")
                {
                    GV14thwithsearch.Visible = false;
                    GV21stwithsearch.Visible = false;
                    GV28thwithsearch.Visible = false;
                    GV30thwithsearch.Visible = false;
                    GV7thwithsearch.Visible = false;
                    GV28th.Visible = true;
                }
                else
                {
                    GV14thwithsearch.Visible = false;
                    GV21stwithsearch.Visible = false;
                    GV28thwithsearch.Visible = true;
                    GV30thwithsearch.Visible = false;
                    GV7thwithsearch.Visible = false;
                    GV28th.Visible = false;
                }
            }

            //GvForPayment.Visible = true;
            //GVPastDue.Visible = false;
            //GV14th.Visible = false;
            //GV21st.Visible = false;
            //GV28th.Visible = false;
            //GV30th.Visible = false;
            //GV7th.Visible = false;
            //txtDate.Text=DateTime.Now.ToString("dddd, dd MMMM yyyy");
            //txtDate.Text = DateTime.Now.Day.ToString() + "/0" + DateTime.Now.Month.ToString() + "/" + DateTime.Now.Year.ToString();
        }
        string selectedbill;
        protected void lkbAcceptPayment_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            GridViewRow gvr = (GridViewRow)btn.NamingContainer;
            lblbillid.Text = gvr.Cells[0].Text;
            lblAccountNumber.Text = gvr.Cells[1].Text;
            lblcurrentbill.Text = gvr.Cells[5].Text;
            DataClasses1DataContext db = new DataClasses1DataContext();

            //select billing to get the installationbalance
            var selectbill = db.SelectBillingbyAccountNumber(gvr.Cells[1].Text);
            foreach (var selbill in selectbill)
            {
                selectedbill = selbill.InstallationBalance.ToString();
            }

            lblinstallationfee.Text = selectedbill;
            decimal totaldue = decimal.Parse(lblinstallationfee.Text) + decimal.Parse(lblcurrentbill.Text);
            lbltotalamountdue.Text = totaldue.ToString();

            ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#Payment').modal();", true);
        }

        protected void btnPay_Click(object sender, EventArgs e)
        {
            double balance = double.Parse(lbltotalamountdue.Text) - double.Parse(txtcash.Text);
            if (double.Parse(txtcash.Text) < double.Parse(lblcurrentbill.Text))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#InsufficientAmountofMoneyPaid').modal();", true);
            }
            else if (double.Parse(txtcash.Text) >= double.Parse(lblcurrentbill.Text))
            {
                double installationbalance1 = balance;

                DataClasses1DataContext db = new DataClasses1DataContext();
                db.UpdateBillPaid(lblbillid.Text, "For Activation", decimal.Parse(txtcash.Text));
                db.UpdateRemainingBalanceFromPreviousBill(0, lblAccountNumber.Text, Convert.ToDecimal(installationbalance1));
                db.UpdateCustomertoForActivation(lblAccountNumber.Text);
                txtcash.Text = "";
                GvForPayment.DataBind();

                //start of send email////Send Email Starts here
                //var accn = db.SelectCustomer(lblAccountNumber.Text);
                //foreach (var accnumber in accn)
                //{
                //    System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
                //    mail.To.Add("chanix.index@gmail.com,rney.index@gmail.com");
                //    mail.From = new MailAddress("chanix.index@gmail.com", "New Customer Paid his/her first bill!", System.Text.Encoding.UTF8);
                //    mail.Subject = "New Customer added to the System named" + "" + accnumber.Lastname + "," + accnumber.Firstname;
                //    mail.SubjectEncoding = System.Text.Encoding.UTF8;
                //    //count total number of customers in the system
                //    var totalamount2 = db.CountCustomer();
                //    foreach (var c in totalamount2)
                //    {
                //        int user = int.Parse(c.Column1.ToString());
                //        mail.Body = "Total Number of Customers " + user.ToString();
                //    }
                //    mail.BodyEncoding = System.Text.Encoding.UTF8;
                //    mail.IsBodyHtml = true;
                //    mail.Priority = MailPriority.High;
                //    SmtpClient client = new SmtpClient();
                //    client.Credentials = new System.Net.NetworkCredential("exisitservice@gmail.com", "Chanickx20*");
                //    client.Port = 587;
                //    client.Host = "smtp.gmail.com";
                //    client.EnableSsl = true;
                //    try
                //    {
                //        client.Send(mail);
                //    }
                //    catch (Exception ex)
                //    {
                //        Exception ex2 = ex;
                //        string errorMessage = string.Empty;
                //        while (ex2 != null)
                //        {
                //            errorMessage += ex2.ToString();
                //            ex2 = ex2.InnerException;
                //        }
                //    }
                //}
                //end of send email
                //Response.Redirect("~/View/Cashier/ForPayment");
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {

        }

        protected void lkbPrintBill_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            GridViewRow gvr = (GridViewRow)btn.NamingContainer;
            DataClasses1DataContext db = new DataClasses1DataContext();
            //var totalamount = db.SelectJobOrder(gvr.Cells[0].Text);
            ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", "var Mleft = (screen.width/2)-(760/2);var Mtop = (screen.height/2)-(700/2);window.open('/Print/Installation?BillID=" + gvr.Cells[0].Text + "', null, 'fullscreen=yes,status=yes,toolbar=no,scrollbars=yes,menubar=no,location=no,top=\'+Mtop+\', left=\'+Mleft+\'' );", true);
        }

        protected void btnDueToday_Click(object sender, EventArgs e)
        {

        }

        protected void btnPastDue_Click(object sender, EventArgs e)
        {
            GvForPayment.Visible = false;
            GVPastDue.Visible = true;
            GV14th.Visible = false;
            GV21st.Visible = false;
            GV28th.Visible = false;
            GV30th.Visible = false;
            GV7th.Visible = false;
        }
        DateTime duedateforlate;
        decimal sbillinstallationfee;
        decimal penaltyfrompreviousbalancedisplay;
        decimal currenttotalbillcheck;
        decimal currentbalancecheck;
        decimal currentpenaltycheck;
        string currentplancheck;
        decimal x2currentplan;
        protected void lkbAcceptpaymentforbill_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            GridViewRow gvr = (GridViewRow)btn.NamingContainer;
            lblbillingidanotherpayment.Text = gvr.Cells[0].Text;
            lblaccountnumberanotherpayment.Text = gvr.Cells[1].Text;
            lblremainingbalanceanotherpayment.Text = gvr.Cells[4].Text;
            lbltotalcurrentbillanotherpayment.Text = gvr.Cells[6].Text;

            DataClasses1DataContext db = new DataClasses1DataContext();
            var selectbillforins = db.SelectBillID(gvr.Cells[0].Text);
            foreach (var sbillforins in selectbillforins)
            {
                sbillinstallationfee = decimal.Parse(sbillforins.InstallationBalance.ToString());
                penaltyfrompreviousbalancedisplay = decimal.Parse(sbillforins.BalanceFromPreviousBill.ToString());

                //checking
                currentbalancecheck = decimal.Parse(sbillforins.RemainingBalanceFromPreviousBill.ToString());
                currenttotalbillcheck = decimal.Parse(sbillforins.TotalCurrentBill.ToString());
                currentpenaltycheck = decimal.Parse(sbillforins.BalanceFromPreviousBill.ToString());
                currentplancheck=sbillforins.ServicePlandID.ToString();

            }

            //check current service plan for if disconnection x2
            var splan = db.SelectServicePlan(currentplancheck);
            foreach (var sevplan in splan)
            {
                x2currentplan = sevplan.Total;
            }
            x2currentplan=x2currentplan*2;
            decimal totalcurrentbillplancheck = currentbalancecheck+currenttotalbillcheck+currentpenaltycheck;
            lblAccountNumberForDisconnection.Text = gvr.Cells[1].Text;
            if (totalcurrentbillplancheck >= x2currentplan)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#CustomerIsForDisconnection').modal();", true);
            }
            else
            {
                lblpenaltyfrompreviousbalance.Text = penaltyfrompreviousbalancedisplay.ToString();
                lblinstallationfeebalance.Text = sbillinstallationfee.ToString();
                decimal totaldue = decimal.Parse(lblremainingbalanceanotherpayment.Text) + decimal.Parse(lbltotalcurrentbillanotherpayment.Text) + Convert.ToDecimal(sbillinstallationfee) + penaltyfrompreviousbalancedisplay;
                lbltotalamountdueanotherpayment.Text = totaldue.ToString();

                var latefee = db.SelectBillingbyAccountNumberandStatusForPayment(gvr.Cells[0].Text);
                foreach (var lateservicefee in latefee)
                {
                    duedateforlate = DateTime.Parse(lateservicefee.DueDate);
                }
                ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#AnotherPayment').modal();", true);
            }

        }
        string nextduedate;
        decimal totaldue;
        double penalty;
        decimal paymentreceived;
        decimal totalcurrentbillnicustomer;
        double remainingbalance;
        double previousinsbalance;
        double previouspenalty;
        decimal paymentreceivedsasaktoorsobraanggibayad;
        decimal paymentreceivedsasaktoorsobrasaiyangcurrentbill;
        protected void btnpayanotherpayment_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();

            //---->>>>>condition ni nga if kay kung naa ang sobra sa iya cash nga ibayad niya sa iyang current bill. ang sobra i minus niya sa installation fee.
            if (decimal.Parse(txtcashanotherpayment.Text) >= decimal.Parse(lbltotalcurrentbillanotherpayment.Text) && decimal.Parse(txtcashanotherpayment.Text) <= decimal.Parse(lbltotalamountdueanotherpayment.Text) && lblremainingbalanceanotherpayment.Text == "0.00")
            {
                //calculation for the cash and the current bill / balance 
                double minusfromcurrentbill = double.Parse(txtcashanotherpayment.Text) - double.Parse(lbltotalcurrentbillanotherpayment.Text);
                double newbalanceininstallationfee = double.Parse(lblinstallationfeebalance.Text) - minusfromcurrentbill;
                totaldue = Convert.ToDecimal(newbalanceininstallationfee);
                //calculating the updated totaldue for currentbill
                var totalduebill = db.SelectBillingbyAccountNumberandStatusForPayment(lblaccountnumberanotherpayment.Text);
                foreach (var tduebill in totalduebill)
                {
                    paymentreceived = Convert.ToDecimal(tduebill.PaymentReceived.ToString()) + decimal.Parse(txtcashanotherpayment.Text);
                }
                //update db current bill
                //i close kung wa nay kay wa namay nabilin nga currentbill pag base sa condition. 
                db.UpdateBillingTotalAmountDue(lblbillingidanotherpayment.Text, DateTime.Now.ToString(), paymentreceived, "Paid", Convert.ToDecimal(newbalanceininstallationfee), 0, totaldue);
            }
            // if less than the current bill ra iyang mabayran
            else if (decimal.Parse(txtcashanotherpayment.Text) < decimal.Parse(lbltotalcurrentbillanotherpayment.Text))
            {
                //calculation for the cash and the current bill / balance 
                //dili ra mausab ang installation fee since less than rman iya gebayad na cash
                //calculation for the cash and the current bill / balance 
                double newcurrentbill = double.Parse(lbltotalcurrentbillanotherpayment.Text) - double.Parse(txtcashanotherpayment.Text);
                //calculating the updated totaldue for currentbill
                var totalduebill = db.SelectBillingbyAccountNumberandStatusForPayment(lblaccountnumberanotherpayment.Text);
                foreach (var tduebill in totalduebill)
                {
                    paymentreceived = Convert.ToDecimal(tduebill.PaymentReceived.ToString()) + decimal.Parse(txtcashanotherpayment.Text);
                    remainingbalance = Convert.ToDouble(tduebill.RemainingBalanceFromPreviousBill.ToString());
                    previousinsbalance = Convert.ToDouble(tduebill.InstallationBalance.ToString());
                    previouspenalty = Convert.ToDouble(tduebill.BalanceFromPreviousBill.ToString());
                }

                double newtotaldue = newcurrentbill + remainingbalance + previousinsbalance + previouspenalty;

                db.UpdateBillingTotalAmountDueBalance(lblbillingidanotherpayment.Text, DateTime.Now.ToString(), paymentreceived, "For Payment", Convert.ToDecimal(newcurrentbill), Convert.ToDecimal(newtotaldue));
            }
            else if(decimal.Parse(lbltotalamountdueanotherpayment.Text) <= decimal.Parse(txtcashanotherpayment.Text))
            {
                double exactamoutorgreater=double.Parse(lbltotalamountdueanotherpayment.Text) - double.Parse(txtcashanotherpayment.Text);
                var selectcurrentbill = db.SelectBillingbyAccountNumberandStatusForPayment(lblaccountnumberanotherpayment.Text);
                foreach (var tduebill in selectcurrentbill)
                {
                    paymentreceivedsasaktoorsobraanggibayad = tduebill.PaymentReceived + decimal.Parse(txtcashanotherpayment.Text);
                }
                db.UpdateBillingTotalAmountDueForSobraOrSaktoRaAngGebayad(lblbillingidanotherpayment.Text, DateTime.Now.ToString(), paymentreceivedsasaktoorsobraanggibayad, "Paid", 0,Convert.ToDecimal(exactamoutorgreater),0,0,0);
            }
            else if(decimal.Parse(txtcashanotherpayment.Text)<decimal.Parse(lbltotalamountdueanotherpayment.Text) && decimal.Parse(txtcashanotherpayment.Text)>=decimal.Parse(lbltotalcurrentbillanotherpayment.Text))
            {
                var selectcurrentbill = db.SelectBillingbyAccountNumberandStatusForPayment(lblaccountnumberanotherpayment.Text);
                foreach (var tduebill in selectcurrentbill)
                {
                    paymentreceivedsasaktoorsobrasaiyangcurrentbill = tduebill.PaymentReceived + decimal.Parse(txtcashanotherpayment.Text);
                }
                //grabe ka crucial diri dapita. hahahah
                //----------------------------------------------------------confidential ---------->>>>>>><<<<<<<<<<<<<<<
                double sobra1 = double.Parse(lbltotalcurrentbillanotherpayment.Text) - double.Parse(txtcashanotherpayment.Text);
                double newpenalty = (double.Parse(lblpenaltyfrompreviousbalance.Text) + double.Parse(lblremainingbalanceanotherpayment.Text)) + sobra1;
                double totalamountdue1 = double.Parse(lblinstallationfeebalance.Text) + newpenalty;
                if (newpenalty > 0)
                {
                    db.UpdateBillingTotalAmountDueForSobraOrSaktoRaAngGebayad(lblbillingidanotherpayment.Text, DateTime.Now.ToString(), paymentreceivedsasaktoorsobrasaiyangcurrentbill, "For Payment", Convert.ToDecimal(newpenalty), Convert.ToDecimal(totalamountdue1), 0, 0, decimal.Parse(lblinstallationfeebalance.Text));
                }
                else if(newpenalty <= 0)
                {
                    double newinstallationbalance = double.Parse(lblinstallationfeebalance.Text) + newpenalty;
                    db.UpdateBillingTotalAmountDueForSobraOrSaktoRaAngGebayad(lblbillingidanotherpayment.Text, DateTime.Now.ToString(), paymentreceivedsasaktoorsobrasaiyangcurrentbill, "Paid", 0, Convert.ToDecimal(newinstallationbalance), 0, 0, Convert.ToDecimal(newinstallationbalance));

                    //db.UpdateBillingTotalAmountDueForSobraOrSaktoRaAngGebayad(lblbillingidanotherpayment.Text, DateTime.Now.ToString(), paymentreceivedsasaktoorsobrasaiyangcurrentbill, "Paid", Convert.ToDecimal(newpenalty), Convert.ToDecimal(totalamountdue1), 0, 0, decimal.Parse(lblinstallationfeebalance.Text));
                }
                //if(sobraminussapenalty <=0)
                //{
                //    double updatedtotaldue = double.Parse(lblremainingbalanceanotherpayment.Text) + double.Parse(lblinstallationfeebalance.Text);
                //    db.UpdateBillingTotalAmountDueForSobraOrSaktoRaAngGebayad(lblbillingidanotherpayment.Text, DateTime.Now.ToString(), paymentreceivedsasaktoorsobrasaiyangcurrentbill, "Paid", 0, Convert.ToDecimal(updatedtotaldue), 0, decimal.Parse(lblremainingbalanceanotherpayment.Text), decimal.Parse(lblinstallationfeebalance.Text));
                //}
                //else if(sobraminussapenalty>0)
                //{
                //    double sobraminussabalance = double.Parse(lblpenaltyfrompreviousbalance.Text) - sobraminussapenalty;
                //    if(sobraminussabalance<=0)
                //    {
                //        double updatedtotaldue = double.Parse(lblinstallationfeebalance.Text);
                //        db.UpdateBillingTotalAmountDueForSobraOrSaktoRaAngGebayad(lblbillingidanotherpayment.Text, DateTime.Now.ToString(), paymentreceivedsasaktoorsobrasaiyangcurrentbill, "Paid", 0, Convert.ToDecimal(updatedtotaldue), 0, 0, decimal.Parse(lblinstallationfeebalance.Text));
                //    }
                //    else if(sobraminussabalance>0)
                //    {
                //        double sobraminusinstallationbalance = double.Parse(lblinstallationfeebalance.Text) - sobraminussabalance;
                //        double updatedtotaldue = double.Parse(lblinstallationfeebalance.Text);
                //        db.UpdateBillingTotalAmountDueForSobraOrSaktoRaAngGebayad(lblbillingidanotherpayment.Text, DateTime.Now.ToString(), paymentreceivedsasaktoorsobrasaiyangcurrentbill, "Paid", 0, Convert.ToDecimal(updatedtotaldue), 0, 0, Convert.ToDecimal(sobraminusinstallationbalance));
                //    }
                //}
                //else
                //{
                //    ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#YouCantaddbillyet').modal();", true);
                //}
                //db.UpdateBillingTotalAmountDueForSobraOrSaktoRaAngGebayad(lblbillingidanotherpayment.Text, DateTime.Now.ToString(),0, "Paid", 0,0, 0, 0, 0);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#YouCantaddbillyet').modal();", true);
            }

            GvForPayment.DataBind();
            GvForPayment.DataBind();
            GVPastDue.DataBind();
            GV14th.DataBind();
            GV21st.DataBind();
            GV28th.DataBind();
            GV30th.DataBind();
            GV7th.DataBind();
            GV14thwithsearch.DataBind();
            GV21stwithsearch.DataBind();
            GV28thwithsearch.DataBind();
            GV30thwithsearch.DataBind();
            GV7thwithsearch.DataBind();

            penalty = 0;
            paymentreceived = 0;
        }

        public void refreshgridview()
        {
            GvForPayment.DataBind();
            GvForPayment.DataBind();
            GVPastDue.DataBind();
            GV14th.DataBind();
            GV21st.DataBind();
            GV28th.DataBind();
            GV30th.DataBind();
            GV7th.DataBind();
            GV14thwithsearch.DataBind();
            GV21stwithsearch.DataBind();
            GV28thwithsearch.DataBind();
            GV30thwithsearch.DataBind();
            GV7thwithsearch.DataBind();
        }

        protected void lkbPrintBill0_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            GridViewRow gvr = (GridViewRow)btn.NamingContainer;
            DataClasses1DataContext db = new DataClasses1DataContext();
            //var totalamount = db.SelectJobOrder(gvr.Cells[0].Text);
            ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", "var Mleft = (screen.width/2)-(760/2);var Mtop = (screen.height/2)-(700/2);window.open('/Print/Billing?BillID=" + gvr.Cells[0].Text + "', null, 'fullscreen=yes,status=yes,toolbar=no,scrollbars=yes,menubar=no,location=no,top=\'+Mtop+\', left=\'+Mleft+\'' );", true);
        }

        protected void txtunitnumber_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtsearch_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnservicecharge_Click(object sender, EventArgs e)
        {

        }

        decimal plancurrentbill;
        protected void lkbGenerateNewBillingStatement_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            GridViewRow gvr = (GridViewRow)btn.NamingContainer;
            lblaccountnumbergenerateconfirmation.Text = gvr.Cells[1].Text;
            lblpreviousbillingstatementid.Text = gvr.Cells[0].Text;
            ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#GenerateConfirmation').modal();", true);
        }

        
        string serviceplan12;
        decimal insbalance;
        decimal remainingbalancefromprevious;
        int previousbillnumber;
        string previousduedate;
        string previousduedateidentifier;
        decimal previousbillpaymentreceived;
        decimal previoustotaldue;
        int countbill;
        double nexttotaldue;
        protected void btnSubmitGenerate_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            var selectbill = db.SelectBillID(lblpreviousbillingstatementid.Text);
            foreach (var bill in selectbill)
            {
                serviceplan12 = bill.ServicePlandID;
                insbalance = decimal.Parse(bill.InstallationBalance.ToString());
                previousbillnumber = int.Parse(bill.BillNumber.ToString());
                previousduedate = bill.DueDate.ToString();
                previousduedateidentifier = bill.DueDateIdentifier.ToString();
                previousbillpaymentreceived = bill.PaymentReceived;
                remainingbalancefromprevious = decimal.Parse(bill.RemainingBalanceFromPreviousBill.ToString());
                previoustotaldue = bill.TotalAmountDue;
            }
            //calculation of new currentbill
            //calculating the next total due of the customer
            var selectplan = db.SelectServicePlan(serviceplan12);
            foreach (var svplan in selectplan)
            {
                plancurrentbill = svplan.Total;
            }

            if(previoustotaldue<0)
            {
                nexttotaldue = Convert.ToDouble(remainingbalancefromprevious) + Convert.ToDouble(insbalance) +(Convert.ToDouble(previoustotaldue)+ Convert.ToDouble(plancurrentbill));
            }
            else
            {
                nexttotaldue = Convert.ToDouble(remainingbalancefromprevious) + Convert.ToDouble(insbalance) + Convert.ToDouble(plancurrentbill);
            }


            //billing number counter
            int billnumber = previousbillnumber + 1;
            //billing id generation

            //coountallbill hahaha 
            var countallbill = db.CountAllBill();
            foreach (var allbill in countallbill)
            {
                countbill = int.Parse(allbill.Column1.ToString()) + 1;
            }

            string billid = "Bill-" + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + DateTime.Now.Day.ToString() + "0" + countbill.ToString();


            //start of next due date
            string data = previousduedate;
            string[] splitData = data.Split('/');
            string nowmonth = splitData[0];
            string nowyear = splitData[2];

            if (int.Parse(nowmonth) <= 11 && nowyear == DateTime.Now.Year.ToString())
            {
                nextduedate = (int.Parse(nowmonth) + 1).ToString() + "/" + previousduedateidentifier + "/" + DateTime.Now.Year.ToString();
                //insert new billing statement
                db.InsertBillingInstallation(billid, lblaccountnumbergenerateconfirmation.Text, DateTime.Now.ToString(), billnumber, 0, previousbillpaymentreceived, 0, 0, serviceplan12, plancurrentbill, Convert.ToDecimal(nexttotaldue), nextduedate, previousduedateidentifier, "For Payment", insbalance);
                int billnumbertoclosepreviousbill = billnumber - 1;
                //update to close the current bill.
                db.UpdateClosePreviousBill(lblaccountnumbergenerateconfirmation.Text, billnumbertoclosepreviousbill);
                txtcashanotherpayment.Text = "";
            }
            else if (int.Parse(nowmonth) == 12 || int.Parse(nowyear) > int.Parse(DateTime.Now.Year.ToString()))
            {
                if (int.Parse(nowyear) > int.Parse(DateTime.Now.Year.ToString()) && int.Parse(nowmonth) != 12)
                {
                    nextduedate = (int.Parse(nowmonth) + 1).ToString() + "/" + previousduedateidentifier + "/" + nowyear;
                    //insert new billing statement
                    db.InsertBillingInstallation(billid, lblaccountnumbergenerateconfirmation.Text, DateTime.Now.ToString(), billnumber, 0, previousbillpaymentreceived, 0, 0, serviceplan12, plancurrentbill, Convert.ToDecimal(nexttotaldue), nextduedate, previousduedateidentifier, "For Payment", insbalance);
                    int billnumbertoclosepreviousbill = billnumber - 1;
                    //update to close the current bill.
                    db.UpdateClosePreviousBill(lblaccountnumbergenerateconfirmation.Text, billnumbertoclosepreviousbill);
                    txtcashanotherpayment.Text = "";
                }
                else if (int.Parse(nowmonth) == 12)
                {
                    nextduedate = "1/" + previousduedateidentifier + "/" + (int.Parse(nowyear) + 1).ToString();
                    //insert new billing statement
                    db.InsertBillingInstallation(billid, lblaccountnumbergenerateconfirmation.Text, DateTime.Now.ToString(), billnumber, 0, previousbillpaymentreceived, 0, 0, serviceplan12, plancurrentbill, Convert.ToDecimal(nexttotaldue), nextduedate, previousduedateidentifier, "For Payment", insbalance);
                    int billnumbertoclosepreviousbill = billnumber - 1;
                    //update to close the current bill.
                    db.UpdateClosePreviousBill(lblaccountnumbergenerateconfirmation.Text, billnumbertoclosepreviousbill);
                    txtcashanotherpayment.Text = "";
                }
                else
                {
                    nextduedate = "1/" + previousduedateidentifier + "/" + (int.Parse(nowyear) + 1).ToString();
                    //insert new billing statement
                    db.InsertBillingInstallation(billid, lblaccountnumbergenerateconfirmation.Text, DateTime.Now.ToString(), billnumber, 0, previousbillpaymentreceived, 0, 0, serviceplan12, plancurrentbill, Convert.ToDecimal(nexttotaldue), nextduedate, previousduedateidentifier, "For Payment", insbalance);
                    int billnumbertoclosepreviousbill = billnumber - 1;
                    //update to close the current bill.
                    db.UpdateClosePreviousBill(lblaccountnumbergenerateconfirmation.Text, billnumbertoclosepreviousbill);
                    txtcashanotherpayment.Text = "";
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#YouCantaddbillyet').modal();", true);
            }
            refreshgridview();
            serviceplan12 = "";
            insbalance = 0;
            remainingbalancefromprevious = 0;
            plancurrentbill = 0;
            previousbillnumber = 0;
            previousduedate = "";
            previousduedateidentifier = "";
            countbill = 0;
            previousbillpaymentreceived = 0;
            countbill = 0;
            nexttotaldue = 0;
            previoustotaldue = 0;
        }

        protected void lkbGenerateNewBillingStatementwithPenalty_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            GridViewRow gvr = (GridViewRow)btn.NamingContainer;
            lblbillidwithpenalty.Text = gvr.Cells[0].Text;
            lblaccountnumberwithpenalty.Text = gvr.Cells[1].Text;
            lblduedatepenalty.Text = gvr.Cells[8].Text;
            ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#GenerateConfirmationWithPenalty').modal();", true);
        }


        string serviceplan12penalty;
        decimal insbalancepenalty;
        double remainingbalancefrompreviouspenalty;
        int previousbillnumberpenalty;
        string previousduedatepenalty;
        string previousduedateidentifierpenalty;
        decimal previousbillpaymentreceivedpenalty;
        int countbillpenalty;
        double previouscurrentbill;
        decimal plancurrentbillpenalty;

        protected void btnSubmitPenalty_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            var selectbill = db.SelectBillID(lblbillidwithpenalty.Text);
            foreach (var bill in selectbill)
            {
                serviceplan12penalty = bill.ServicePlandID;
                insbalancepenalty = decimal.Parse(bill.InstallationBalance.ToString());
                previousbillnumberpenalty = int.Parse(bill.BillNumber.ToString());
                previousduedatepenalty = bill.DueDate.ToString();
                previousduedateidentifierpenalty = bill.DueDateIdentifier.ToString();
                previousbillpaymentreceivedpenalty = bill.PaymentReceived;
                remainingbalancefrompreviouspenalty = double.Parse(bill.RemainingBalanceFromPreviousBill.ToString());
                previouscurrentbill = double.Parse(bill.TotalCurrentBill.ToString());
            }

            //calculating the next total due of the customer
            var selectplan = db.SelectServicePlan(serviceplan12penalty);
            foreach (var svplan in selectplan)
            {
                plancurrentbillpenalty = svplan.Total;
            }

            double penaltyfornextbill = Convert.ToDouble(previouscurrentbill);
            penaltyfornextbill = penaltyfornextbill * 0.02;
            double balancefornextbill = Convert.ToDouble(previouscurrentbill) + remainingbalancefrompreviouspenalty + penaltyfornextbill;
            double nexttotaldue = balancefornextbill + Convert.ToDouble(insbalancepenalty) + Convert.ToDouble(plancurrentbillpenalty);

            //billing number counter
            int billnumber = previousbillnumberpenalty + 1;
            //coountallbill hahaha 
            var countallbill = db.CountAllBill();
            foreach (var allbill in countallbill)
            {
                countbillpenalty = int.Parse(allbill.Column1.ToString()) + 1;
            }

            string billid = "Bill-" + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + DateTime.Now.Day.ToString() + "0" + countbillpenalty.ToString();

            //start of next due date
            string data = lblduedatepenalty.Text;
            string[] splitData = data.Split('/');
            string nowmonthpenalty = splitData[0];
            string nowyearpenalty = splitData[2];

            if (int.Parse(nowmonthpenalty) <= 11 && nowyearpenalty == DateTime.Now.Year.ToString())
            {
                nextduedate = (int.Parse(nowmonthpenalty) + 1).ToString() + "/" + previousduedateidentifierpenalty + "/" + DateTime.Now.Year.ToString();
                //insert new billing statement
                db.InsertBillingInstallation(billid, lblaccountnumberwithpenalty.Text, DateTime.Now.ToString(), billnumber, Convert.ToDecimal(penaltyfornextbill), previousbillpaymentreceivedpenalty, 0, Convert.ToDecimal(previouscurrentbill), serviceplan12penalty, plancurrentbillpenalty, Convert.ToDecimal(nexttotaldue), nextduedate, previousduedateidentifierpenalty, "For Payment", insbalancepenalty);
                int billnumbertoclosepreviousbill = billnumber - 1;
                //update to close the current bill.
                db.UpdateClosePreviousBill(lblaccountnumberwithpenalty.Text, billnumbertoclosepreviousbill);
                txtcashanotherpayment.Text = "";
            }
            else if (int.Parse(nowmonthpenalty) == 12 || int.Parse(nowyearpenalty) > int.Parse(DateTime.Now.Year.ToString()))
            {
                if (int.Parse(nowyearpenalty) > int.Parse(DateTime.Now.Year.ToString()) && int.Parse(nowmonthpenalty) != 12)
                {
                    nextduedate = (int.Parse(nowmonthpenalty) + 1).ToString() + "/" + previousduedateidentifierpenalty + "/" + nowyearpenalty;
                    //insert new billing statement
                    db.InsertBillingInstallation(billid, lblaccountnumberwithpenalty.Text, DateTime.Now.ToString(), billnumber, Convert.ToDecimal(penaltyfornextbill), previousbillpaymentreceivedpenalty, 0, Convert.ToDecimal(previouscurrentbill), serviceplan12penalty, plancurrentbillpenalty, Convert.ToDecimal(nexttotaldue), nextduedate, previousduedateidentifierpenalty, "For Payment", insbalancepenalty);
                    int billnumbertoclosepreviousbill = billnumber - 1;
                    //update to close the current bill.
                    db.UpdateClosePreviousBill(lblaccountnumberwithpenalty.Text, billnumbertoclosepreviousbill);
                    txtcashanotherpayment.Text = "";
                }
                else if (int.Parse(nowmonthpenalty) == 12)
                {
                    nextduedate = "1/" + previousduedateidentifierpenalty + "/" + (int.Parse(nowyearpenalty) + 1).ToString();
                    //insert new billing statement
                    db.InsertBillingInstallation(billid, lblaccountnumberwithpenalty.Text, DateTime.Now.ToString(), billnumber, Convert.ToDecimal(penaltyfornextbill), previousbillpaymentreceivedpenalty, 0, Convert.ToDecimal(previouscurrentbill), serviceplan12penalty, plancurrentbillpenalty, Convert.ToDecimal(nexttotaldue), nextduedate, previousduedateidentifierpenalty, "For Payment", insbalancepenalty);
                    int billnumbertoclosepreviousbill = billnumber - 1;
                    //update to close the current bill.
                    db.UpdateClosePreviousBill(lblaccountnumberwithpenalty.Text, billnumbertoclosepreviousbill);
                    txtcashanotherpayment.Text = "";
                }
                else
                {
                    nextduedate = "1/" + previousduedateidentifierpenalty + "/" + (int.Parse(nowyearpenalty) + 1).ToString();
                    //insert new billing statement
                    db.InsertBillingInstallation(billid, lblaccountnumberwithpenalty.Text, DateTime.Now.ToString(), billnumber, Convert.ToDecimal(penaltyfornextbill), previousbillpaymentreceivedpenalty, 0, Convert.ToDecimal(previouscurrentbill), serviceplan12penalty, plancurrentbillpenalty, Convert.ToDecimal(nexttotaldue), nextduedate, previousduedateidentifierpenalty, "For Payment", insbalancepenalty);
                    int billnumbertoclosepreviousbill = billnumber - 1;
                    //update to close the current bill.
                    db.UpdateClosePreviousBill(lblaccountnumberwithpenalty.Text, billnumbertoclosepreviousbill);
                    txtcashanotherpayment.Text = "";
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#YouCantaddbillyet').modal();", true);
            }
            serviceplan12penalty="";
            insbalancepenalty=0;
            remainingbalancefrompreviouspenalty=0;
            previousbillnumberpenalty=0;
            previousduedatepenalty="";
            previousduedateidentifierpenalty="";
            previousbillpaymentreceivedpenalty=0;
            countbillpenalty=0;
            previouscurrentbill=0;
            plancurrentbillpenalty=0;
            refreshgridview();
        }

        

        protected void GV7th_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DateTime tomorrow = DateTime.Parse(lbldatetoday.Text).AddDays(1);
                DateTime duelimitpenalty = DateTime.Parse(lbldatetoday.Text).AddDays(9);

                if (tomorrow < DateTime.Now && DateTime.Now < duelimitpenalty)
                {
                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbGenerateNewBillingStatementwithPenalty");
                    lnkBtn2.Visible = true;
                }

                DataRowView drv = e.Row.DataItem as DataRowView;
                if (drv["TotalAmountDue"].ToString().Equals("0.00"))
                {
                    LinkButton lnkBtn = (LinkButton)e.Row.FindControl("lkbAcceptpaymentforbill");
                    lnkBtn.Visible = false;

                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbPrintBill0");
                    lnkBtn2.Visible = false;
                }

                if (DropDownList2.Text == "For Payment")
                {
                    LinkButton lnkBtn = (LinkButton)e.Row.FindControl("lkbGenerateNewBillingStatement");
                    lnkBtn.Visible = false;
                }

                if (DropDownList2.Text == "Paid")
                {
                    LinkButton lnkBtn = (LinkButton)e.Row.FindControl("lkbPrintBill0");
                    lnkBtn.Visible = false;
                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbGenerateNewBillingStatementwithPenalty");
                    lnkBtn2.Visible = false;
                }
                if (drv["PaymentReceived"].ToString().Equals("0.00"))
                {
                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbPrintBill0");
                    lnkBtn2.Visible = true;
                }
                else
                {
                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbPrintBill0");
                    lnkBtn2.Visible = false;
                }
            }
        }

        protected void GV7thwithsearch_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DateTime tomorrow = DateTime.Parse(lbldatetoday.Text).AddDays(1);
                DateTime duelimitpenalty = DateTime.Parse(lbldatetoday.Text).AddDays(9);

                if (tomorrow < DateTime.Now && DateTime.Now < duelimitpenalty)
                {
                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbGenerateNewBillingStatementwithPenalty");
                    lnkBtn2.Visible = true;
                }
                DataRowView drv = e.Row.DataItem as DataRowView;
                if (drv["TotalAmountDue"].ToString().Equals("0.00"))
                {
                    LinkButton lnkBtn = (LinkButton)e.Row.FindControl("lkbAcceptPayment3");
                    lnkBtn.Visible = false;

                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbPrintBill3");
                    lnkBtn2.Visible = false;
                }

                if (DropDownList2.Text == "For Payment")
                {
                    LinkButton lnkBtn = (LinkButton)e.Row.FindControl("lkbGenerateNewBillingStatement");
                    lnkBtn.Visible = false;
                }
                if (DropDownList2.Text == "Paid")
                {
                    LinkButton lnkBtn = (LinkButton)e.Row.FindControl("lkbPrintBill3");
                    lnkBtn.Visible = false;
                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbGenerateNewBillingStatementwithPenalty");
                    lnkBtn2.Visible = false;
                }
                if (drv["PaymentReceived"].ToString().Equals("0.00"))
                {
                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbPrintBill3");
                    lnkBtn2.Visible = true;
                }
                else
                {
                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbPrintBill3");
                    lnkBtn2.Visible = false;
                }
            }
        }

        protected void GV14th_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DateTime tomorrow = DateTime.Parse(lbldatetoday.Text).AddDays(1);
                DateTime duelimitpenalty = DateTime.Parse(lbldatetoday.Text).AddDays(9);

                if (tomorrow < DateTime.Now && DateTime.Now < duelimitpenalty)
                {
                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbGenerateNewBillingStatementwithPenalty");
                    lnkBtn2.Visible = true;
                }
                DataRowView drv = e.Row.DataItem as DataRowView;
                if (drv["TotalAmountDue"].ToString().Equals("0.00"))
                {
                    LinkButton lnkBtn = (LinkButton)e.Row.FindControl("lkbAcceptPayment1");
                    lnkBtn.Visible = false;

                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbPrintBill1");
                    lnkBtn2.Visible = false;
                }

                if (DropDownList2.Text == "For Payment")
                {
                    LinkButton lnkBtn = (LinkButton)e.Row.FindControl("lkbGenerateNewBillingStatement");
                    lnkBtn.Visible = false;
                }

                if (DropDownList2.Text == "Paid")
                {
                    LinkButton lnkBtn = (LinkButton)e.Row.FindControl("lkbPrintBill1");
                    lnkBtn.Visible = false;
                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbGenerateNewBillingStatementwithPenalty");
                    lnkBtn2.Visible = false;
                }
                if (drv["PaymentReceived"].ToString().Equals("0.00"))
                {
                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbPrintBill1");
                    lnkBtn2.Visible = true;
                }
                else
                {
                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbPrintBill1");
                    lnkBtn2.Visible = false;
                }
            }
        }

        protected void GV14thwithsearch_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DateTime tomorrow = DateTime.Parse(lbldatetoday.Text).AddDays(1);
                DateTime duelimitpenalty = DateTime.Parse(lbldatetoday.Text).AddDays(9);

                if (tomorrow < DateTime.Now && DateTime.Now < duelimitpenalty)
                {
                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbGenerateNewBillingStatementwithPenalty");
                    lnkBtn2.Visible = true;
                }
                DataRowView drv = e.Row.DataItem as DataRowView;
                if (drv["TotalAmountDue"].ToString().Equals("0.00"))
                {
                    LinkButton lnkBtn = (LinkButton)e.Row.FindControl("lkbAcceptPayment4");
                    lnkBtn.Visible = false;

                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbPrintBill4");
                    lnkBtn2.Visible = false;
                }

                if (DropDownList2.Text == "For Payment")
                {
                    LinkButton lnkBtn = (LinkButton)e.Row.FindControl("lkbGenerateNewBillingStatement");
                    lnkBtn.Visible = false;
                }

                if (DropDownList2.Text == "Paid")
                {
                    LinkButton lnkBtn = (LinkButton)e.Row.FindControl("lkbPrintBill4");
                    lnkBtn.Visible = false;
                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbGenerateNewBillingStatementwithPenalty");
                    lnkBtn2.Visible = false;
                }
                if (drv["PaymentReceived"].ToString().Equals("0.00"))
                {
                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbPrintBill4");
                    lnkBtn2.Visible = true;
                }
                else
                {
                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbPrintBill4");
                    lnkBtn2.Visible = false;
                }
            }
        }

        protected void GV21st_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string date21st = DateTime.Now.Month.ToString() + "/22/" + DateTime.Now.Year.ToString();
                int date21stlimit = int.Parse(DateTime.Now.Day.ToString());
                DataRowView drv = e.Row.DataItem as DataRowView;
                if (drv["TotalAmountDue"].ToString().Equals("0.00"))
                {
                    LinkButton lnkBtn = (LinkButton)e.Row.FindControl("lkbAcceptPayment2");
                    lnkBtn.Visible = false;

                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbPrintBill2");
                    lnkBtn2.Visible = false;
                    
                }

                if (DropDownList2.Text == "For Payment")
                {
                    LinkButton lnkBtn = (LinkButton)e.Row.FindControl("lkbGenerateNewBillingStatement");
                    lnkBtn.Visible = false;
                }
                if (DateTime.Now > DateTime.Parse(date21st))
                {
                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbGenerateNewBillingStatementwithPenalty");
                    lnkBtn2.Visible = true;
                }
                if (DropDownList2.Text == "Paid")
                {
                    LinkButton lnkBtn = (LinkButton)e.Row.FindControl("lkbPrintBill2");
                    lnkBtn.Visible = false;
                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbGenerateNewBillingStatementwithPenalty");
                    lnkBtn2.Visible = false;
                }
                if (drv["PaymentReceived"].ToString().Equals("0.00"))
                {
                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbPrintBill2");
                    lnkBtn2.Visible = true;
                }
                else
                {
                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbPrintBill2");
                    lnkBtn2.Visible = false;
                }
            }
        }
        protected void GV21stwithsearch_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DateTime tomorrow = DateTime.Parse(lbldatetoday.Text).AddDays(1);
                DateTime duelimitpenalty = DateTime.Parse(lbldatetoday.Text).AddDays(9);

                if (tomorrow < DateTime.Now && DateTime.Now < duelimitpenalty)
                {
                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbGenerateNewBillingStatementwithPenalty");
                    lnkBtn2.Visible = true;
                }
                DataRowView drv = e.Row.DataItem as DataRowView;
                if (drv["TotalAmountDue"].ToString().Equals("0.00"))
                {
                    LinkButton lnkBtn = (LinkButton)e.Row.FindControl("lkbAcceptPayment5");
                    lnkBtn.Visible = false;

                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbPrintBill5");
                    lnkBtn2.Visible = false;
                }

                if (DropDownList2.Text == "For Payment")
                {
                    LinkButton lnkBtn = (LinkButton)e.Row.FindControl("lkbGenerateNewBillingStatement");
                    lnkBtn.Visible = false;
                }

                if (DropDownList2.Text == "Paid")
                {
                    LinkButton lnkBtn = (LinkButton)e.Row.FindControl("lkbPrintBill5");
                    lnkBtn.Visible = false;
                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbGenerateNewBillingStatementwithPenalty");
                    lnkBtn2.Visible = false;
                }
                if (drv["PaymentReceived"].ToString().Equals("0.00"))
                {
                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbPrintBill5");
                    lnkBtn2.Visible = true;
                }
                else
                {
                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbPrintBill5");
                    lnkBtn2.Visible = false;
                }
            }
        }
        protected void GV28th_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DateTime tomorrow = DateTime.Parse(lbldatetoday.Text).AddDays(1);
                DateTime duelimitpenalty = DateTime.Parse(lbldatetoday.Text).AddDays(9);

                if (tomorrow < DateTime.Now && DateTime.Now < duelimitpenalty)
                {
                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbGenerateNewBillingStatementwithPenalty");
                    lnkBtn2.Visible = true;
                }
                DataRowView drv = e.Row.DataItem as DataRowView;
                if (drv["TotalAmountDue"].ToString().Equals("0.00"))
                {
                    LinkButton lnkBtn = (LinkButton)e.Row.FindControl("lkbAcceptPayment2");
                    lnkBtn.Visible = false;

                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbPrintBill2");
                    lnkBtn2.Visible = false;
                }

                if (DropDownList2.Text == "For Payment")
                {
                    LinkButton lnkBtn = (LinkButton)e.Row.FindControl("lkbGenerateNewBillingStatement");
                    lnkBtn.Visible = false;
                }

                if (DropDownList2.Text == "Paid")
                {
                    LinkButton lnkBtn = (LinkButton)e.Row.FindControl("lkbPrintBill2");
                    lnkBtn.Visible = false;
                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbGenerateNewBillingStatementwithPenalty");
                    lnkBtn2.Visible = false;
                }
                if (drv["PaymentReceived"].ToString().Equals("0.00"))
                {
                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbPrintBill2");
                    lnkBtn2.Visible = true;
                }
                else
                {
                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbPrintBill2");
                    lnkBtn2.Visible = false;
                }
            }
        }

        protected void GV28thwithsearch_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DateTime tomorrow = DateTime.Parse(lbldatetoday.Text).AddDays(1);
                DateTime duelimitpenalty = DateTime.Parse(lbldatetoday.Text).AddDays(9);

                if (tomorrow < DateTime.Now && DateTime.Now < duelimitpenalty)
                {
                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbGenerateNewBillingStatementwithPenalty");
                    lnkBtn2.Visible = true;
                }
                DataRowView drv = e.Row.DataItem as DataRowView;
                if (drv["TotalAmountDue"].ToString().Equals("0.00"))
                {
                    LinkButton lnkBtn = (LinkButton)e.Row.FindControl("lkbAcceptPayment6");
                    lnkBtn.Visible = false;

                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbPrintBill6");
                    lnkBtn2.Visible = false;
                }

                if (DropDownList2.Text == "For Payment")
                {
                    LinkButton lnkBtn = (LinkButton)e.Row.FindControl("lkbGenerateNewBillingStatement");
                    lnkBtn.Visible = false;
                }

                if (DropDownList2.Text == "Paid")
                {
                    LinkButton lnkBtn = (LinkButton)e.Row.FindControl("lkbPrintBill6");
                    lnkBtn.Visible = false;
                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbGenerateNewBillingStatementwithPenalty");
                    lnkBtn2.Visible = false;
                }
                if (drv["PaymentReceived"].ToString().Equals("0.00"))
                {
                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbPrintBill6");
                    lnkBtn2.Visible = true;
                }
                else
                {
                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbPrintBill6");
                    lnkBtn2.Visible = false;
                }
            }
        }
        
        protected void GV30th_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DateTime tomorrow = DateTime.Parse(lbldatetoday.Text).AddDays(1);
                DateTime duelimitpenalty = DateTime.Parse(lbldatetoday.Text).AddDays(9);

                if (tomorrow < DateTime.Now && DateTime.Now < duelimitpenalty)
                {
                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbGenerateNewBillingStatementwithPenalty");
                    lnkBtn2.Visible = true;
                }

                DataRowView drv = e.Row.DataItem as DataRowView;
                if (drv["TotalAmountDue"].ToString().Equals("0.00"))
                {
                    LinkButton lnkBtn = (LinkButton)e.Row.FindControl("lkbAcceptPayment2");
                    lnkBtn.Visible = false;

                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbPrintBill2");
                    lnkBtn2.Visible = false;
                }

                if (DropDownList2.Text == "For Payment")
                {
                    LinkButton lnkBtn = (LinkButton)e.Row.FindControl("lkbGenerateNewBillingStatement");
                    lnkBtn.Visible = false;
                }
                
                if (DropDownList2.Text == "Paid")
                {
                    LinkButton lnkBtn = (LinkButton)e.Row.FindControl("lkbPrintBill2");
                    lnkBtn.Visible = false;
                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbGenerateNewBillingStatementwithPenalty");
                    lnkBtn2.Visible = false;
                }
                if (drv["PaymentReceived"].ToString().Equals("0.00"))
                {
                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbPrintBill2");
                    lnkBtn2.Visible = true;
                }
                else
                {
                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbPrintBill2");
                    lnkBtn2.Visible = false;
                }
                
            }
        }

        protected void GV30thwithsearch_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DateTime tomorrow = DateTime.Parse(lbldatetoday.Text).AddDays(1);
                DateTime duelimitpenalty = DateTime.Parse(lbldatetoday.Text).AddDays(9);

                if (tomorrow < DateTime.Now && DateTime.Now < duelimitpenalty)
                {
                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbGenerateNewBillingStatementwithPenalty");
                    lnkBtn2.Visible = true;
                }

                DataRowView drv = e.Row.DataItem as DataRowView;
                if (drv["TotalAmountDue"].ToString().Equals("0.00"))
                {
                    LinkButton lnkBtn = (LinkButton)e.Row.FindControl("lkbAcceptPayment7");
                    lnkBtn.Visible = false;

                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbPrintBill7");
                    lnkBtn2.Visible = false;
                }

                if (DropDownList2.Text == "For Payment")
                {
                    LinkButton lnkBtn = (LinkButton)e.Row.FindControl("lkbGenerateNewBillingStatement");
                    lnkBtn.Visible = false;
                }

                if (DropDownList2.Text == "Paid")
                {
                    LinkButton lnkBtn = (LinkButton)e.Row.FindControl("lkbPrintBill7");
                    lnkBtn.Visible = false;
                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbGenerateNewBillingStatementwithPenalty");
                    lnkBtn2.Visible = false;
                }
                if (drv["PaymentReceived"].ToString().Equals("0.00"))
                {
                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbPrintBill7");
                    lnkBtn2.Visible = true;
                }
                else
                {
                    LinkButton lnkBtn2 = (LinkButton)e.Row.FindControl("lkbPrintBill7");
                    lnkBtn2.Visible = false;
                }
            }
        }

        protected void btnSubmitForDisconnection_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            db.UpdateCustomerStatusForDisconnection(lblAccountNumberForDisconnection.Text);
            refreshgridview();
        }
    }
}