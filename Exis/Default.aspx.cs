using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Exis.Model;

namespace Exis
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            try
            {
                Model.DataClasses1DataContext db = new Model.DataClasses1DataContext();
                var users = db.CheckUser();
                foreach (var usersdetails in users)
                {
                    if (txtusername.Text == usersdetails.UserID && txtpassword.Text == usersdetails.Password && usersdetails.UserType == "Administrator" && usersdetails.Status == "Active")
                    {
                        Session["userid"] = usersdetails.UserID;
                        Session["Username"] = usersdetails.Lastname + ", " + usersdetails.Firstname;
                        Session["UserType"] = "Administrator";
                        Session["Email"] = txtusername.Text;

                        if (txtusername.Text == txtpassword.Text)
                        {
                            Response.Redirect("~/View/Account/ChangePassword");
                        }
                        else
                        {
                            Response.Redirect("~/View/Administrator");
                        }

                    }
                    else if (txtusername.Text == usersdetails.UserID && txtpassword.Text == usersdetails.Password && usersdetails.UserType == "CSR" && usersdetails.Status == "Active")
                    {
                        Session["userid"] = usersdetails.UserID;
                        Session["Username"] = usersdetails.Lastname + ", " + usersdetails.Firstname;
                        Session["UserType"] = "CSR";
                        Session["Email"] = txtusername.Text;
                        if (txtusername.Text == txtpassword.Text)
                        {
                            Response.Redirect("~/View/Account/ChangePassword");
                        }
                        else
                        {
                            Response.Redirect("~/View/CSR/");
                        }
                    }
                    else if (txtusername.Text == usersdetails.UserID && txtpassword.Text == usersdetails.Password && usersdetails.UserType == "Technical" && usersdetails.Status == "Active")
                    {
                        Session["userid"] = usersdetails.UserID;
                        Session["Username"] = usersdetails.Lastname + ", " + usersdetails.Firstname;
                        Session["UserType"] = "Technical";
                        Session["Email"] = txtusername.Text;
                        if (txtusername.Text == txtpassword.Text)
                        {
                            Response.Redirect("~/View/Account/ChangePassword");
                        }
                        else
                        {
                            Response.Redirect("~/View/Tech/");
                        }
                    }
                    //else if (txtusername.Text == usersdetails.UserID && txtpassword.Text == usersdetails.Password && usersdetails.UserType == "Cashier" && usersdetails.Status == "Active")
                    //{
                    //    Session["Username"] = usersdetails.Lastname + ", " + usersdetails.Firstname;
                    //    Session["UserType"] = "Cashier";
                    //    Session["Email"] = txtusername.Text;
                    //    if (txtusername.Text == txtpassword.Text)
                    //    {
                    //        Response.Redirect("~/View/Account/ChangePassword");
                    //    }
                    //    else
                    //    {
                    //        Response.Redirect("~/View/Cashier/");
                    //    }
                    //}
                    else if (txtusername.Text == usersdetails.UserID && txtpassword.Text == usersdetails.Password && usersdetails.UserType == "" && usersdetails.Status == "")
                    {
                        lbMessage.Text = "Please verify first.";
                    }
                    else
                    {
                        lbMessage.Text = "Wrong password. Try again.";
                    }
                }
            }
            catch
            {
                lbMessage.Text = "Contact Administrator.";
            }
        }
    }
}