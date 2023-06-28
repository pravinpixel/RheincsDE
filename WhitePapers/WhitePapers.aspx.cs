using RheinBrucke.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RheinBrucke.WhitePapers
{
    public partial class WhitePapers : System.Web.UI.Page
    {
        public string rootpath = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            rootpath = Page.ResolveUrl("~/");
            if (!Page.IsPostBack)
            {
                           
            }
            LoadWhitePapers();
        }

        public void LoadWhitePapers()
        {
            List<WhitePaper> objNewsEvents = GetAllWhitePapers();
            rptNewsEvents.DataSource = objNewsEvents;
            rptNewsEvents.DataBind();
        }

        public List<WhitePaper> GetAllWhitePapers()
        {
            RheinBruckeDevEntities context = new RheinBruckeDevEntities();
            return context.WhitePapers.Where(wh => wh.NotDuplicate == true).OrderBy(wh => wh.DisplayOrder).ToList<WhitePaper>();
        }

        protected void drpWhitePapers_SelectedIndexChanged(object sender, EventArgs e)
        {
            var selectedtext = drpWhitePapers.SelectedItem.Value;
            if(selectedtext == "All")
            {
                LoadWhitePapers();
            }
            else
            {
                GetSelectedWhitePaper(selectedtext);
            }           
        }

        public void GetSelectedWhitePaper(string item)
        {
            List<WhitePaper> result = null;
            using (RheinBruckeDevEntities context = new RheinBruckeDevEntities())
            {
                result = context.WhitePapers.Where(wh => wh.FilterName == item).OrderByDescending(e => e.WhitePaperId).ToList<WhitePaper>();
            }
            rptNewsEvents.DataSource = result;
            rptNewsEvents.DataBind();                
        }
    }
}