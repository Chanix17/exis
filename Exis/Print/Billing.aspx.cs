using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Exis.Model;

namespace Exis.Print
{
    public partial class Billing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            if (!IsPostBack)
            {
                string billingid = Request.QueryString["BillID"];
                var query = db.SelectBillID(billingid);
                foreach (var id in query)
                {
                    var query2 = db.SelectCustomer(id.AccountNumber);
                    foreach (var id2 in query2)
                    {
                        lblDate.Text = DateTime.Now.ToString();
                        lblAccountnumber.Text = id.AccountNumber.ToString().ToUpper();
                        lblAccountName.Text = id2.Lastname.ToString().ToUpper() + "," + id2.Firstname.ToString().ToUpper();
                        lblbillingaddress.Text = id2.BillingAddress.ToString().ToUpper();
                        lblserviceplan.Text = id2.ServicePlanName.ToString().ToUpper();
                        lblbillnumber.Text = id.BillNumber.ToString();
                        lblduedate.Text = id.DueDate.ToString();
                        lblduedate2.Text = id.DueDate.ToString();

                        lblremainingbalancefrompreviousbill.Text = id.RemainingBalanceFromPreviousBill.ToString().ToUpper();
                        lblremainingbalancefrompreviousbill2.Text = id.RemainingBalanceFromPreviousBill.ToString().ToUpper();
                        decimal totalpreviousbill = decimal.Parse(id.RemainingBalanceFromPreviousBill.ToString()) + decimal.Parse(id.BalanceFromPreviousBill.ToString()) + decimal.Parse(id.InstallationBalance.ToString());
                        //penalty penalty
                        if(id.BalanceFromPreviousBill==0)
                        {
                            lblpenalty.Visible = false;
                            Label70.Visible = false;
                            lblpenaltyfrompreviousbalance.Visible = false;
                            lblpenaltyfrompreviousbalance2.Visible = false;
                            Label73.Visible = false;
                            lblpenalty2.Visible = false;
                            lbltotalpreviousbill.Text = totalpreviousbill.ToString();
                            lbltotalpreviousbill2.Text = totalpreviousbill.ToString();
                        }
                        else
                        {
                            lblpenalty.Visible = true;
                            Label70.Visible = true;
                            lblpenaltyfrompreviousbalance.Visible = true;
                            lblpenaltyfrompreviousbalance2.Visible = true;
                            Label73.Visible = true;
                            lblpenalty2.Visible = true;

                            lblpenaltyfrompreviousbalance.Text = id.BalanceFromPreviousBill.ToString();
                            lblpenaltyfrompreviousbalance2.Text = id.BalanceFromPreviousBill.ToString();
                            lbltotalpreviousbill.Text = totalpreviousbill.ToString();
                            lbltotalpreviousbill2.Text = totalpreviousbill.ToString();
                        }
                        if(id.InstallationBalance == 0 )
                        {
                            lblpenalty4.Visible = false;
                            Label76.Visible = false;
                            lblinstallationbalancefee2.Visible = false;
                            lblinstllationfeebalance.Visible = false;
                            Label75.Visible = false;
                            lblpenalty3.Visible = false;
                        }
                        else
                        {
                            lblpenalty4.Visible = true;
                            Label76.Visible = true;
                            lblinstallationbalancefee2.Visible = true;
                            lblinstllationfeebalance.Visible = true;
                            Label75.Visible = true;
                            lblpenalty3.Visible = true;

                            lblinstllationfeebalance.Text = id.InstallationBalance.ToString();
                            lblinstallationbalancefee2.Text = id.InstallationBalance.ToString();
                        }

                        

                        lbldate2.Text = DateTime.Now.ToString();
                        lblaccountnumber2.Text = id.AccountNumber.ToString().ToUpper();
                        lblaccountname2.Text = id2.Lastname.ToString().ToUpper() + "," + id2.Firstname.ToString().ToUpper();
                        lblbillingaddresss2.Text = id2.BillingAddress.ToString().ToUpper();
                        lblserviceplan2.Text = id2.ServicePlanName.ToString().ToUpper();
                        lblbillnumber2.Text = id.BillNumber.ToString();

                        
                         var query3 = db.SelectServicePlan(id.ServicePlandID);
                         foreach (var id3 in query3)
                         {
                             lblinternet.Text = id3.Internet.ToString();
                             lblvat.Text = id3.VAT.ToString();
                             lbllessadjustments.Text = id3.Less.ToString();
                             lbltotalcurrentbill.Text = id3.Total.ToString();

                             lblinternet2.Text = id3.Internet.ToString();
                             lblvat2.Text = id3.VAT.ToString();
                             lbllessadjustments2.Text = id3.Less.ToString();
                             lblcurrentbill2.Text = id3.Total.ToString();
                         }
                         decimal totaldue = decimal.Parse(lbltotalpreviousbill.Text) + decimal.Parse(lbltotalcurrentbill.Text);
                         lbltotalamountdue.Text = totaldue.ToString();
                         lbltotalamountdue2.Text = totaldue.ToString();
                    }
                }
                ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", "var Mleft = (screen.width/2)-(760/2);var Mtop = (screen.height/2)-(700/2);window.print('height=700,width=760,status=yes,toolbar=no,scrollbars=yes,menubar=no,location=no,top=\'+Mtop+\', left=\'+Mleft+\'');setTimeout(function () { window.close(); }, 100);", true);
            }
        }
    }
}