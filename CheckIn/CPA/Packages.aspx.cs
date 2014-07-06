using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PayPalIntegration;

namespace CheckIn.Web_Pages
{
    public partial class Packages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CheckUserLoggedIn();
        }
        private void CheckUserLoggedIn()
        {
            if (Session["UserID"] == null)
                Response.Redirect("~/default.aspx");
        }
        protected void btnMakePayment_Click(object sender, EventArgs e)
        {
            try
            {
                //Response.Redirect("~/Default.aspx");

                var productName = "Online CPA Subscription";
                var productID = 10009;
                //var amount = "10000"; // Note that if you have 5$ you need to put 5*100 = 500 => Amount = 500. Because PayPal will take amount/100
                string amount = "0.01"; // Note that if you have 5$ you need to put 5*100 = 500 => Amount = 500. Because PayPal will take amount/100
                if (rbtnRegular.Checked)
                {
                    amount = "20";
                }
                else if (rbtnPremium.Checked)
                {
                    amount = "40";
                }
                int userID = 0;
                string customer = string.Empty;
                if (int.TryParse(Session["UserID"].ToString(), out userID))
                {
                    customer = BusinessLogic.GetLoggedInName(userID);
                }
                var url = PayPalExtension.PayPalRedirectLink(productName, productID, amount, customer, Request);
                Response.Redirect(url);
            }
            catch (Exception exception)
            {
                Response.Write(exception.Message);
            }
           
        }
    }
}