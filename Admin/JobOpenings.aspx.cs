using RheinBrucke.Data;
using RheinBrucke.Library;
using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RheinBrucke.Admin
{
    public partial class JobOpenings : System.Web.UI.Page
    {

        private MasterRepository masterRep = new MasterRepository();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                GetListOfJobPosts();
            }
        }
        //Getting list of job posts
        private void GetListOfJobPosts()
        {
            rptJobPosts.DataSource = masterRep.GetJobPosts();
            rptJobPosts.DataBind();
        }

        //Deleting a job post   
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            using (RheinBruckeDevEntities context = new RheinBruckeDevEntities())
            {
                divErrorMessage.InnerHtml = "";
                divSuccessMessage.InnerHtml = "";
                LinkButton delbtn = (LinkButton)(sender);
                int ID = Convert.ToInt32(delbtn.CommandArgument);
                var getJobItem = context.JobLists.Where(i => i.JobID == ID).FirstOrDefault();
                context.JobLists.Remove(getJobItem);
                context.SaveChanges();
                GetListOfJobPosts();
                divSuccessMessageList.InnerHtml = "The Job Post is Deleted Sucessfully";


                txtPurpose.Value = "";
                txtResponsibility.Value = "";
                txtQualification.Value = "";
                txtLocat.Value = "";
                txtJTitle.Value = "";
                txtUrl.Value = "";
                ddlfield.SelectedValue = "0";
                txtPrty.Value = "";
            }
        }

        //Editing a job
        protected void btnEdit_Click(object sender, EventArgs e)
        {
            using (RheinBruckeDevEntities context = new RheinBruckeDevEntities())
            {
                divErrorMessage.InnerHtml = "";
                divSuccessMessage.InnerHtml = "";
                divSuccessMessageList.InnerHtml = "";
                LinkButton btn = (LinkButton)(sender);
                int ID = Convert.ToInt32(btn.CommandArgument);
                var getsJobs = context.JobLists.Where(i => i.JobID == ID).FirstOrDefault();
                txtPurpose.Value = getsJobs.POTR;
                txtResponsibility.Value = getsJobs.Responsiblities;
                txtQualification.Value = getsJobs.Qualification;
                txtLocat.Value = getsJobs.Location;
                ddlfield.SelectedValue = getsJobs.Field;
                txtJTitle.Value = getsJobs.JobTitle;
                txtPrty.Value = Convert.ToString(getsJobs.Priority);
                txtUrl.Value = getsJobs.UrlDetails;
                hdnJobsid.Value = Convert.ToString(getsJobs.JobID);
                GetListOfJobPosts();
            }

        }
        //Adding a new job post
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                using (RheinBruckeDevEntities context = new RheinBruckeDevEntities())
                {
                    int id = 0;
                    if (hdnJobsid.Value != string.Empty)
                    {
                        id = Convert.ToInt32(hdnJobsid.Value);
                    }
                    var urlExits = context.JobLists.Where(c => c.UrlDetails.Contains(txtUrl.Value));

                    divSuccessMessage.InnerHtml = "";
                    divErrorMessage.InnerHtml = "";


                    if (id != 0)
                    {
                        if (urlExits.Count() > 1)
                        {
                            divErrorMessage.InnerHtml = "URL details already exits, please suggest another URL";
                        }
                        else
                        {
                            var getsJobs = context.JobLists.Where(i => i.JobID == id).FirstOrDefault();
                            getsJobs.POTR = txtPurpose.Value;
                            getsJobs.Responsiblities = txtResponsibility.Value;
                            getsJobs.Qualification = txtQualification.Value;
                            getsJobs.Location = txtLocat.Value;
                            getsJobs.CreatedDate = DateTime.Now;
                            getsJobs.Field = ddlfield.SelectedValue;
                            getsJobs.JobTitle = txtJTitle.Value;
                            getsJobs.Priority = Convert.ToInt32(txtPrty.Value);
                            getsJobs.UrlDetails = txtUrl.Value;
                            context.SaveChanges();
                            divSuccessMessage.InnerHtml = "Changes saved successfully";
                        }
                    }

                    else
                    {
                        if (urlExits.Count() >= 1)
                        {
                            divErrorMessage.InnerHtml = "URL details already exits, please suggest another URL";
                        }
                        else
                        {

                            var Insertjob = context.JobLists.Create();
                            Insertjob.POTR = txtPurpose.Value;
                            Insertjob.Responsiblities = txtResponsibility.Value;
                            Insertjob.Qualification = txtQualification.Value;
                            Insertjob.Location = txtLocat.Value;
                            Insertjob.CreatedDate = DateTime.Now;
                            Insertjob.Field = ddlfield.SelectedValue;
                            Insertjob.JobTitle = txtJTitle.Value;
                            Insertjob.Priority = Convert.ToInt32(txtPrty.Value);
                            Insertjob.UrlDetails = txtUrl.Value;
                            context.JobLists.Add(Insertjob);
                            context.SaveChanges();
                            divSuccessMessage.InnerHtml = "Job post is saved successfully";
                        }
                    }




                    txtPurpose.Value = "";
                    txtResponsibility.Value = "";
                    txtQualification.Value = "";
                    txtLocat.Value = "";
                    txtJTitle.Value = "";
                    txtUrl.Value = "";
                    ddlfield.SelectedValue = "0";
                    txtPrty.Value = "";
                }
                GetListOfJobPosts();

            }
            catch (DbEntityValidationException ex)
            {
                var errorMessages = ex.EntityValidationErrors
                   .SelectMany(x => x.ValidationErrors)
                   .Select(x => x.ErrorMessage);
                // Join the list to a single string.
                var fullErrorMessage = string.Join("; ", errorMessages);
                var exceptionMessage = string.Concat(ex.Message, " The validation errors are: ", fullErrorMessage);
                throw new DbEntityValidationException(exceptionMessage, ex.EntityValidationErrors);

            }
        }
    }
}
