using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exis.View.Tech
{
    public partial class ViewAllJobOrders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(txtDate.Text!=null)
            {
                if(DropDownList1.Text=="Show All")
                {
                    GridView2.Visible = true;
                    GridView1.Visible = false;
                    GVForActivation.Visible = false;
                    GVForRepair.Visible = false;
                    GVForDisconnection.Visible = false;
                }
                else if(DropDownList1.Text=="For Activation")
                {
                    GridView2.Visible = false;
                    GridView1.Visible = false;
                    GVForActivation.Visible = true;
                    GVForRepair.Visible = false;
                    GVForDisconnection.Visible = false;
                }
                else if(DropDownList1.Text=="For Repair")
                {
                    GridView2.Visible = false;
                    GridView1.Visible = false;
                    GVForActivation.Visible = false;
                    GVForRepair.Visible = true;
                    GVForDisconnection.Visible = false;
                }
                else if (DropDownList1.Text == "For Disconnection")
                {
                    GridView2.Visible = false;
                    GridView1.Visible = false;
                    GVForActivation.Visible = false;
                    GVForRepair.Visible = false;
                    GVForDisconnection.Visible = true;
                }
            }
            else
            {
                if (DropDownList1.Text == "Show All")
                {
                    GridView2.Visible = false;
                    GridView1.Visible = true;
                    GVForActivation.Visible = false;
                    GVForRepair.Visible = false;
                    GVForDisconnection.Visible = false;
                }
                else if (DropDownList1.Text == "For Activation")
                {
                    GridView2.Visible = false;
                    GridView1.Visible = false;
                    GVForActivation.Visible = true;
                    GVForRepair.Visible = false;
                    GVForDisconnection.Visible = false;
                }
                else if (DropDownList1.Text == "For Repair")
                {
                    GridView2.Visible = false;
                    GridView1.Visible = false;
                    GVForActivation.Visible = false;
                    GVForRepair.Visible = true;
                    GVForDisconnection.Visible = false;
                }
                else if (DropDownList1.Text == "For Disconnection")
                {
                    GridView2.Visible = false;
                    GridView1.Visible = false;
                    GVForActivation.Visible = false;
                    GVForRepair.Visible = false;
                    GVForDisconnection.Visible = true;
                }
            }
        }
        string date;
        protected void btnsetDate_Click(object sender, EventArgs e)
        {
            date=txtDate.Text;
            GridView1.DataBind();
            if (DropDownList1.Text == "Show All")
            {
                GridView2.Visible = false;
                GridView1.Visible = true;
                GVForActivation.Visible = false;
                GVForRepair.Visible = false;
            }
        }

        protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView drv = e.Row.DataItem as DataRowView;
                if (drv["Status"].ToString().Equals("Done"))
                {
                    e.Row.BackColor = System.Drawing.Color.Green;
                    e.Row.ForeColor = System.Drawing.Color.White;
                }
                else if (drv["Status"].ToString().Equals("In Progress"))
                {
                    e.Row.BackColor = System.Drawing.Color.Yellow;
                }
                else if (drv["Status"].ToString().Equals("Pending"))
                {
                    e.Row.BackColor = System.Drawing.Color.LightCoral;
                }
                else if (drv["Status"].ToString().Equals("Open"))
                {
                    e.Row.BackColor = System.Drawing.Color.White;
                }
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView drv = e.Row.DataItem as DataRowView;
                if (drv["Status"].ToString().Equals("Done"))
                {
                    e.Row.BackColor = System.Drawing.Color.Green;
                    e.Row.ForeColor = System.Drawing.Color.White;
                }
                else if (drv["Status"].ToString().Equals("In Progress"))
                {
                    e.Row.BackColor = System.Drawing.Color.Yellow;
                }
                else if (drv["Status"].ToString().Equals("Pending"))
                {
                    e.Row.BackColor = System.Drawing.Color.LightCoral;
                }
                else if (drv["Status"].ToString().Equals("Open"))
                {
                    e.Row.BackColor = System.Drawing.Color.White;
                }
            }
        }


    }
}