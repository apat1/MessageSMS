/* Andy Pat
 * CSE 446
 * March 22, 2014
 * Assignment 3 Part 1
 * Description: This is a Windows Form Application that 
 *              provides a SMS service. 
 * #1
 */

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;

namespace MessageSMS
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // for cookies
            HttpCookie myCookies = Request.Cookies["myCookieId"];
            if (myCookies != null)
            {
                gmailTxt.Text = myCookies["Email"];
                phoneTxt.Text = myCookies["Number"];
                msgTxt.Text = myCookies["Message"];
            }
        }

        protected void sendBtn_Click(object sender, EventArgs e)
        {
            // proxy to activate and use the web service
            myServiceRef.ServiceClient myWcfProxy = new myServiceRef.ServiceClient();
            // get values in the text boxes as strings
            string account = gmailTxt.Text;
            string password = passTxt.Text;
            string number = phoneTxt.Text;
            string message = msgTxt.Text;
            string temp = providerList.SelectedValue;
            // create provider
            myServiceRef.CARRIER provider = myServiceRef.CARRIER.TMOBILE;
            if(temp == "TMOBILE")
                provider = myServiceRef.CARRIER.TMOBILE;
            else if(temp == "SPRINT")
                provider = myServiceRef.CARRIER.SPRINT;
            else if(temp == "VERIZON")
                provider = myServiceRef.CARRIER.VERIZON;
            else if(temp == "AT&T")
                provider = myServiceRef.CARRIER.ATT;

            // call web service
            myWcfProxy.SMS(account, password, number, provider, message);
        }

        protected void saveBtn_Click(object sender, EventArgs e)
        {
            HttpCookie myCookies = new HttpCookie("myCookieId");
            myCookies["Email"] = gmailTxt.Text;
            myCookies["Password"] = passTxt.Text;
            myCookies["Number"] = phoneTxt.Text;
            myCookies["Message"] = msgTxt.Text;
            myCookies.Expires = DateTime.Now.AddMinutes(1);
            Response.Cookies.Add(myCookies);
        }
    }
}
