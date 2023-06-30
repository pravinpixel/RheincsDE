using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RheinBrucke.Library;
using RheinBrucke.Data;

namespace RheinBrucke.Management.Testimonials
{
    public partial class ManageTestimonial : System.Web.UI.Page
    {
        #region Private Variables

        private MasterRepository masterRep = new MasterRepository();
        private HTMLGen oHtmlGen = new HTMLGen();
        #endregion

        #region Protected Methods

        protected void Page_Load(object sender, EventArgs e)
        {
            oHtmlGen.CreateTestimornial();
     
            if (!Page.IsPostBack)
            {
                Page.Form.Attributes.Add("enctype", "multipart/form-data");
                GetListOfTestimonials();
            }
        }

        protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdTestimonial.PageIndex = e.NewPageIndex;
            GetListOfTestimonials();
        }

        protected void grdTestimonial_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "NewsEdit")
            {
                string[] args = e.CommandArgument.ToString().Split(new string[] { "$$" }, StringSplitOptions.None);

                if ((args == null) || (args.Length < 7))
                    return;

                Clear();
                divSuccessMessage.InnerHtml = "";

                hdnID.Value = args[0];
                txtName.Value = args[1];
                txtDescription.Value = args[2];
                txtCompanyName.Value = args[3];
                txtDesignation.Value = args[4];
                txtAddress.Value = args[5];

                if (args[6] != "")
                    ImageTestimonial.ImageUrl = "~/Assets/images/Testimonial/" + args[6].ToString();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            using (RheinBruckeDevEntities context = new RheinBruckeDevEntities())
            {
                string ImageName = string.Empty;
                string picExtension = string.Empty;

                if (fileTestimonial.HasFile)
                {
                    picExtension = fileTestimonial.PostedFile.ContentType;
                }

                if ((picExtension == "image/jpeg") || (picExtension == "image/jpg") || (picExtension == "image/png") || (picExtension == "image/gif"))
                {
                    if ((!System.IO.Directory.Exists(Server.MapPath("~/Assets/images/Testimonial"))))
                    {
                        System.IO.Directory.CreateDirectory(Server.MapPath("~/Assets/images/Testimonial"));
                    }

                    ImageName = System.IO.Path.GetFileName(fileTestimonial.FileName);

                    string Imagepath = System.IO.Path.Combine(
                                           Server.MapPath("~/Assets/images/Testimonial"), ImageName);
                    // file is uploaded
                    if (ImageName != string.Empty)
                        fileTestimonial.SaveAs(Imagepath);
                }

                int ID = Convert.ToInt32(hdnID.Value);

                Testimonial getTestimonial = new Testimonial();
                getTestimonial = context.Testimonials.Where(i => i.TestimonialID == ID).FirstOrDefault();

                getTestimonial.Name = txtName.Value;
                getTestimonial.Content = txtDescription.Value;
                getTestimonial.CompanyName = txtCompanyName.Value;
                getTestimonial.Designation = txtDesignation.Value;
                if (fileTestimonial.HasFile)
                {
                    getTestimonial.ImageName = ImageName;
                }
                getTestimonial.Address = txtAddress.Value;

                context.SaveChanges();

                divSuccessMessage.InnerHtml = "Updated Successfully";

                Clear();
                GetListOfTestimonials();
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            using (RheinBruckeDevEntities context = new RheinBruckeDevEntities())
            {
                int ID = Convert.ToInt32(hdnID.Value);

                var getTestimonial = context.Testimonials.Where(i => i.TestimonialID == ID).FirstOrDefault();

                context.Testimonials.Remove(getTestimonial);
                context.SaveChanges();

                Clear();
                GetListOfTestimonials();

                divSuccessMessage.InnerHtml = "Deleted Sucessfully";
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Clear();
        }
        #endregion

        #region Private Methods

        private void GetListOfTestimonials()
        {
            grdTestimonial.DataSource = masterRep.GetTestimonials();
            grdTestimonial.DataBind();
        }

        private void Clear()
        {
            txtName.Value = "";
            txtDescription.Value = "";
            txtCompanyName.Value = "";
            txtDesignation.Value = "";
            txtAddress.Value = "";
            hdnID.Value = "";
            ImageTestimonial.ImageUrl = "";
        }

        #endregion
    }
}