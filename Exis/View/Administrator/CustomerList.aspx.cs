using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Exis.Model;

namespace Exis.View.Administrator
{
    public partial class CustomerList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataClasses1DataContext db=new DataClasses1DataContext();
            var totalamount = db.CountCustomer();
            foreach (var t in totalamount)
            lbltotalnumberofcustomer.Text = t.Column1.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView1.Visible = false;
        }

        protected void txtsearch_TextChanged(object sender, EventArgs e)
        {
            GridView1.Visible = false;
        }

        protected void txtunitnumber_TextChanged(object sender, EventArgs e)
        {
            GridView1.Visible = true;
        }

        protected void lkbChangeServicePlan_Click(object sender, EventArgs e)
        {

        }
        decimal svplantotal;
        decimal svplantotaldue;
        string svplanid;
        string scustomer1;
        protected void btnUpdateCustomerInfo_Click(object sender, EventArgs e)
        {
            
            DataClasses1DataContext db = new DataClasses1DataContext();
            var selectcustomer=db.SelectCustomer(txtaccountnumberdet2.Text);
            foreach(var scustomer in selectcustomer)
            {
                scustomer1 = scustomer.ServicePlanName.ToString();
            }

            var selectsvplan = db.SelectServicePlanByPlanName(ddlserviceplan.Text);
            foreach(var svplan in selectsvplan)
            {
                svplantotal=decimal.Parse(svplan.Total.ToString());
                svplantotaldue=svplantotal+1200;
                svplanid=svplan.ServicePlanID;
            }
            if (txtserviceplan.Text != ddlserviceplan.Text)
            {
                db.UpdateCustomerByAdmin(txtaccountnumberdet2.Text, txtfirstname.Text, txtmname.Text, txtlname.Text, txtDate.Text, txtcivilstatusdet2.Text, txtgenderdet2.Text, txtnationalitydet2.Text, txtemaildet2.Text, txtcontactnumberdet2.Text, txtcontactnumber2det2.Text, ddlserviceplan.Text);
                db.UpdateBillingFromAdmin(txtaccountnumberdet2.Text, svplantotal, svplantotaldue, svplanid);
                Response.Redirect("~/View/Administrator/CustomerList");
            }
            else
            {
                db.UpdateBillingFromAdmin(txtaccountnumberdet2.Text, svplantotal, svplantotaldue, svplanid);
                GridView1.DataBind();
            }
        }

        protected void lkbUpdateInfo_Click(object sender, EventArgs e)
        {
            ddlserviceplan.Visible = false;
            ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#Update').modal();", true);
            LinkButton btn = (LinkButton)sender;
            GridViewRow gvr = (GridViewRow)btn.NamingContainer;
            DataClasses1DataContext db = new DataClasses1DataContext();
            //txtaccountnumberdet.Text = gvr.Cells[0].Text;
            var totalamount = db.SelectCustomer(gvr.Cells[0].Text);
            foreach (var t in totalamount)
            {
                if (gvr.Cells[0].Text == t.AccountNumber.ToString())
                {
                    txtaccountnumberdet2.Text = t.AccountNumber.ToString();
                    txtunitno.Text = t.UnitNo.ToString();
                    ddltowerno.SelectedValue = t.TowerID.ToString();
                    txtfirstname.Text = t.Firstname.ToString();
                    txtmname.Text = t.Middlename.ToString();
                    txtlname.Text = t.Lastname.ToString();
                    txtserviceplan.Text = t.ServicePlanName.ToString();
                    txtcivilstatusdet2.Text = t.CivilStatus.ToString();
                    txtgenderdet2.Text = t.Gender.ToString();
                    txtnationalitydet2.Text = t.Nationality.ToString();
                    txtDate.Text = t.Birthdate.ToString();
                    txtemaildet2.Text = t.EmailAddress.ToString();
                    txtcontactnumberdet2.Text = t.ContactNumber.ToString();
                    txtcontactnumber2det2.Text = t.ContactNumber2.ToString();
                    txtstatusdet2.Text = t.Status.ToString();
                }
                if(t.Status=="Active")
                {
                    LinkButton1.Visible = false;
                }
                else
                {
                    LinkButton1.Visible = true;
                }
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            ddlserviceplan.Visible = true;
            ddlserviceplan.Items.Remove("" + txtserviceplan.Text);
            ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#Update').modal();", true);
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            GridView2.Visible = true;
            ddltower.Visible = false;
            lbltower.Visible = false;
            txtunitnumber.Visible = false;
            lblunitnumber.Visible = false;
        }

    }
}