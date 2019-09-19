﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exis.View.CSR
{
    public partial class Calendar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string dt = Request.Form[txtDate.UniqueID];
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Selected Date: " + dt + "');", true);
        }
    }
}