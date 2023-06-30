using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;

namespace RheinBrucke.Library
{
    public class SiteMap
    {
        public string GetSitemapData()
        {
            var ds = new DataSet();
            var sb = new StringBuilder();
            ds.ReadXml(HttpContext.Current.Server.MapPath("~/web.sitemap"));
            var menuitems =
                ds.Tables[0].AsEnumerable()
                    .Select(
                        x =>
                            new
                            {
                                Id = x.Field<int?>("siteMapNode_Id"),
                                url = x.Field<string>("url"),
                                title = x.Field<string>("title"),
                                parentId = x.Field<int?>("siteMapNode_Id_0")
                            });
            var parentMenu = menuitems.Where(x => x.parentId == 0).ToList();
            foreach (var items in parentMenu)
            {
                var childitems = menuitems.Where(x => x.parentId == items.Id).ToList();
                sb.AppendLine("<div class=\"col-md-2\"></div><div class=\"col-md-2\" >");
                  sb.AppendFormat("<a class=\"sitemapLevel1\" href=\"{0}\">{1}</a>",
                    (items.url.Trim().Length > 0 ? items.url : "javascript:void(0);"), items.title);
                  sb.AppendLine("</div>");
                if (childitems.Count > 0)
                    sb.AppendLine("<div class=\"col-md-4\"><ul class=\"sub-menu\">");
                foreach (var itemchild in childitems)
                {
                    sb.AppendFormat("<li><i class=\"fa fa-circle\"></i>&nbsp;&nbsp;<a href=\"{0}\">{1}</a>", itemchild.url, itemchild.title);
                        var subchilditems = menuitems.Where(x => x.parentId == itemchild.Id).ToList();
                    if (subchilditems.Count > 0)
                    sb.AppendLine("<ul class=\"sub-menu2\">");
                    foreach (var itemchild2 in subchilditems)
                    {
                        sb.AppendFormat("<li><i class=\"fa fa-angle-double-right\"></i>&nbsp;&nbsp;<a href=\"{0}\">{1}</a>", itemchild2.url, itemchild2.title);
                        var subchilditems1 = menuitems.Where(x => x.parentId == itemchild2.Id).ToList();
                        if (subchilditems1.Count > 0)
                            sb.AppendLine("<ul class=\"sub-menu3\">");
                        foreach (var itemchild3 in subchilditems1)
                        {
                            sb.AppendFormat("<li ><i class=\"fa fa-arrow-right\"></i>&nbsp;&nbsp;<a href=\"{0}\">{1}</a>", itemchild3.url, itemchild3.title);
                            var subchilditems2 = menuitems.Where(x => x.parentId == itemchild3.Id).ToList();
                            if (subchilditems2.Count > 0)
                                sb.AppendLine("<ul class=\"sub-menu4\">");
                            foreach (var itemchild4 in subchilditems2)
                            {
                                sb.AppendFormat("<li><i class=\"fa fa-angle-right\"></i>&nbsp;&nbsp;<a href=\"{0}\">{1}</a></li>", itemchild4.url, itemchild4.title);
                            }
                            if (subchilditems2.Count > 0)
                                sb.AppendLine("</ul>");
                            sb.AppendLine("</li>");
                        }
                        if (subchilditems1.Count > 0)
                            sb.AppendLine("</ul>");
                        sb.AppendLine("</li>");
                    }
                    if (subchilditems.Count > 0)
                        sb.AppendLine("</ul>");
                    sb.AppendLine("</li>");
                }
                if (childitems.Count > 0)
                    sb.AppendLine("</ul></div>");
                sb.AppendLine("<div class=\"clearfix\"></div>");

            }
            return sb.ToString();
        }

    }
}