using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RheinBrucke.Data;
using System.Web.Services;
using System.Data;
using System.Reflection;
namespace RheinBrucke.Karriere.OffeneStellen
{
    public partial class OffeneStellen : System.Web.UI.Page
    {
        public string rootpath = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                rootpath = Page.ResolveUrl("~/");
            }
            //if (!Page.IsPostBack)
            //{ 
            //    using (RheinBruckeDevEntities context = new RheinBruckeDevEntities())
            //    {
            //        List<Data.JobList> jobList = context.JobLists.ToList();

            //        DataTable getAllJobs = getData(jobList);
            //        rptjoblisting.DataSource = getAllJobs;
            //        rptjoblisting.DataBind();
            //    }
            //}
        }

        //public void LoadOpenings()
        //{
        //    using (RheinBruckeDevEntities context = new RheinBruckeDevEntities())
        //    {
        //        string Lcondition = string.Empty;
        //        if (job_type_consulting.Checked || job_type_in_erp_practice.Checked || job_type_it_practice.Checked || job_type_product_development.Checked)
        //        {
        //            if (job_type_consulting.Checked && !job_type_in_erp_practice.Checked && !job_type_it_practice.Checked && !job_type_product_development.Checked)
        //            {
        //                if(search_keywords.Text!=string.Empty && search_location.Text!=string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_consulting.Text)) && x.JobTitle.Contains(search_keywords.Text) && x.Location.Contains(search_location.Text)).ToList();
        //                else if(search_keywords.Text!=string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_consulting.Text)) && x.JobTitle.Contains(search_keywords.Text)).ToList();
        //                else if (search_location.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_consulting.Text)) && x.Location.Contains(search_location.Text)).ToList();
        //                else
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => x.Field.Contains(job_type_consulting.Text)).ToList();

        //            }
        //            else if (!job_type_consulting.Checked && job_type_in_erp_practice.Checked && !job_type_it_practice.Checked && !job_type_product_development.Checked)
        //            {
        //                if (search_keywords.Text != string.Empty && search_location.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_in_erp_practice.Text)) && x.JobTitle.Contains(search_keywords.Text) && x.Location.Contains(search_location.Text)).ToList();
        //                else if (search_keywords.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_in_erp_practice.Text)) && x.JobTitle.Contains(search_keywords.Text)).ToList();
        //                else if (search_location.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_in_erp_practice.Text)) && x.Location.Contains(search_location.Text)).ToList();
        //                else

        //                rptjoblisting.DataSource = context.JobLists.Where(x => x.Field.Contains(job_type_in_erp_practice.Text)).ToList();
        //            }
        //            else if (!job_type_consulting.Checked && !job_type_in_erp_practice.Checked && job_type_it_practice.Checked && !job_type_product_development.Checked)
        //            {
        //                if (search_keywords.Text != string.Empty && search_location.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_it_practice.Text)) && x.JobTitle.Contains(search_keywords.Text) && x.Location.Contains(search_location.Text)).ToList();
        //                else if (search_keywords.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_it_practice.Text)) && x.JobTitle.Contains(search_keywords.Text)).ToList();
        //                else if (search_location.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_it_practice.Text)) && x.Location.Contains(search_location.Text)).ToList();
        //                else

        //                rptjoblisting.DataSource = context.JobLists.Where(x => x.Field.Contains(job_type_it_practice.Text) && x.JobTitle.Contains(search_keywords.Text)).ToList();
        //            }
        //            else if (!job_type_consulting.Checked && !job_type_in_erp_practice.Checked && !job_type_it_practice.Checked && job_type_product_development.Checked)
        //            {
        //                if (search_keywords.Text != string.Empty && search_location.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_product_development.Text)) && x.JobTitle.Contains(search_keywords.Text) && x.Location.Contains(search_location.Text)).ToList();
        //                else if (search_keywords.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_product_development.Text)) && x.JobTitle.Contains(search_keywords.Text)).ToList();
        //                else if (search_location.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_product_development.Text)) && x.Location.Contains(search_location.Text)).ToList();
        //                else
        //                rptjoblisting.DataSource = context.JobLists.Where(x => x.Field.Contains(job_type_product_development.Text)).ToList();
        //            }
        //            else if (job_type_consulting.Checked && job_type_in_erp_practice.Checked && !job_type_it_practice.Checked && !job_type_product_development.Checked)
        //            {
        //                if (search_keywords.Text != string.Empty && search_location.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_consulting.Text) || x.Field.Contains(job_type_in_erp_practice.Text)) && x.JobTitle.Contains(search_keywords.Text) && x.Location.Contains(search_location.Text)).ToList();
        //               else if (search_keywords.Text != string.Empty )
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_consulting.Text) || x.Field.Contains(job_type_in_erp_practice.Text)) && x.JobTitle.Contains(search_keywords.Text)).ToList();

        //                else if (search_location.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_consulting.Text) || x.Field.Contains(job_type_in_erp_practice.Text)) && x.Location.Contains(search_location.Text)).ToList();
        //                else
        //                rptjoblisting.DataSource = context.JobLists.Where(x => x.Field.Contains(job_type_consulting.Text) || x.Field.Contains(job_type_in_erp_practice.Text)).ToList();
        //            }
        //            else if(job_type_consulting.Checked && job_type_in_erp_practice.Checked && job_type_it_practice.Checked && !job_type_product_development.Checked)
        //            {
        //                if (search_keywords.Text != string.Empty && search_location.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_consulting.Text) || x.Field.Contains(job_type_in_erp_practice.Text) || x.Field.Contains(job_type_it_practice.Text)) && x.JobTitle.Contains(search_keywords.Text) && x.Location.Contains(search_location.Text)).ToList();
        //                else if (search_keywords.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_consulting.Text) || x.Field.Contains(job_type_in_erp_practice.Text) || x.Field.Contains(job_type_it_practice.Text)) && x.JobTitle.Contains(search_keywords.Text)).ToList();

        //                else if (search_location.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_consulting.Text) || x.Field.Contains(job_type_in_erp_practice.Text) || x.Field.Contains(job_type_it_practice.Text)) && x.Location.Contains(search_location.Text)).ToList();
        //                else
        //                rptjoblisting.DataSource = context.JobLists.Where(x => x.Field.Contains(job_type_consulting.Text) || x.Field.Contains(job_type_in_erp_practice.Text) || x.Field.Contains(job_type_it_practice.Text)).ToList();
        //            }
        //            else if (job_type_consulting.Checked && !job_type_in_erp_practice.Checked && job_type_it_practice.Checked && !job_type_product_development.Checked)
        //            {
        //                if (search_keywords.Text != string.Empty && search_location.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_consulting.Text) || x.Field.Contains(job_type_it_practice.Text)) && x.JobTitle.Contains(search_keywords.Text) && x.Location.Contains(search_location.Text)).ToList();
        //                else if (search_keywords.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_consulting.Text) || x.Field.Contains(job_type_it_practice.Text)) && x.JobTitle.Contains(search_keywords.Text)).ToList();
        //                else if (search_location.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_consulting.Text) || x.Field.Contains(job_type_it_practice.Text)) && x.Location.Contains(search_location.Text)).ToList();
        //                else
        //                rptjoblisting.DataSource = context.JobLists.Where(x => x.Field.Contains(job_type_consulting.Text) || x.Field.Contains(job_type_it_practice.Text)).ToList();
        //            }
        //            else if (job_type_consulting.Checked && !job_type_in_erp_practice.Checked && !job_type_it_practice.Checked && job_type_product_development.Checked)
        //            {
        //                if (search_keywords.Text != string.Empty && search_location.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_consulting.Text) || x.Field.Contains(job_type_product_development.Text)) && x.JobTitle.Contains(search_keywords.Text) && x.Location.Contains(search_location.Text)).ToList();
        //                else if (search_keywords.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_consulting.Text) || x.Field.Contains(job_type_product_development.Text)) && x.JobTitle.Contains(search_keywords.Text)).ToList();

        //                else if (search_location.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_consulting.Text) || x.Field.Contains(job_type_product_development.Text)) && x.Location.Contains(search_location.Text)).ToList();
        //                else
        //                rptjoblisting.DataSource = context.JobLists.Where(x => x.Field.Contains(job_type_consulting.Text) || x.Field.Contains(job_type_product_development.Text)).ToList();
        //            }
        //            else if (!job_type_consulting.Checked && job_type_in_erp_practice.Checked && job_type_it_practice.Checked && !job_type_product_development.Checked)
        //            {
        //                if (search_keywords.Text != string.Empty && search_location.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_it_practice.Text) || x.Field.Contains(job_type_in_erp_practice.Text)) && x.JobTitle.Contains(search_keywords.Text) && x.Location.Contains(search_location.Text)).ToList();
        //                else if (search_keywords.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_it_practice.Text) || x.Field.Contains(job_type_in_erp_practice.Text)) && x.JobTitle.Contains(search_keywords.Text)).ToList();

        //                else if (search_location.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_it_practice.Text) || x.Field.Contains(job_type_in_erp_practice.Text)) && x.Location.Contains(search_location.Text)).ToList();
        //                else
        //                rptjoblisting.DataSource = context.JobLists.Where(x => x.Field.Contains(job_type_in_erp_practice.Text) || x.Field.Contains(job_type_it_practice.Text)).ToList();
        //            }
        //            else if (!job_type_consulting.Checked && job_type_in_erp_practice.Checked && !job_type_it_practice.Checked && job_type_product_development.Checked)
        //            {
        //                if (search_keywords.Text != string.Empty && search_location.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_in_erp_practice.Text) || x.Field.Contains(job_type_product_development.Text)) && x.JobTitle.Contains(search_keywords.Text) && x.Location.Contains(search_location.Text)).ToList();
        //                else if (search_keywords.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_in_erp_practice.Text) || x.Field.Contains(job_type_product_development.Text)) && x.JobTitle.Contains(search_keywords.Text)).ToList();

        //                else if (search_location.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_in_erp_practice.Text) || x.Field.Contains(job_type_product_development.Text)) && x.Location.Contains(search_location.Text)).ToList();
        //                else
        //                rptjoblisting.DataSource = context.JobLists.Where(x => x.Field.Contains(job_type_in_erp_practice.Text) || x.Field.Contains(job_type_product_development.Text)).ToList();
        //            }
        //            else if (!job_type_consulting.Checked && !job_type_in_erp_practice.Checked && job_type_it_practice.Checked && job_type_product_development.Checked)
        //            {
        //                if (search_keywords.Text != string.Empty && search_location.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_it_practice.Text) || x.Field.Contains(job_type_product_development.Text)) && x.JobTitle.Contains(search_keywords.Text) && x.Location.Contains(search_location.Text)).ToList();
        //                else if (search_keywords.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_it_practice.Text) || x.Field.Contains(job_type_product_development.Text)) && x.JobTitle.Contains(search_keywords.Text)).ToList();

        //                else if (search_location.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_it_practice.Text) || x.Field.Contains(job_type_product_development.Text)) && x.Location.Contains(search_location.Text)).ToList();
        //                else
        //                rptjoblisting.DataSource = context.JobLists.Where(x => x.Field.Contains(job_type_it_practice.Text) || x.Field.Contains(job_type_product_development.Text)).ToList();
        //            }
        //            else if (job_type_consulting.Checked && job_type_in_erp_practice.Checked && job_type_it_practice.Checked && !job_type_product_development.Checked)
        //            {
        //                if (search_keywords.Text != string.Empty && search_location.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_consulting.Text) || x.Field.Contains(job_type_in_erp_practice.Text) || x.Field.Contains(job_type_it_practice.Text)) && x.JobTitle.Contains(search_keywords.Text) && x.Location.Contains(search_location.Text)).ToList();
        //                else if (search_keywords.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_consulting.Text) || x.Field.Contains(job_type_in_erp_practice.Text) || x.Field.Contains(job_type_it_practice.Text)) && x.JobTitle.Contains(search_keywords.Text)).ToList();

        //                else if (search_location.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_consulting.Text) || x.Field.Contains(job_type_in_erp_practice.Text) || x.Field.Contains(job_type_it_practice.Text)) && x.Location.Contains(search_location.Text)).ToList();
        //                else
        //                rptjoblisting.DataSource = context.JobLists.Where(x => x.Field.Contains(job_type_it_practice.Text) || x.Field.Contains(job_type_consulting.Text) || x.Field.Contains(job_type_in_erp_practice.Text)).ToList();
        //            }
        //            else if (!job_type_consulting.Checked && job_type_in_erp_practice.Checked && job_type_it_practice.Checked && job_type_product_development.Checked)
        //            {
        //                if (search_keywords.Text != string.Empty && search_location.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_it_practice.Text) || x.Field.Contains(job_type_in_erp_practice.Text) || x.Field.Contains(job_type_product_development.Text)) && x.JobTitle.Contains(search_keywords.Text) && x.Location.Contains(search_location.Text)).ToList();
        //                else if (search_keywords.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_it_practice.Text) || x.Field.Contains(job_type_in_erp_practice.Text) || x.Field.Contains(job_type_product_development.Text)) && x.JobTitle.Contains(search_keywords.Text)).ToList();

        //                else if (search_location.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_it_practice.Text) || x.Field.Contains(job_type_in_erp_practice.Text) || x.Field.Contains(job_type_product_development.Text)) && x.Location.Contains(search_location.Text)).ToList();
        //                else
        //                rptjoblisting.DataSource = context.JobLists.Where(x => x.Field.Contains(job_type_it_practice.Text) || x.Field.Contains(job_type_product_development.Text) || x.Field.Contains(job_type_in_erp_practice.Text)).ToList();
        //            }
        //            else if (job_type_consulting.Checked && !job_type_in_erp_practice.Checked && job_type_it_practice.Checked && job_type_product_development.Checked)
        //            {
        //                if (search_keywords.Text != string.Empty && search_location.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_consulting.Text) || x.Field.Contains(job_type_it_practice.Text) || x.Field.Contains(job_type_product_development.Text)) && x.JobTitle.Contains(search_keywords.Text) && x.Location.Contains(search_location.Text)).ToList();
        //                else if (search_keywords.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_consulting.Text) || x.Field.Contains(job_type_it_practice.Text) || x.Field.Contains(job_type_product_development.Text)) && x.JobTitle.Contains(search_keywords.Text)).ToList();

        //                else if (search_location.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_consulting.Text) || x.Field.Contains(job_type_it_practice.Text) || x.Field.Contains(job_type_product_development.Text)) && x.Location.Contains(search_location.Text)).ToList();
        //                else
        //                rptjoblisting.DataSource = context.JobLists.Where(x => x.Field.Contains(job_type_it_practice.Text) || x.Field.Contains(job_type_product_development.Text) || x.Field.Contains(job_type_consulting.Text)).ToList();
        //            }
        //            else if (job_type_consulting.Checked && job_type_in_erp_practice.Checked && !job_type_it_practice.Checked && job_type_product_development.Checked)
        //            {
        //                if (search_keywords.Text != string.Empty && search_location.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_consulting.Text) || x.Field.Contains(job_type_in_erp_practice.Text) || x.Field.Contains(job_type_product_development.Text)) && x.JobTitle.Contains(search_keywords.Text) && x.Location.Contains(search_location.Text)).ToList();
        //                else if (search_keywords.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_consulting.Text) || x.Field.Contains(job_type_in_erp_practice.Text) || x.Field.Contains(job_type_product_development.Text)) && x.JobTitle.Contains(search_keywords.Text)).ToList();

        //                else if (search_location.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_consulting.Text) || x.Field.Contains(job_type_in_erp_practice.Text) || x.Field.Contains(job_type_product_development.Text)) && x.Location.Contains(search_location.Text)).ToList();
        //                else
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => x.Field.Contains(job_type_in_erp_practice.Text) || x.Field.Contains(job_type_product_development.Text) || x.Field.Contains(job_type_consulting.Text)).ToList();
        //            }
        //            else if (job_type_consulting.Checked && job_type_in_erp_practice.Checked && job_type_it_practice.Checked && job_type_product_development.Checked)
        //            {
        //                if (search_keywords.Text != string.Empty && search_location.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_consulting.Text) || x.Field.Contains(job_type_in_erp_practice.Text) || x.Field.Contains(job_type_product_development.Text) || x.Field.Contains(job_type_it_practice.Text)) && x.JobTitle.Contains(search_keywords.Text) && x.Location.Contains(search_location.Text)).ToList();
        //                else if (search_keywords.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_consulting.Text) || x.Field.Contains(job_type_in_erp_practice.Text) || x.Field.Contains(job_type_product_development.Text) || x.Field.Contains(job_type_it_practice.Text)) && x.JobTitle.Contains(search_keywords.Text)).ToList();

        //                else if (search_location.Text != string.Empty)
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => (x.Field.Contains(job_type_consulting.Text) || x.Field.Contains(job_type_in_erp_practice.Text) || x.Field.Contains(job_type_product_development.Text) || x.Field.Contains(job_type_it_practice.Text)) && x.Location.Contains(search_location.Text)).ToList();
        //                else
        //                    rptjoblisting.DataSource = context.JobLists.Where(x => x.Field.Contains(job_type_in_erp_practice.Text) || x.Field.Contains(job_type_product_development.Text) || x.Field.Contains(job_type_consulting.Text) || x.Field.Contains(job_type_it_practice.Text)).ToList();
        //            }
        //            else
        //            {
        //                rptjoblisting.DataSource = context.JobLists.ToList();
        //            }
        //           rptjoblisting.DataBind();
        //        }
        //        else
        //        {
        //            rptjoblisting.DataSource = context.JobLists.ToList();
        //            rptjoblisting.DataBind();
        //        }
        //    }
        //}
        //public void Check_Clicked(object sender, EventArgs e)
        //{
        //    LoadOpenings();

        //}
        //protected void search_keywords_TextChanged(object sender, EventArgs e)
        //{
        //    LoadOpenings();
        //}
        //protected void search_location_TextChanged(object sender, EventArgs e)
        //{
        //    LoadOpenings();
        //}

        //[WebMethod]
        //public static List<Data.JobList> GetAllJobs(string keyword, string location, string jobtype)
        //{
        //    List<Data.JobList> jobList = new List<JobList>();
        //    //var myjoblist;
        //    string[] jtype = jobtype.ToLower().Split(',');
        //    using (RheinBruckeDevEntities context = new RheinBruckeDevEntities())
        //    {
        //        jobList = context.JobLists.ToList();
        //    }
        //    if (!string.IsNullOrEmpty(keyword))
        //    {
        //        jobList = jobList.Where(x => (x.JobTitle.ToLower().Contains(keyword.ToLower()))).ToList();
        //    }
        //    if (!string.IsNullOrEmpty(location))
        //    {
        //        jobList = jobList.Where(x => (x.Location.ToLower().Contains(location.ToLower()))).ToList();
        //    }
        //    if (jtype.Length > 0)
        //    {
        //        jobList = jobList.Where(x => jtype.Any(key => x.Field.ToLower().Contains(key))).ToList();
        //    }
        //    return jobList;
        //}

        //[WebMethod]
        //public static List<Data.JobList> GetJobs(string Location)
        //{
        //    List<Data.JobList> jobList = new List<JobList>();

        //    using (RheinBruckeDevEntities context = new RheinBruckeDevEntities())
        //    {
        //        jobList = context.JobLists.Where(x => (x.Location.Contains(Location))).ToList();
        //    }

        //    return jobList;
        //}

        //[WebMethod]
        //public static List<Data.JobList> GetJobsOnKeyWord(string Keyword)
        //{
        //    List<Data.JobList> jobList = new List<JobList>();

        //    using (RheinBruckeDevEntities context = new RheinBruckeDevEntities())
        //    {
        //        jobList = context.JobLists.Where(x => (x.JobTitle.Contains(Keyword))).ToList();
        //    }

        //    return jobList;
        //}
        //[WebMethod]
        //public static List<Data.JobList> GetJobsOnConsulting(string Keyword)
        //{
        //    List<Data.JobList> jobList = new List<JobList>();

        //    using (RheinBruckeDevEntities context = new RheinBruckeDevEntities())
        //    {
        //        jobList = context.JobLists.Where(x => (x.Field.Contains(Keyword))).ToList();
        //    }

        //    return jobList;
        //}

        //public static DataTable getData(List<Data.JobList> items)
        //{
        //    DataTable dataTable = new DataTable(typeof(Data.JobList).Name);

        //    //Get all the properties
        //    PropertyInfo[] Props = typeof(Data.JobList).GetProperties(BindingFlags.Public | BindingFlags.Instance);
        //    foreach (PropertyInfo prop in Props)
        //    {
        //        //Setting column names as Property names
        //        dataTable.Columns.Add(prop.Name);
        //    }
        //    foreach (Data.JobList item in items)
        //    {
        //        var values = new object[Props.Length];
        //        for (int i = 0; i < Props.Length; i++)
        //        {
        //            //inserting property values to datatable rows
        //            values[i] = Props[i].GetValue(item, null);
        //        }
        //        dataTable.Rows.Add(values);
        //    }
        //    //put a breakpoint here and check datatable
        //    return dataTable;
        //}
    }
}