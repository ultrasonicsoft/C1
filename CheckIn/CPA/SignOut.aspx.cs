﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CheckIn.CPA
{
    public partial class SignOut : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CheckUserLoggedIn();

            Session["userName"] = null;
            Session["userID"] = null;
            Session["roleID"] = null;
            Response.Redirect("~/Default.aspx");
          
        }
        private void CheckUserLoggedIn()
        {
            if (Session["UserID"] == null)
                Response.Redirect("~/default.aspx");
        }
    }
}