using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using RheinBrucke.Library;
using System.Web.Configuration;
using RheinBrucke.Data;

namespace RheinBrucke
{
    public partial class Rheincs : System.Web.UI.MasterPage
    {
        public string rootpath = "";
        public string basepath = "";
        public string cssload = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            
            rootpath = Page.ResolveUrl("~/");
            if (Request.Browser.IsMobileDevice)
            {
                cssload = string.Format("<script type=\"text/javascript\">load_css_async('{0}assets/css/rheincs.min.css')</script>", rootpath);
            }
            else
            {
                cssload = string.Format("<script type=\"text/javascript\">load_css_async('{0}assets/css/rheincs.min.css')</script>", rootpath);
            }
            if (!Page.IsPostBack)
            {
                               
                List<Testimonial> objtestimonial = GetTestimonial();

                //rptTestimonial.DataSource = objtestimonial;
                //rptTestimonial.DataBind();
            }
        }

        public List<Testimonial> GetTestimonial()
        {
            List<Testimonial> result = null;

            using (RheinBruckeDevEntities context = new RheinBruckeDevEntities())
            {
                result = context.Testimonials.Where(e => e.Status == true).OrderByDescending(e => e.TestimonialID).ToList<Testimonial>();
            }

            return result.ToList();
        }

    }
}