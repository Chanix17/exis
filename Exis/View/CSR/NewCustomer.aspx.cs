using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Exis.Model;
using System.Net.Mail;

namespace Exis.View.CSR
{
    public partial class NewCustomer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
        }
        string towerunitnumber;
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //try
            //{ 
            DateTime yearnow = DateTime.Now;
            string accountnumber = "T" + ddltowerno.Text + txtunitno.Text + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + yearnow.ToString("yy");
                DataClasses1DataContext db = new DataClasses1DataContext();
                    //check user acc
                    var towerunit = db.CheckCustomerIfExistByTowerAndUnitNumber(ddltowerno.Text,txtunitno.Text);
                    foreach (var towerunitt in towerunit)
                    {
                        if (towerunitt.TowerID.ToString()==ddltowerno.Text && towerunitt.UnitNo.ToString()==txtunitno.Text)
                        {
                            towerunitnumber = "exist";
                        }
                        else
                        {
                            towerunitnumber = "k";
                        }
                    }

            
            if(towerunitnumber=="exist")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#CustomerAlreadyExist').modal();", true);
            }
            else
            {
                if (accountnumber != "" && txtfname.Text != "" && txtlname.Text != "" && txtDate.Text != "" && txtNationality.Text != "" && txtunitno.Text != "" && txtemailadd.Text != "" && txtcontactnumber1.Text != "")
                {
                    db.InsertCustomer(accountnumber, txtfname.Text, txtmname.Text, txtlname.Text, txtDate.Text, txtCivilStatus.Text, txtGender.Text, txtNationality.Text, "", ddlServiceplan.Text, ddltowerno.Text + " | " + txtunitno.Text, ddltowerno.Text, txtunitno.Text, txtemailadd.Text, txtcontactnumber1.Text, txtcontactnumber2.Text, "For Payment", DateTime.Now.ToString());

                    //insert customertype
                    string validid;
                    if (chckvalidid.Checked == true)
                    {
                        validid = "true";
                    }
                    else
                    {
                        validid = "false";
                    }
                    string authoritytomovein;
                    if (chckauthoritytomovein.Checked == true)
                    {
                        authoritytomovein = "true";
                    }
                    else
                    {
                        authoritytomovein = "false";
                    }
                    string passport;
                    if (chckpassport.Checked == true)
                    {
                        passport = "true";
                    }
                    else
                    {
                        passport = "false";
                    }
                    string icrcard;
                    if (chckicrcard.Checked == true)
                    {
                        icrcard = "true";
                    }
                    else
                    {
                        icrcard = "false";
                    }
                    string loc;
                    if (chckicrcard0.Checked == true)
                    {
                        loc = "true";
                    }
                    else
                    {
                        loc = "false";
                    }
                    db.InsertCustomerType(accountnumber, ddlsets.Text, validid, authoritytomovein, passport, icrcard, loc);

                    //start of add first bill of client
                    //                //start of count bill
                    string billid;
                    DataClasses1DataContext db0 = new DataClasses1DataContext();
                    var countall = db0.CountAllBill();
                    foreach (var countall1 in countall)
                    {
                        int countallbill = int.Parse(countall1.Column1.ToString());
                        int countallbilll = countallbill + 1;
                        var totalamount0 = db0.CountBill(accountnumber);
                        foreach (var t0 in totalamount0)
                        {
                            int user = int.Parse(t0.Column1.ToString());
                            int userr = user + 1;
                            //start of selecting planid
                            DataClasses1DataContext db01 = new DataClasses1DataContext();
                            var totalamount01 = db01.SelectServicePlanByPlanName(ddlServiceplan.Text);
                            foreach (var t01 in totalamount01)
                            {
                                billid = "Bill-" + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + DateTime.Now.Day.ToString() + "0" + countallbilll.ToString();
                                decimal totaldue = decimal.Parse(t01.Total.ToString()) + 1200;
                                int month = 9;
                                if (month < int.Parse(DateTime.Now.Month.ToString()))
                                {
                                    db.InsertBillingInstallation(billid, accountnumber, DateTime.Now.ToString(), userr, 0, 0, 0, 0, t01.ServicePlanID.ToString(), t01.Total, totaldue, DateTime.Now.Month.ToString() + "/" + DateTime.Now.Day.ToString() + "/" + DateTime.Now.Year.ToString(), "", "For Payment",1200);
                                }
                                else
                                {
                                    db.InsertBillingInstallation(billid, accountnumber, DateTime.Now.ToString(), userr, 0, 0, 0, 0, t01.ServicePlanID.ToString(), t01.Total, totaldue, DateTime.Now.Month.ToString() + "/" + DateTime.Now.Day.ToString() + "/" + DateTime.Now.Year.ToString(), "", "For Payment",1200);
                                }
                                ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#Success').modal();", true);
                            }
                        }
                    }
                    //end of count bill

                    clear();
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#Error').modal();", true);
                }
            }
            //}
            //catch
            //{
            //    ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#CustomerAlreadyExist').modal();", true);
            //}




               
            //try
            //{
                //if (txtfname.Text != "" && txtmname.Text != "" && txtlname.Text != "" && txtDate.Text != "" && txtNationality.Text != "" && txtunitno.Text != "" && txtemailadd.Text != "" && txtcontactnumber1.Text != "")
                //{
                //    DataClasses1DataContext db = new DataClasses1DataContext();
                //    string accountnumber;
                //    var countcustomer = db.CountCustomer();
                //    foreach (var customer in countcustomer)
                //    {
                //        accountnumber = "T" + ddltowerno.Text + txtunitno.Text + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Year.ToString();
                //        //checking of the account number if it already exist.
                //        var checkaccountnumber = db.SelectCustomer(accountnumber);
                //        foreach (var chkacc in checkaccountnumber)
                //        {
                //            if (accountnumber == chkacc.AccountNumber)
                //            {
                //                ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#CustomerAlreadyExist').modal();", true);
                //            }
                //            else
                //            {
                //                db.InsertCustomer(accountnumber, txtfname.Text, txtmname.Text, txtlname.Text, txtDate.Text, txtCivilStatus.Text, txtGender.Text, txtNationality.Text, "", ddlServiceplan.Text, ddltowerno.Text + " | " + txtunitno.Text, ddltowerno.Text, txtunitno.Text, txtemailadd.Text, txtcontactnumber1.Text, txtcontactnumber2.Text, "For Payment", DateTime.Now.ToString());
                //                //start of add first bill of client
                //                //start of count bill
                //                string billid;
                //                DataClasses1DataContext db0 = new DataClasses1DataContext();
                //                var countall = db0.CountAllBill();
                //                foreach (var countall1 in countall)
                //                {
                //                    int countallbill = int.Parse(countall1.Column1.ToString());
                //                    int countallbilll = countallbill + 1;
                //                    var totalamount0 = db0.CountBill(accountnumber);
                //                    foreach (var t0 in totalamount0)
                //                    {
                //                        int user = int.Parse(t0.Column1.ToString());
                //                        int userr = user + 1;
                //                        //start of selecting planid
                //                        DataClasses1DataContext db01 = new DataClasses1DataContext();
                //                        var totalamount01 = db01.SelectServicePlanByPlanName(ddlServiceplan.Text);
                //                        foreach (var t01 in totalamount01)
                //                        {
                //                            billid = "Bill-" + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + DateTime.Now.Day.ToString() + "0" + countallbilll.ToString();
                //                            db.InsertBillingInstallation(billid, accountnumber, DateTime.Now.ToString(), userr, 0, 0, 0, 0, t01.ServicePlanID.ToString(), t01.Total, t01.Total, DateTime.Now.Day.ToString() + "/0" + DateTime.Now.Month.ToString() + "/" + DateTime.Now.Year.ToString(), "For Payment");
                //                            ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#Success').modal();", true);
                //                        }
                //                    }
                //                }
                //                //end of count bill
                //                //end of first bill of client
                //                txtfname.Text = "";
                //                txtmname.Text = "";
                //                txtlname.Text = "";
                //                txtDate.Text = "";
                //                txtCivilStatus.Text = "";
                //                txtGender.Text = "";
                //                txtNationality.Text = "";
                //                txtemailadd.Text = "";
                //                txtcontactnumber1.Text = "";
                //                txtcontactnumber2.Text = "";
                //                txtunitno.Text = "";
                //            }
                //        }
                //    }
                //}
                //else
                //{
                //    ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#Error').modal();", true);
                //}
                
            //}
            //catch
            //{
            //}
        }
        private void clear()
        {
            txtfname.Text = "";
            txtmname.Text = "";
            txtlname.Text = "";
            txtDate.Text = "";
            txtCivilStatus.Text = "";
            txtGender.Text = "";
            txtNationality.Text = "";
            txtemailadd.Text = "";
            txtcontactnumber1.Text = "";
            txtcontactnumber2.Text = "";
            txtunitno.Text = "";
        }

        protected void ddlsets_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(ddlsets.Text=="Foreigner")
            {
                chckpassport.Visible = true;
                chckicrcard.Visible = true;
                chckicrcard0.Visible = false;
            }
            else if(ddlsets.Text=="Tenant")
            {
                chckicrcard0.Visible = true;
                chckpassport.Visible = false;
                chckicrcard.Visible = false;
            }
            else
            {
                chckpassport.Visible = false;
                chckicrcard.Visible = false;
                chckicrcard0.Visible = false;
            }
        }
    }
}