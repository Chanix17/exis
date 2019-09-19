using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Exis.Model;

namespace Exis.View.ServicePlan
{
    public partial class Edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataClasses1DataContext db=new DataClasses1DataContext();
            lbServicePlanId.Text = Session["svplanid"].ToString();
            var totalamount = db.SelectServicePlan(Session["svplanid"].ToString());
            foreach (var t in totalamount)
            {
                txtserviceplanname.Text = t.ServicePlanName.ToString();
                txtdescription.Text = t.Description.ToString();
                txtinternet.Text = t.Internet.ToString();
                txtvat.Text = t.VAT.ToString();
                txtless.Text = t.Less.ToString();
                txttotal.Text = t.Total.ToString();
            }
            
        }

        protected void btncreate_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            db.UpdateServicePlan(lbServicePlanId.Text, txtserviceplanname.Text, txtdescription.Text, decimal.Parse(txtinternet.Text), decimal.Parse(txtvat.Text), decimal.Parse(txtless.Text), decimal.Parse(txttotal.Text), ddlstatus.Text);
            Response.Redirect("~/View/ServicePlan/List");
            Session.Remove("svplanid");
        }
    }
}