using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exis.View.CSR
{
    public partial class ListofJobOrders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnActive_Click(object sender, EventArgs e)
        {
            GVActive.Visible = true;
            GVDone.Visible = false;
            GVPending.Visible = false;
        }

        protected void btnPending_Click(object sender, EventArgs e)
        {
            GVActive.Visible = false;
            GVDone.Visible = false;
            GVPending.Visible = true;
        }

        protected void btnDone_Click(object sender, EventArgs e)
        {
            GVActive.Visible = false;
            GVDone.Visible = true;
            GVPending.Visible = false;
        }
    }
}