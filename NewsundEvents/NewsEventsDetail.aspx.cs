using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RheinBrucke.Data;

namespace RheinBrucke.NewsundEvents
{
    public partial class NewsEventsDetail : System.Web.UI.Page
    {
        protected string rootpath = "";
        protected string NewsEventsTitle = string.Empty;
        protected string NewsEventDate = string.Empty;
        protected string NewsEventMetaTagDescription = string.Empty;
        protected string NewsEventMetaTagKeyword = string.Empty;
        protected string NewsEventDetail = string.Empty;
        protected string NewsImageDetails = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                rootpath = Page.ResolveUrl("~/");
                string requestURL = Page.RouteData.Values["ID"] == null ? "" : Page.RouteData.Values["ID"].ToString();//Request.QueryString["ID"].ToString();

                LoadNewsEventsDetail(requestURL);
            }
        }

        public void LoadNewsEventsDetail(string RouteUrl)
        {
            //int NewsEventsID = Convert.ToInt32(ID);
            string NewsEventsUrl = RouteUrl;

            using (RheinBruckeDevEntities context = new RheinBruckeDevEntities())
            {
                var getNewsEventsDetail = context.NewsEvents.Where(e => e.UrlDetails == NewsEventsUrl & e.Status == true).FirstOrDefault();

                DateTime newsdate = Convert.ToDateTime(getNewsEventsDetail.NewsEventsDate);


                NewsEventsTitle = getNewsEventsDetail.Title;
                NewsEventMetaTagKeyword = getNewsEventsDetail.MetaTagKeyword;
                NewsEventMetaTagDescription = getNewsEventsDetail.MetaTagDescription;
                NewsEventDate = String.Format("{0:y}", newsdate);
                NewsEventDetail = getNewsEventsDetail.Description;
                NewsImageDetails = getNewsEventsDetail.NewsImage != "" ? getNewsEventsDetail.NewsImage : "";

                if (NewsImageDetails != "")
                {
                    NewsImage.Style["display"] = "block";
                }
            }
        }
    }
}