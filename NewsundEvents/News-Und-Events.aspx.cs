using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RheinBrucke.Data;
using System.Text.RegularExpressions;

namespace RheinBrucke.NewsundEvents
{
    public partial class News_Und_Events : System.Web.UI.Page
    {
        public string rootpath = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                rootpath = Page.ResolveUrl("~/");

                LoadNewsEvents();
                LoadBannerNewsEvents();
            }
        }

        public void LoadNewsEvents()
        {
            List<RICNew> objNewsEvents = GetNewsEvents();

            rptNewsEvents.DataSource = objNewsEvents;
            rptNewsEvents.DataBind();
        }
        public void LoadBannerNewsEvents()
        {
            List<RICNew> objNewsEvents = GetNewsEvents();

            rptBannerNewsEvents.DataSource = objNewsEvents;
            rptBannerNewsEvents.DataBind();
        }
        public List<RICNew> GetNewsEvents()
        {
            List<RICNew> result = null;

            using (RheinBruckeDevEntities context = new RheinBruckeDevEntities())
            {
                result = context.RICNews.Where(ne => ne.Status == true).OrderByDescending(ne => ne.NewsID).ToList<RICNew>();
            }

            return result.ToList();
        }
        public string GetImage(string Title)
        {
            System.Text.StringBuilder ostr = new System.Text.StringBuilder();
            string rootpath = Page.ResolveUrl("~/");
            ostr.AppendLine(string.Format("<span>{0}</span>", Title, rootpath));
            return ostr.ToString();
        }
        public string GetDescription(string Description)
        {
            System.Text.StringBuilder ostr = new System.Text.StringBuilder();
            string rootpath = Page.ResolveUrl("~/");
            string des = Regex.Replace(Description, "<.*?>", String.Empty);
            var desc = des == null ? string.Empty : des.Substring(0, Math.Min(150, des.Length));
            ostr.AppendLine(string.Format("<span>{0}..</span>", desc, rootpath));
            return ostr.ToString();
        }
        public string GetNewsimage(string NewsImage)
        {
            System.Text.StringBuilder ostr = new System.Text.StringBuilder();
            string rootpath = Page.ResolveUrl("~/");
            ostr.AppendLine(string.Format("<img src=\"{0}Assets/images/{1}\" style=\"height: 150px; width:300px\" />", rootpath, NewsImage));
            return ostr.ToString();
        }
        public string GetNewsBannerimage(string BannerImage)
        {
            System.Text.StringBuilder ostr = new System.Text.StringBuilder();
            string rootpath = Page.ResolveUrl("~/");
            ostr.AppendLine(string.Format("<img src=\"{0}Assets/images/{1}\" class=\"img-responsive \" style=\"height: 329px; width:1174px\" />", rootpath, BannerImage));
            return ostr.ToString();
        }
        //public string GetThumbnail(string thumbnail, string position, string Title)
        //{
        //    System.Text.StringBuilder ostr = new System.Text.StringBuilder();
        //    string rootpath = Page.ResolveUrl("~/");
        //    if (thumbnail.Trim().Length > 0)
        //    {
        //        if (position=="True")
        //            ostr.AppendLine(string.Format("<span style=\"color: #7b1315; font-weight: bold; width: 64%; float: left;\">{0}</span><img src=\"{1}Assets/images/NewsEvents/Thumbnail/{2}\" style=\"max-height: 117px;\" />", Title, rootpath, thumbnail));
        //        else
        //            ostr.AppendLine(string.Format("<span style=\"color: #7b1315; font-weight: bold; width: 100%; float: left;\">{0}</span><img src=\"{1}Assets/images/NewsEvents/Thumbnail/{2}\" style=\"width: 100%; height: auto;\" />", Title, rootpath, thumbnail));

        //    }
        //    else
        //    {
        //        ostr.AppendLine(string.Format("<span style=\"color: #7b1315; font-weight: bold; width: 100%; float: left;\">{0}</span>", Title));

        //    }
        //    return ostr.ToString();
        //}
    }
}