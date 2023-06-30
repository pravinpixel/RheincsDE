using RheinBrucke.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RheinBrucke.FactSheets
{
    public partial class FactSheets : System.Web.UI.Page
    {
        public string rootpath = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            rootpath = Page.ResolveUrl("~/");
            if (!Page.IsPostBack)
            {

            }
            LoadFactSheets();
        }

        public void LoadFactSheets()
        {
            List<FactSheet> objNewsEvents = GetAllFactSheets();
            rptNewsEvents.DataSource = objNewsEvents;
            rptNewsEvents.DataBind();
        }

        public List<FactSheet> GetAllFactSheets()
        {
            RheinBruckeDevEntities context = new RheinBruckeDevEntities();
            return context.FactSheets.Where(wh => wh.NotDuplicate == true).OrderBy(wh => wh.DisplayOrder).ToList<FactSheet>();
        }

        protected void drpFactSheets_SelectedIndexChanged(object sender, EventArgs e)
        {
            var selectedtext = drpFactSheets.SelectedItem.Value;
            if (selectedtext == "All")
            {
                LoadFactSheets();
            }
            else
            {
                GetSelectedFactSheets(selectedtext);
            }
        }

        public void GetSelectedFactSheets(string item)
        {
            List<FactSheet> result = null;
            using (RheinBruckeDevEntities context = new RheinBruckeDevEntities())
            {
                result = context.FactSheets.Where(wh => wh.FilterName == item).OrderByDescending(e => e.FactSheetId).ToList<FactSheet>();
            }
            rptNewsEvents.DataSource = result;
            rptNewsEvents.DataBind();
        }
    }
}