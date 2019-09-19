using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Exis.Model;

namespace Exis
{
    public partial class CSR : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //check for number of activation
            //DataClasses1DataContext db = new DataClasses1DataContext();
            //var countforactivation = db.CountBadgeForActivationFromCustomer();
            //foreach (var count in countforactivation)
            //{
            //    if (int.Parse(count.Column1.ToString()) == 0)
            //    {

            //    }
            //    else
            //    {
            //        lblbadgeallcustomer.Text = count.Column1.ToString();
            //        lblbadgeforactivation.Text = count.Column1.ToString();
            //    }
            //}
            
            if (Session["Username"] != null && Session["UserType"].ToString() == "CSR")
            {
                lbUsername.Text = Session["Username"].ToString();
            }
            else
            {
                Response.Redirect("~/");
                Session.RemoveAll();
            }
        }
    }
}