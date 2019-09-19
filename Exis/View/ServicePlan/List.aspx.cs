using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Exis.Model;

namespace Exis.View.ServicePlan
{
    public partial class List : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnDeleteServicePlan_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            GridViewRow gvr = (GridViewRow)btn.NamingContainer;
            DataClasses1DataContext db = new DataClasses1DataContext();
            db.setInactiveServicePlan(gvr.Cells[0].Text, "Inactive");
            GridView1.DataBind();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            db.UpdateServicePlan(txtserviceplanid.Text, txtserviceplanname.Text, txtdescription.Text, decimal.Parse(txtinternet.Text), decimal.Parse(txtvat.Text), decimal.Parse(txtless.Text), decimal.Parse(txttotal.Text), ddlstatus.Text);
            GridView1.DataBind();
        }

        protected void lkbedit_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#Edit').modal();", true);
            LinkButton btn = (LinkButton)sender;
            GridViewRow gvr = (GridViewRow)btn.NamingContainer;
            txtserviceplanid.Text= gvr.Cells[0].Text;
            txtserviceplanname.Text = gvr.Cells[1].Text;
            txtdescription.Text = gvr.Cells[2].Text;
            txtvat.Text = gvr.Cells[4].Text;
            txtinternet.Text = gvr.Cells[3].Text;
            txtless.Text = gvr.Cells[5].Text;
            txttotal.Text = gvr.Cells[6].Text;
        }
    }
}