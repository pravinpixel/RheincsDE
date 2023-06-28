using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using RheinBrucke.Library;
using System.Web.Configuration;

namespace RheinBrucke
{
    public partial class Kontakt : System.Web.UI.Page
    {
        protected string rootpath = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                rootpath = Page.ResolveUrl("~/");
            }
        }

        [WebMethod]
        public static string UpdateContactUs(string name, string email, string message, string phone, string Services)
        {
            string response = "failed";
            try
            {
                using (Rheincs context = new Rheincs())
                {
                    //ContactUSMailID
                    string toAddress = WebConfigurationManager.AppSettings["ContactUSMailID"];
                    MasterRepository obj = new MasterRepository();
                    bool status = obj.SaveContactUS(name, email, message, phone, Services);
                    if (status)
                        response = "success";
                    MailComponent objMail = new MailComponent();
                    objMail.SendMail_SaveContactUs(toAddress, name, email, phone, message, Services, Utility.SiteUrl);
                    objMail.SendMail_SaveUserContact(name, email, Utility.SiteUrl);

                }


            }
            catch (Exception ex)
            {
                //ErrorLog.WriteLog("ContactUS", "UpdateContactUs", ex);
            }
            return response;

        }
        /*[WebMethod]
        public static string UpdateCallout(string name, string email, string phone, string message)
        {
            string response = "failed";
            try
            {

                //ContactUSMailID
                string toAddress = WebConfigurationManager.AppSettings["ContactUSMailID"];
                MasterRepository obj = new MasterRepository();
                bool status = obj.SaveCallout(name, email, phone, message);
                if (status)
                    response = "success";
                MailComponent objMail = new MailComponent();
                objMail.SendMail_SaveCallout(toAddress, name, email, phone, message, Utility.SiteUrl);
                objMail.SendMail_SaveUserCallout(name, email, Utility.SiteUrl);

            }
            catch (Exception ex)
            {
                //ErrorLog.WriteLog("ContactUS", "UpdateContactUs", ex);
            }
            return response;

        }
        */
        [WebMethod]
        public static string UpdateAMS(string name, string email, string phone)
        {
            string response = "failed";
            try
            {

                //ContactUSMailID
                string toAddress = WebConfigurationManager.AppSettings["ContactUSMailID"];
                MasterRepository obj = new MasterRepository();
                bool status = obj.SaveAms(name, email, phone);
                if (status)
                    response = "success";
                MailComponent objMail = new MailComponent();
                objMail.SendMail_SaveAMSAdmin(toAddress, name, email, phone, Utility.SiteUrl);
                objMail.SendMail_SaveAMSUser(name, email, Utility.SiteUrl);

            }
            catch (Exception ex)
            {
                //ErrorLog.WriteLog("ContactUS", "UpdateContactUs", ex);
            }
            return response;
        }

        [WebMethod]
        public static string UpdatePEP(string name, string email, string phone)
        {
            string response = "failed";
            try
            {

                //ContactUSMailID
                string toAddress = WebConfigurationManager.AppSettings["ContactUSMailID"];
                MasterRepository obj = new MasterRepository();
                bool status = obj.SavePep(name, email, phone);
                if (status)
                    response = "success";
                MailComponent objMail = new MailComponent();
                objMail.SendMail_SavePEPAdmin(toAddress, name, email, phone, Utility.SiteUrl);
                objMail.SendMail_SavePEPUser(name, email, Utility.SiteUrl);

            }
            catch (Exception ex)
            {
                //ErrorLog.WriteLog("ContactUS", "UpdateContactUs", ex);
            }
            return response;
        }

        [WebMethod]
        public static string UpdateEpicPay(string name, string email, string mobileno)
        {
            string response = "failed";
            try
            {

                //ContactUSMailID
                string toAddress = WebConfigurationManager.AppSettings["ContactUSMailID"];
                MasterRepository obj = new MasterRepository();
                bool status = obj.SaveEpicpay(name, email, mobileno);
                if (status)
                    response = "success";
                MailComponent objMail = new MailComponent();
                objMail.SendMail_SaveEpicPayAdmin(toAddress, name, email, mobileno, Utility.SiteUrl);
                objMail.SendMail_SaveEpicPayUser(name, email, Utility.SiteUrl);

            }
            catch (Exception ex)
            {
                //ErrorLog.WriteLog("ContactUS", "UpdateContactUs", ex);
            }
            return response;
        }
    }


}