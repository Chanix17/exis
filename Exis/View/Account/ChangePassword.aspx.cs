using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Exis.Model;

namespace Exis.View.Account
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbuserid.Text = Session["userid"].ToString();
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            try
            {
                lbuserid.Text = Session["userid"].ToString();
                DataClasses1DataContext db = new DataClasses1DataContext();
                db.ChangePassword(lbuserid.Text, txtnewpass.Text);
                lbmessage.Text = "Successfully Changed Password";
            }
            catch
            {
                lbmessage2.Text = "Unable to Change Password";
            }
        }
    }
}