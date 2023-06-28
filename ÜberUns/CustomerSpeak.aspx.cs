using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RheinBrucke.Data;

namespace RheinBrucke.ÜberUns
{
    public partial class CustomerSpeak : System.Web.UI.Page
    {
        public string rootpath = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                rootpath = Page.ResolveUrl("~/");
            }
        }
    }
    //public List<Testimonial> GetTestimonial()
    //{
    //    //int id = Convert.ToInt32(Request.QueryString["id"]);
    //    List<Testimonial> result = null;

    //    using (RheinBruckeDevEntities context = new RheinBruckeDevEntities())
    //    {
    //        result = context.Testimonials.Where(e => e.Status == true).OrderByDescending(e => e.TestimonialID).ToList<Testimonial>();


    //    }

    //    return result.ToList();
    //}
}
