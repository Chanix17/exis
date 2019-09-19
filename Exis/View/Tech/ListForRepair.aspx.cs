using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Exis.Model;

namespace Exis.View.Tech
{
    public partial class ListForRepair : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int day = 10;
            if (day > int.Parse(DateTime.Now.Day.ToString()))
            {
                txtDate.Text = "0" + DateTime.Now.Day.ToString() + "/0" + DateTime.Now.Month.ToString() + "/" + DateTime.Now.Year.ToString();
            }
            else
            {
                txtDate.Text = DateTime.Now.Day.ToString() + "/0" + DateTime.Now.Month.ToString() + "/" + DateTime.Now.Year.ToString();
            }

            DataClasses1DataContext db = new DataClasses1DataContext();
            //badge for open
            var copen = db.CountBadgeForRepairAndOpenFromJobOrder("Open", "For Repair");
            foreach (var countopen in copen)
            {
                spnMyReq.InnerText = countopen.Column1.ToString();
            }

            //badge for in progress
            var cinprog = db.CountBadgeForRepairAndOpenFromJobOrder("In Progress", "For Repair");
            foreach (var countinprog in cinprog)
            {
                spnActive.InnerText = countinprog.Column1.ToString();
            }

            //badge for in pending
            var cpend = db.CountBadgeForRepairAndOpenFromJobOrder("Pending", "For Repair");
            foreach (var countpending in cpend)
            {
                spnPending.InnerText = countpending.Column1.ToString();
            }

            //badge for in done
            var cdone = db.CountBadgeForRepairAndOpenFromJobOrder("Done", "For Repair");
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
            Response.Redirect("~/View/Tech/ListForRepair");
        }

        protected void lkbAssign_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            GridViewRow gvr = (GridViewRow)btn.NamingContainer;
            txtJobId.Text = gvr.Cells[0].Text;
            if (gvr.Cells[4].ToString() == null)
            {
                txtTechnical.Text = "";
            }
            else
            {
                txtTechnical.Text = gvr.Cells[4].Text;
            }
            ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#Assign').modal();", true);
        }

        protected void lkbPrintJobOrder_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            GridViewRow gvr = (GridViewRow)btn.NamingContainer;
            DataClasses1DataContext db = new DataClasses1DataContext();
            var totalamount = db.SelectJobOrder(gvr.Cells[0].Text);
            ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", "var Mleft = (screen.width/2)-(760/2);var Mtop = (screen.height/2)-(700/2);window.open('/Print/JobOrderForm?JobOrderId=" + gvr.Cells[0].Text + "', null, 'fullscreen=yes,status=yes,toolbar=no,scrollbars=yes,menubar=no,location=no,top=\'+Mtop+\', left=\'+Mleft+\'' );", true);
        }

        protected void btnAssign_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            db.AssignTechnical(txtJobId.Text, txtTechnical.Text);
            refreshgridviews();
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
            db.UpdateJobOrderStatus(gvr.Cells[0].Text, "Done");
            db.UpdateCustomerActive(gvr.Cells[2].Text);

            refreshgridviews();
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
            db.UpdateJobOrderPending(lbljoborderidremarks.Text, txtremarks.Text, "Pending");
            refreshgridviews();
        }
        string date = "";

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
            var checkschedforrepair = db.CheckScheduleInstallationForToday("For Repair", "Open", txtDate.Text);
            foreach (var checkdayrepair in checkschedforrepair)
            {
                int countrepair = int.Parse(checkdayrepair.Column1.ToString());
                if (countrepair == 5)
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
        }
    }
}