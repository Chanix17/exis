using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Exis.Model;

namespace Exis.Print
{
    public partial class Installation : System.Web.UI.Page
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
                    lblbillnumber.Text = id.BillNumber.ToString();
                    lblbillnumber2.Text = id.BillNumber.ToString();
                    foreach (var id2 in query2)
                    {
                        lblDate.Text = DateTime.Now.ToString();
                        lbldate2.Text = DateTime.Now.ToString();
                        lblAccountnumber.Text = id.AccountNumber.ToString().ToUpper();
                        lblaccountnumber2.Text = id.AccountNumber.ToString().ToUpper();
                        lblAccountName.Text = id2.Lastname.ToString().ToUpper() + "," + id2.Firstname.ToString().ToUpper();
                        lblaccountname2.Text = id2.Lastname.ToString().ToUpper() + "," + id2.Firstname.ToString().ToUpper();
                        lblbillingaddress.Text = "Tower "+id2.TowerID.ToString()+" | Unit "+id2.UnitNo.ToString();
                        lblbillingaddresss2.Text = "Tower " + id2.TowerID.ToString() + " | Unit " + id2.UnitNo.ToString();
                        lblserviceplan.Text = id2.ServicePlanName.ToString().ToUpper();
                        lblserviceplan2.Text = id2.ServicePlanName.ToString().ToUpper();
                        var query3 = db.SelectServicePlanByPlanName(lblserviceplan.Text);
                        foreach (var id3 in query3)
                        {
                            string internet = string.Format("{0:N0}", Convert.ToDecimal(id3.Internet.ToString()));
                            lblinternet.Text = internet+".00";
                            lblinternet2.Text = internet + ".00";
                            string vat = string.Format("{0:N0}", Convert.ToDecimal(id3.VAT.ToString()));
                            lblvat.Text = vat + ".00";
                            lblvat2.Text = vat + ".00";
                            string lessadjus = string.Format("{0:N0}", Convert.ToDecimal(id3.Less.ToString()));
                            lbllessadjustments.Text = lessadjus + ".00";
                            lbllessadjustments2.Text = lessadjus + ".00";
                            string currentb = string.Format("{0:N0}", Convert.ToDecimal(id3.Total.ToString()));
                            lbltotalcurrentbill.Text = currentb + ".00";
                            lblcurrentbill2.Text = currentb + ".00";

                            string retValue = string.Format("{0:N0}", Convert.ToDecimal(id.TotalAmountDue.ToString()));
                            lbltotalamountdue.Text = retValue + ".00";
                            lbltotalamountdue2.Text = retValue + ".00";
                        }
                    }
                }
                ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", "var Mleft = (screen.width/2)-(760/2);var Mtop = (screen.height/2)-(700/2);window.print('height=700,width=760,status=yes,toolbar=no,scrollbars=yes,menubar=no,location=no,top=\'+Mtop+\', left=\'+Mleft+\'');setTimeout(function () { window.close(); }, 100);", true);
            }
        }
    }
}