using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace PayPalIntegration
{
    public class PayPalExtension
    {
        public static string PayPalRedirectLink(string pProductName, int pProductID, string pAmount, string pUsername,
                                               HttpRequest pRequest, string pQuantity = "1")
        {
            var host = pRequest.Url.Scheme + "://" + pRequest.ServerVariables["HTTP_HOST"];

            // You can create the invoice number in here and put to the database.
            var invoice = Guid.NewGuid().ToString().Replace("-", "");
          

            // Pay pal process Refer for what are the variable are need to send 
            // http://www.paypalobjects.com/IntegrationCenter/ic_std-variable-ref-buy-now.html
            //Mention URL to redirect content to paypal site
            var redirectUrl = ConfigurationManager.AppSettings["PayPalSubmitUrl"] +
                              ConfigurationManager.AppSettings["paypalemail"];

            //First name I assign static based on login details assign this value
            //redirectUrl += "&first_name=Arun_Seller";

            //redirectUrl += "&invoice=" + invoice;
            redirectUrl += "&item_name=" + pProductName; //Product Name
            redirectUrl += "&custom=" + pUsername + "-" + invoice;
            redirectUrl += "&cbt=Finish";
            redirectUrl += "&notify_url=" + host + ConfigurationManager.AppSettings["NotifyURL"];
            redirectUrl += "&amount=" + pAmount; //Product Amount
            //Business contact paypal EmailID
            redirectUrl += "&business=" + ConfigurationManager.AppSettings["paypalemail"];

            //Shipping charges if any, or available or using shopping cart system
            //redirectUrl += "&shipping=0";

            //Handling charges if any, or available or using shopping cart system
            //redirectUrl += "&handling=0";

            //Tax charges if any, or available or using shopping cart system
            //redirectUrl += "&tax=0";

            //Quantiy of product, Here statically added quantity 1
            redirectUrl += "&quantity=" + pQuantity;

            //If transactioin has been successfully performed, redirect SuccessURL page- this page will be designed by developer
            redirectUrl += "&return=" + host + ConfigurationManager.AppSettings["SuccessURL"] + invoice;

            //If transactioin has been failed, redirect FailedURL page- this page will be designed by developer
            redirectUrl += "&cancel_return=" + host + ConfigurationManager.AppSettings["FailedURL"] + invoice;
            return redirectUrl;
        }
    }
}