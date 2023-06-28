using RheinBrucke.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RheinBrucke.Brochure
{
    public partial class Brochure : System.Web.UI.Page
    {
        public string rootpath = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            rootpath = Page.ResolveUrl("~/");
            if (!Page.IsPostBack)
            {

            }
            LoadBrochures();
        }

        public void LoadBrochures()
        {
            List<RheinBrucke.Data.Brochure> objNewsEvents = GetAllBrochures();
            rptBrochure.DataSource = objNewsEvents;
            rptBrochure.DataBind();
        }

        public List<RheinBrucke.Data.Brochure> GetAllBrochures()
        {
            RheinBruckeDevEntities context = new RheinBruckeDevEntities();
            return context.Brochures.OrderBy(wh => wh.DisplayOrder).ToList<RheinBrucke.Data.Brochure>();
        }

        protected void drpBrochure_SelectedIndexChanged(object sender, EventArgs e)
        {
            var selectedtext = drpBrochure.SelectedItem.Value;
            if (selectedtext == "All")
            {
                LoadBrochures();
            }
            else
            {
                GetSelectedBrochure(selectedtext);
            }
        }

        public void GetSelectedBrochure(string item)
        {
            List<RheinBrucke.Data.Brochure> result = null;
            using (RheinBruckeDevEntities context = new RheinBruckeDevEntities())
            {
                result = context.Brochures.Where(wh => wh.FilterName == item).OrderByDescending(e => e.BrochureId).ToList<RheinBrucke.Data.Brochure>();
            }
            rptBrochure.DataSource = result;
            rptBrochure.DataBind();
        }

    }
}