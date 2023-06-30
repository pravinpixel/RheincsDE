using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RheinBrucke
{
    public partial class LandingPageEpic : System.Web.UI.MasterPage
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
        }
    }
}