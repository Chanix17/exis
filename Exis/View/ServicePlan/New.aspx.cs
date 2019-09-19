using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Exis.Model;


namespace Exis.View.ServicePlan
{
    public partial class New : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            var totalamount = db.CountServicePlan();
            foreach (var t in totalamount)
            {
                int user = int.Parse(t.Column1.ToString());
                int userr = user + 1;
                lbServicePlanId.Text = "SP-"+ userr.ToString();
                txtserviceplanname.Text = "Service Plan " + userr.ToString();
            }
        }

        protected void btncreate_Click(object sender, EventArgs e)
        {
            try
            {
                DataClasses1DataContext db = new DataClasses1DataContext();
                db.InsertServicePlan(lbServicePlanId.Text, txtserviceplanname.Text, txtdescription.Text, decimal.Parse(txtinternet.Text), decimal.Parse(txtvat.Text), decimal.Parse(txtless.Text), decimal.Parse(txttotal.Text), "Active");
                lbmessage.Text = "Successfully Created Plan!";
                lbmessage.CssClass = "label label-success";
                var totalamount = db.CountServicePlan();
                foreach (var t in totalamount)
                {
                    int user = int.Parse(t.Column1.ToString());
                    int userr = user + 1;
                    lbServicePlanId.Text = "SP-" + userr.ToString();
                    txtserviceplanname.Text = "Service Plan" + userr.ToString();
                }
                txtdescription.Text = "";
                txtinternet.Text = "";
                txtvat.Text = "";
                txtless.Text = "";
                txttotal.Text = "";
            }
            catch
            {
                lbmessage.Text = "Invalid Input!";
                lbmessage.CssClass = "label label-danger";
            }
        }
    }
}