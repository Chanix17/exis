using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Exis.Model;

namespace Exis.View.Administrator
{
    public partial class NewTower : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            var counttower = db.CountTowerAll();
            foreach (var counttowerr in counttower)
            {
                int towerid = int.Parse(counttowerr.Column1.ToString()) + 1;
                lblTowerId.Text = towerid.ToString();
                txtTowerName.Text = "Tower " + towerid.ToString();
            }
        }

        protected void btncreate_Click(object sender, EventArgs e)
        {
            try
            {
                DataClasses1DataContext db = new DataClasses1DataContext();
                db.InsertTower(int.Parse(lblTowerId.Text), txtTowerName.Text, "Active");
                lbmessage.CssClass = "label label-success";
                lbmessage.Text = "Succesfully Added a New Tower";
                var counttower = db.CountTowerAll();
                foreach (var counttowerr in counttower)
                {
                    int towerid = int.Parse(counttowerr.Column1.ToString()) + 1;
                    lblTowerId.Text = towerid.ToString();
                    txtTowerName.Text = "Tower " + towerid.ToString();
                }
            }
            catch
            {
                lbmessage.CssClass = "label label-danger";
                lbmessage.Text = "Invalid input";
            }
            
        }
    }
}