using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using RheinBrucke.Data;

namespace RheinBrucke.Karriere.OffeneStellen
{
    public partial class JobDescription : System.Web.UI.Page
    {
        protected string rootpath = ""; public string JobTitle = string.Empty;
        public string JobPOTR = string.Empty;
        protected string JobResponsibilities = string.Empty;
        public string JobField = string.Empty;
        public string MailLink = string.Empty;
        public string JobLocation = string.Empty;
        protected string JobQualification1 = string.Empty;
        protected string JobQualification2 = string.Empty;
        protected string JobQualification3 = string.Empty;
        protected string JobQualification4 = string.Empty;
        protected string JobQualification5 = string.Empty;
        protected string JobQualification6 = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                rootpath = Page.ResolveUrl("~/");

                //string requestURL = Request.QueryString["ID"].ToString(); 
                string requestURL = Page.RouteData.Values["ID"] == null ? "" : Page.RouteData.Values["ID"].ToString();

                if (requestURL != "")
                {
                    string URI = ((System.Web.Routing.Route)Page.RouteData.Route).Url;
                    string[] splitURI = URI.Split('/');
                    requestURL = splitURI[0] + "/" + splitURI[1] + "/" + requestURL;
                }

                LoadJobDescription(requestURL);
            }



        }

        public void LoadJobDescription(string RouteUrl)
        {
            using (RheinBruckeDevEntities context = new RheinBruckeDevEntities())
            {
                var getJobDescription = context.JobLists.Where(e => e.UrlDetails == RouteUrl).FirstOrDefault();
                if (getJobDescription != null)
                {
                    JobTitle = getJobDescription.JobTitle;
                    JobField = getJobDescription.Field;
                    JobQualification1 = getJobDescription.Qualification;
                    //JobQualification2 = getJobDescription.Qualification2;
                    //JobQualification3 = getJobDescription.Qualification3;
                    //JobQualification4 = getJobDescription.Qualification4;
                    //JobQualification5 = getJobDescription.Qualification5;
                    //JobQualification6 = getJobDescription.Qualification6;
                    JobLocation = getJobDescription.Location;
                    if (getJobDescription.POTR == "")
                    {
                        paraPurpose.Style["display"] = "none";
                        paraPOTR.Style["display"] = "none";
                    }
                    else
                    {
                        JobPOTR = getJobDescription.POTR;
                    }
                    if (getJobDescription.Responsiblities == "")
                    {
                        paraResponsibility.Style["display"] = "none";
                    }
                    else
                    {
                        JobResponsibilities = getJobDescription.Responsiblities;
                    }
                    MailLink = "mailto:careers@rheincs.com?subject=" + getJobDescription.JobTitle;
                    DataTable DTRespon = GetStringDT(JobResponsibilities);
                    rptResp.DataSource = DTRespon;
                    rptResp.DataBind();
                    DataTable DTQualification = GetStringDT(JobQualification1);
                    rptQual.DataSource = DTQualification;
                    rptQual.DataBind();
                }



            }
        }
        private DataTable GetStringDT(string value)
        {
            var splitResult = value.Split(new string[] { System.Environment.NewLine },
    System.StringSplitOptions.RemoveEmptyEntries);
            DataTable dt = new DataTable();
            dt.Columns.Add("Title");
            foreach (var item in splitResult)
            {
                var dr = dt.NewRow();
                dr["Title"] = item;
                dt.Rows.Add(dr);
            }
            return dt;
        }
    }
}