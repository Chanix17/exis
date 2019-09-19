using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Exis.Model;

namespace Exis.Print
{
    public partial class JobOrderForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string jobtype = "";
            DataClasses1DataContext db = new DataClasses1DataContext();
            if (!IsPostBack)
            {
                string jobid = Request.QueryString["JobOrderId"];

                var query = db.SelectJobOrder(jobid);
                foreach (var id in query)
                {
                    jobtype = id.JobType.ToString();
                    var query2 = db.SelectCustomer(id.AccountNumber);
                    foreach (var id2 in query2)
                    {
                        lblDate.Text= id.DateScheduled.ToString()+ " | " + id.TimeScheduled.ToString();
                        lbldate2.Text = id.DateScheduled.ToString() + " | " + id.TimeScheduled.ToString(); ;
                        lblaccountnumber.Text = id.AccountNumber.ToString() + " | " + id2.Lastname.ToString() + "," + id2.Firstname.ToString();
                        lblaccountnumber2.Text = id.AccountNumber.ToString() + " | " + id2.Lastname.ToString() + "," + id2.Firstname.ToString();
                        lbladdress.Text = "Tower " + id2.TowerID.ToString() + " | " + "Unit No. " + id2.UnitNo.ToString();
                        lbladdress2.Text = "Tower " + id2.TowerID.ToString() + " | " + "Unit No. " + id2.UnitNo.ToString(); 
                        lblserviceplan.Text = id2.ServicePlanName.ToString();
                        lblserviceplan2.Text = id2.ServicePlanName.ToString();
                        txtissuesorconcerns.Text = id.Description.ToString();
                        txtissuesconcerns.Text = id.Description.ToString();
                        txtinstallationnotes.Text = id.InstallationNotes.ToString();
                        txtinstallationnotes2.Text = id.InstallationNotes.ToString();
                        lblJobType.Text = id.JobType.ToString();
                        lbljobtype2.Text = id.JobType.ToString();
                    }
                }

                if (jobtype == "For Disconnection")
                {
                    Label8.Text = "Plan Details";
                    Label26.Text = "Plan Details";
                    Label9.Visible = false;
                    Label27.Visible = false;
                    txtinstallationnotes.Visible = false;
                    txtinstallationnotes2.Visible = false;
                }
                else
                {
                    Label9.Visible = true;
                    Label27.Visible = true;
                    txtinstallationnotes.Visible = true;
                    txtinstallationnotes2.Visible = true;
                }

                ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", "var Mleft = (screen.width/2)-(760/2);var Mtop = (screen.height/2)-(700/2);window.print('height=700,width=760,status=yes,toolbar=no,scrollbars=yes,menubar=no,location=no,top=\'+Mtop+\', left=\'+Mleft+\'');setTimeout(function () { window.close(); }, 100);", true);
            }
        }
    }
}