using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RheinBrucke.Data;

namespace RheinBrucke.NewsundEvents
{
    public partial class NewsUndEvents : System.Web.UI.Page
    {
        public string rootpath = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                rootpath = Page.ResolveUrl("~/");

                LoadNewsEvents();
            }
        }

        public void LoadNewsEvents()
        {
            List<NewsEvent> objNewsEvents = GetNewsEvents();

            rptNewsEvents.DataSource = objNewsEvents;
            rptNewsEvents.DataBind();
        }

        public List<NewsEvent> GetNewsEvents()
        {
            List<NewsEvent> result = null;

            using (RheinBruckeDevEntities context = new RheinBruckeDevEntities())
            {
                result = context.NewsEvents.Where(e => e.Status == true).OrderByDescending(e => e.NewsAndEventsID).ToList<NewsEvent>();
            }

            return result.ToList();
        }
        public string GetThumbnail(string thumbnail, string position, string Title)
        {
            System.Text.StringBuilder ostr = new System.Text.StringBuilder();
            string rootpath = Page.ResolveUrl("~/");
            if (thumbnail.Trim().Length > 0)
            {
                if (position=="True")
                    ostr.AppendLine(string.Format("<span style=\"color: #7b1315; font-weight: bold; width: 64%; float: left;\">{0}</span><img src=\"{1}Assets/images/NewsEvents/Thumbnail/{2}\" style=\"max-height: 117px;\" />", Title, rootpath, thumbnail));
                else
                    ostr.AppendLine(string.Format("<span style=\"color: #7b1315; font-weight: bold; width: 100%; float: left;\">{0}</span><img src=\"{1}Assets/images/NewsEvents/Thumbnail/{2}\" style=\"width: 100%; height: auto;\" />", Title, rootpath, thumbnail));

            }
            else
            {
                ostr.AppendLine(string.Format("<span style=\"color: #7b1315; font-weight: bold; width: 100%; float: left;\">{0}</span>", Title));

            }
            return ostr.ToString();
        }
    }
}