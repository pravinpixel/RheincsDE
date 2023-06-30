using RheinBrucke.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RheinBrucke.CaseStudies
{
    public partial class CaseStudy : System.Web.UI.Page
    {
        public string rootpath = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            rootpath = Page.ResolveUrl("~/");
            if (!Page.IsPostBack)
            {

            }
            LoadCaseStudies();
        }

        public void LoadCaseStudies()
        {
            List<RheinBrucke.Data.CaseStudy> objNewsEvents = GetAllCaseStudies();
            rptCaseStudies.DataSource = objNewsEvents;
            rptCaseStudies.DataBind();
        }

        public List<RheinBrucke.Data.CaseStudy> GetAllCaseStudies()
        {
            RheinBruckeDevEntities context = new RheinBruckeDevEntities();
            return context.CaseStudies.Where(wh => wh.NotDuplicate == true).ToList<RheinBrucke.Data.CaseStudy>();
        }

        protected void drpCaseStudies_SelectedIndexChanged(object sender, EventArgs e)
        {
            var selectedtext = drpCaseStudies.SelectedItem.Value;
            if (selectedtext == "All")
            {
                LoadCaseStudies();
            }
            else
            {
                GetSelectedCaseStudy(selectedtext);
            }
        }

        public void GetSelectedCaseStudy(string item)
        {
            List<RheinBrucke.Data.CaseStudy> result = null;
            using (RheinBruckeDevEntities context = new RheinBruckeDevEntities())
            {
                result = context.CaseStudies.Where(wh => wh.FilterName == item).OrderByDescending(e => e.CaseStudyId).ToList<RheinBrucke.Data.CaseStudy>();
            }
            rptCaseStudies.DataSource = result;
            rptCaseStudies.DataBind();
        }

    }
}