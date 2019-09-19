using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Exis.Model;

namespace Exis.View.Account
{
    public partial class New : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataClasses1DataContext db=new DataClasses1DataContext();
            var totalamount = db.CountUser();
            foreach (var t in totalamount)
            {
                int user = int.Parse(t.Column1.ToString());
                int userr = user + 1;
                lblUserID.Text = DateTime.Now.Year.ToString() + "-01" + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + "-0" + userr.ToString();
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            db.InsertUser(lblUserID.Text, txtfname.Text, txtmname.Text, txtlname.Text, "1234", ddlUserType.Text, "Active");
            lbmessage.Text = "Successfully Registered!";
            var totalamount = db.CountUser();
            foreach (var t in totalamount)
            {
                int user = int.Parse(t.Column1.ToString());
                int userr = user + 1;
                lblUserID.Text = DateTime.Now.Year.ToString() + "-01" + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + "-0" + userr.ToString();
            }
            txtfname.Text = "";
            txtmname.Text = "";
            txtlname.Text = "";
        }
    }
}