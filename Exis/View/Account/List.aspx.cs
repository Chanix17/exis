using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Exis.Model;

namespace Exis.View.Account
{
    public partial class List : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //LinkButton btn = (LinkButton)sender;
            //GridViewRow gvr = (GridViewRow)btn.NamingContainer;
            
        }

        protected void lkbSetInActive_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            GridViewRow gvr = (GridViewRow)btn.NamingContainer;
            DataClasses1DataContext db = new DataClasses1DataContext();
            db.UpdateUserStatus(gvr.Cells[0].Text, "Inactive");
            GridView1.DataBind();
        }

        protected void lkbResetPassword_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            LinkButton btn = (LinkButton)sender;
            GridViewRow gvr = (GridViewRow)btn.NamingContainer;
            db.UpdateResetPasswordUser(gvr.Cells[0].Text, "1234");
        }

        protected void lkbChangeUserType_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "script", "$('#UpdateUserType').modal();", true);
            DataClasses1DataContext db = new DataClasses1DataContext();
            LinkButton btn = (LinkButton)sender;
            GridViewRow gvr = (GridViewRow)btn.NamingContainer;
            lbluserid.Text = gvr.Cells[0].Text;
        }

        protected void btnSubmitUserTypeChange_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            db.UpdateUserChangeUserType(lbluserid.Text, ddlusertype.Text);
            GridView1.DataBind();
        }
    }
}