using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RheinBrucke.Data;
using RheinBrucke.Library;

namespace RheinBrucke.Management.Testimonials
{
    public partial class NewTestimonial : System.Web.UI.Page
    {
        RheinBrucke.Library.HTMLGen oHtmlGen=new HTMLGen();
        protected void Page_Load(object sender, EventArgs e)
        {
          oHtmlGen.CreateTestimornial();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            using (RheinBruckeDevEntities context = new RheinBruckeDevEntities())
            {
                string picExtension = filePhoto.PostedFile.ContentType;
                string ImageName = string.Empty;

                if ((picExtension == "image/jpeg") || (picExtension == "image/jpg") || (picExtension == "image/png") || (picExtension == "image/gif"))
                {
                    if ((!System.IO.Directory.Exists(Server.MapPath("~/Assets/images/Testimonial"))))
                    {
                        System.IO.Directory.CreateDirectory(Server.MapPath("~/Assets/images/Testimonial"));
                    }

                    ImageName = System.IO.Path.GetFileName(filePhoto.FileName);

                    string Imagepath = System.IO.Path.Combine(
                                           Server.MapPath("~/Assets/images/Testimonial"), ImageName);
                    // file is uploaded
                    if (ImageName != string.Empty)
                        filePhoto.SaveAs(Imagepath);

                }
                
                var Insertnews = context.Testimonials.Create();

                Insertnews.Name = txtName.Value;
                Insertnews.Content = txtDescription.Value;
                Insertnews.CompanyName = txtCompanyName.Value;
                Insertnews.Designation = txtDesignation.Value;
                Insertnews.Address = txtAddress.Value;
                Insertnews.ImageName = ImageName;
                Insertnews.Status = true;
                Insertnews.CreatedOn = DateTime.Now;

                context.Testimonials.Add(Insertnews);
                context.SaveChanges();

                divSuccessMessage.InnerHtml = "Successfully saved";

                txtName.Value = "";
                txtDescription.Value = "";
                txtCompanyName.Value = "";
                txtDesignation.Value = "";
                txtAddress.Value = "";
            }
            oHtmlGen.CreateTestimornial();
        }
    }
}