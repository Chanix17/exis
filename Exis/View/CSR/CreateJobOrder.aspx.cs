using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Exis.Model;


namespace Exis.View.CSR
{
    public partial class CreateJobOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            DataClasses1DataContext db = new DataClasses1DataContext();
            var totalamount = db.CountJobOrder();
            foreach (var t in totalamount)
            {
                int user = int.Parse(t.Column1.ToString());
                int userr = user + 1;
                lbljobid.Text = "Job-" + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + DateTime.Now.Day.ToString() + "0" + userr.ToString();
            }
            try
            {
                string fordiscon=Session["jobordertypefordisconnecton"].ToString();
                if (txtAccountNumber.Text != null)
                {
                    if (fordiscon == "For Disconnection")
                    {
                        txtAccountNumber.Text = Session["accnumbjob"].ToString();
                        btnCheckAccount.Visible = false;
                        txtAccountNumber.Enabled = false;
                        txtunitnumber.Visible = false;
                        ddltower.Visible = false;
                        Label11.Visible = false;
                        Label12.Visible = false;
                        ddljobtype.Items.Remove("For Activation");
                        ddljobtype.Items.Remove("For Repair");
                        ddljobtype.Items.Add("For Disconnection");
                        ddljobtype.Enabled = false;

                        var serviceplan = db.SelectServicePlanByPlanName(Session["serviceplancreatejoborder"].ToString());
                        foreach (var svplan in serviceplan)
                        {
                            if (ddljobtype.Text == "For Disconnection")
                            {
                                Label7.Text = "Service Plan Details";
                                txtdescription.Text = svplan.Description.ToString();
                                DropDownList1.Visible = true;
                                DropDownList2.Visible = false;
                                txtdescription.Enabled = false;
                                txtinstallationnotes.Visible = false;
                                Label8.Visible = false;
                            }
                        }
                    }
                    else if (fordiscon == "For Activation")
                    {
                        txtAccountNumber.Text = Session["accnumbjob"].ToString();
                        btnCheckAccount.Visible = false;
                        txtAccountNumber.Enabled = false;
                        txtunitnumber.Visible = false;
                        ddltower.Visible = false;
                        Label11.Visible = false;
                        Label12.Visible = false;

                        ddljobtype.Items.Add("For Activation");
                        ddljobtype.Items.Remove("For Repair");
                        ddljobtype.Items.Remove("For Disconnection");
                        ddljobtype.Enabled = false;

                        var serviceplan = db.SelectServicePlanByPlanName(Session["serviceplancreatejoborder"].ToString());
                        foreach (var svplan in serviceplan)
                        {
                            if (ddljobtype.Text == "For Activation")
                            {
                                txtdescription.Text = svplan.Description.ToString();
                                DropDownList1.Visible = true;
                                DropDownList2.Visible = false;
                                ddljobtype.Enabled = false;
                                txtinstallationnotes.Visible = true;
                                Label8.Visible = true;
                            }
                            else
                            {
                                Label7.Text = "Issues/Concerns";
                                
                            }
                        }
                    }
                    else
                    {
                        txtinstallationnotes.Visible = false;
                        Label8.Visible = false;
                    }
                    //if (Session["setToActivation"].ToString() == "true")
                    //{
                    //    ddljobtype.Items.Add("For Activation");
                    //    ddljobtype.Enabled = false;
                    //    Session.Remove("setToActivation");
                    //}
                    Session.Remove("jobordertypefordisconnecton");
                    Session.Remove("accnumbjob");
                    Session.Remove("serviceplancreatejoborder");
                }
            }
            catch
            {

            }
        }

        protected void btnCheckAccount_Click(object sender, EventArgs e)
        {
            ddljobtype.SelectedItem.Text = "For Repair";
            if (ddltower.Text == "Tower 1")
            {
                    string tower = "T1";
                    DataClasses1DataContext db = new DataClasses1DataContext();
                    var findaccnumber = db.SearchAccountNumber(tower + txtunitnumber.Text + "%");
                    foreach (var accountnumber in findaccnumber)
                    {
                        txtAccountNumber.Text = accountnumber.AccountNumber;
                        lblaccountnumberdoesnotexist.Visible = false;
                        ddltower.Enabled = false;
                        txtunitnumber.Enabled = false;
                    }
                    if (txtAccountNumber.Text == "")
                    {
                        lblaccountnumberdoesnotexist.Visible = true;
                    }
            }
            else if (ddltower.Text == "Tower 2")
            {
                string tower = "T2";
                DataClasses1DataContext db = new DataClasses1DataContext();
                var findaccnumber = db.SearchAccountNumber(tower + txtunitnumber.Text + "%");
                foreach (var accountnumber in findaccnumber)
                {
                    txtAccountNumber.Text = accountnumber.AccountNumber;
                    lblaccountnumberdoesnotexist.Visible = false;
                    ddltower.Enabled = false;
                    txtunitnumber.Enabled = false;
                }
                if (txtAccountNumber.Text == "")
                {
                    lblaccountnumberdoesnotexist.Visible = true;
                }
            }
            else if (ddltower.Text == "Tower 3")
            {
                string tower = "T3";
                DataClasses1DataContext db = new DataClasses1DataContext();
                var findaccnumber = db.SearchAccountNumber(tower + txtunitnumber.Text + "%");
                foreach (var accountnumber in findaccnumber)
                {
                    txtAccountNumber.Text = accountnumber.AccountNumber;
                    lblaccountnumberdoesnotexist.Visible = false;
                    ddltower.Enabled = false;
                    txtunitnumber.Enabled = false;
                }
                if (txtAccountNumber.Text == "")
                {
                    lblaccountnumberdoesnotexist.Visible = true;
                }
            }
            else if (ddltower.Text == "Tower 4")
            {
                string tower = "T4";
                DataClasses1DataContext db = new DataClasses1DataContext();
                var findaccnumber = db.SearchAccountNumber(tower + txtunitnumber.Text + "%");
                foreach (var accountnumber in findaccnumber)
                {
                    txtAccountNumber.Text = accountnumber.AccountNumber;
                    lblaccountnumberdoesnotexist.Visible = false;
                    ddltower.Enabled = false;
                    txtunitnumber.Enabled = false;
                }
                if (txtAccountNumber.Text == "")
                {
                    lblaccountnumberdoesnotexist.Visible = true;
                }
            }

            //try
            //{
            //    if (txtAccountNumber != null)
            //    {
            //        DataClasses1DataContext db2 = new DataClasses1DataContext();
            //        var totalamount2 = db2.SelectCustomer(txtAccountNumber.Text);
            //        foreach (var t in totalamount2)
            //        {
            //            if (txtAccountNumber.Text == t.AccountNumber.ToString())
            //            {
            //                txtaccountnumberdet.Text = t.AccountNumber.ToString();
            //                txtbillingaddressdet.Text = t.BillingAddress.ToString();
            //                txtnamedet.Text = t.Lastname.ToString() + "," + t.Firstname.ToString();
            //                txtserviceplandet.Text = t.ServicePlanName.ToString();
            //                var serviceplan = db2.SelectServicePlanByPlanName(t.ServicePlanName.ToString());
            //                foreach (var svplan in serviceplan)
            //                {
            //                    if (ddljobtype.Text == "For Activation")
            //                    {
            //                        txtdescription.Text = svplan.Description.ToString();
            //                    }
            //                    else
            //                    {
            //                        Label7.Text = "Issues/Concerns";
            //                    }
            //                }
            //                txtAccountNumber.Enabled = false;
            //                btnCheckAccount.Visible = false;
            //                ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#Detail').modal();", true);
            //            }
            //            else
            //            {
            //                ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#Detail2').modal();", true);
            //            }
            //        }
            //    }
            //    else
            //    {
            //        ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#Detail2').modal();", true);
            //    }
            //}
            //catch
            //{
            //    ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#Detail2').modal();", true);
            //}
        }
        string jobordertype;
        string timeschedule;
        string dateschedule;

        string jobordertype1;
        string timeschedule1;
        string dateschedule1;
        protected void btnCreate_Click(object sender, EventArgs e)
        {
            //try
            //{
                //string data = txtDate.Text;
                //string[] splitData = data.Split('/');
                //int monthtoday = int.Parse(DateTime.Today.Month.ToString());
                //int yeartoday = int.Parse(DateTime.Today.Year.ToString());
                //if (yeartoday <= int.Parse(splitData[2]))
                //{
                //    if(monthtoday<=splitData[1])
                //}
                //else
                //{

                //}
                DataClasses1DataContext db = new DataClasses1DataContext();

                var checktimeconflict1 = db.CheckScheduleConflict(ddljobtype.Text, txtDate.Text, DropDownList2.Text);
                foreach (var checkconflict1 in checktimeconflict1)
                {
                    timeschedule1 = checkconflict1.TimeScheduled;
                    jobordertype1 = checkconflict1.JobType;
                    dateschedule1 = checkconflict1.DateScheduled;
                }

                var checktimeconflict = db.CheckScheduleConflict(ddljobtype.Text, txtDate.Text, DropDownList1.Text);
                foreach (var checkconflict in checktimeconflict)
                {
                    timeschedule = checkconflict.TimeScheduled;
                    jobordertype = checkconflict.JobType;
                    dateschedule = checkconflict.DateScheduled;
                }
                    if (txtDate.Text != "" && txtAccountNumber.Text != "")
                    {
                        if (DateTime.Today <= DateTime.Parse(txtDate.Text))
                        {
                            if (timeschedule == DropDownList1.Text && dateschedule == txtDate.Text && jobordertype == ddljobtype.Text)
                            {
                                ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#ConflictSchedule').modal();", true);
                            }
                            else if (timeschedule1 == DropDownList2.Text && dateschedule1 == txtDate.Text && jobordertype1 == ddljobtype.Text)
                            {
                                ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#ConflictSchedule').modal();", true);
                            }
                            else
                            {
                                var checkschedforinstallation = db.CheckScheduleInstallationForToday("For Activation", "Open", txtDate.Text);
                                var checkschedforrepair = db.CheckScheduleInstallationForToday("For Repair", "Open", txtDate.Text);

                                foreach (var checkdayinstallation in checkschedforinstallation)
                                {
                                    foreach (var checkdayrepair in checkschedforrepair)
                                    {
                                        int countinstallation = int.Parse(checkdayinstallation.Column1.ToString());
                                        int countrepair = int.Parse(checkdayrepair.Column1.ToString());
                                        if (ddljobtype.Text == "For Activation")
                                        {
                                            db.UpdateCustomertoReadyForActivation(txtAccountNumber.Text);
                                            db.InsertJobOrder(lbljobid.Text, ddljobtype.Text, txtAccountNumber.Text, txtdescription.Text, txtinstallationnotes.Text, "", "Not Yet Assigned", DateTime.Now.ToString(), txtDate.Text, DropDownList1.Text, "Open");
                                        }
                                        else if(ddljobtype.Text=="For Disconnection")
                                        {
                                            db.InsertJobOrder(lbljobid.Text, ddljobtype.Text, txtAccountNumber.Text, txtdescription.Text, txtinstallationnotes.Text, "", "Not Yet Assigned", DateTime.Now.ToString(), txtDate.Text, DropDownList1.Text, "Open");
                                        }

                                        else
                                        {
                                            db.InsertJobOrder(lbljobid.Text, ddljobtype.Text, txtAccountNumber.Text, txtdescription.Text, txtinstallationnotes.Text, "", "Not Yet Assigned", DateTime.Now.ToString(), txtDate.Text, DropDownList2.Text, "Open");
                                        }
                                        //count joborderagain
                                        var totalamount = db.CountJobOrder();
                                        foreach (var t in totalamount)
                                        {
                                            int user = int.Parse(t.Column1.ToString());
                                            int userr = user + 1;
                                            lbljobid.Text = "Job-" + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + DateTime.Now.Day.ToString() + "0" + userr.ToString();
                                        }
                                        txtdescription.Text = "";
                                        txtinstallationnotes.Text = "";
                                        txtDate.Text = "";
                                        txtAccountNumber.Text = "";
                                        txtAccountNumber.Enabled = true;
                                        ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#Success').modal();", true);
                                    }
                                }
                            }
                        }
                        else
                        {
                            ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#ErrorSchedule').modal();", true);
                        }
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#Error').modal();", true);
                    }
            //}
            //catch
            //{
            //    ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#Error').modal();", true);
            //}
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext db2 = new DataClasses1DataContext();
            var totalamount2 = db2.SelectCustomer(txtAccountNumber.Text);
            foreach (var t in totalamount2)
            {
                if (txtAccountNumber.Text == t.AccountNumber.ToString())
                {
                    txtaccountnumberdet.Text = t.AccountNumber.ToString();
                    txtbillingaddressdet.Text = t.BillingAddress.ToString();
                    txtnamedet.Text = t.Lastname.ToString() + "," + t.Firstname.ToString();
                    txtserviceplandet.Text = t.ServicePlanName.ToString();
                    txtAccountNumber.Enabled = false;
                    btnCheckAccount.Visible = false;
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Account Number doesn't Exist');", true);
                }
            }
        }

        protected void btnCancelconfirmation_Click(object sender, EventArgs e)
        {
            txtAccountNumber.Enabled = true;
            btnCheckAccount.Visible = true;
            txtaccountnumberdet.Text = "";
            txtbillingaddressdet.Text = "";
            txtnamedet.Text = "";
            txtserviceplandet.Text = "";
        }

        protected void ddljobtype_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(ddljobtype.SelectedItem.Text=="For Activation")
            {
                txtinstallationnotes.Visible = true;
                Label8.Visible = true;
                DropDownList1.Visible = true;
                DropDownList2.Visible = false;
            }
            else
            {
                txtinstallationnotes.Visible = false;
                Label8.Visible = false;
                DropDownList1.Visible = false;
                DropDownList2.Visible = true;
            }
        }
    }
}