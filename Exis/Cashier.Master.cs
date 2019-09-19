using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exis
{
    public partial class Cashier : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null && Session["UserType"].ToString() == "Cashier")
            {
                lbUsername.Text = Session["Username"].ToString();
            }
            else if (Session["Username"] != null && Session["UserType"].ToString() == "Cashier")
            {
                Response.Redirect("~/View/Cashier/");
            }
            else
            {
                Response.Redirect("~/");
            }
        }
    }
}