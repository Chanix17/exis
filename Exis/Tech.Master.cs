using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Exis.Model;

namespace Exis
{
    public partial class Tech : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int total = 0;
            int count1 = 0;
            int count2 = 0;
            string datetoday = DateTime.Today.ToString() + "/" + DateTime.Today.Month.ToString() + "/" + DateTime.Today.Year.ToString();
            //check for number of activation
            DataClasses1DataContext db = new DataClasses1DataContext();
            //var countforactivation = db.CountBadgeForActivationAndOpenFromJobOrder(datetoday);
            //foreach (var count in countforactivation)
            //{
            //    if (int.Parse(count.Column1.ToString()) == 0)
            //    {

            //    }
            //    else
            //    {
            //        lblbadgeforactivation.Text = count.Column1.ToString();
            //    }
            //    count1 = int.Parse(count.Column1.ToString());
            //}

            //var countforrepair = db.CountBadgeForRepairAndOpenFromJobOrder(datetoday);
            //foreach (var count in countforrepair)
            //{
            //    if (int.Parse(count.Column1.ToString()) == 0)
            //    {

            //    }
            //    else
            //    {
            //        lblbadgeforrepair.Text = count.Column1.ToString();
            //    }
            //    count2 = int.Parse(count.Column1.ToString());
            //}

            total = count1 + count2;
            //lblalljobordersfortoday.Text = total.ToString();

            if (Session["Username"] != null && Session["UserType"].ToString() == "Technical")
            {
                lbUsername.Text = Session["Username"].ToString();
            }
            else
            {
                Response.Redirect("~/");
                Session.RemoveAll();
            }
        }

        protected void lkbList_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/View/Tech/List");
        }
    }
}