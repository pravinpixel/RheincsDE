using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RheinBrucke.Library
{
    public class Utility
    {
        private static string siteUrl;

        public static string SiteUrl
        {
            get
            {
                HttpContext context = HttpContext.Current;
                siteUrl = context.Request.Url.Scheme + "://" + context.Request.Url.Authority + context.Request.ApplicationPath.TrimEnd('/') + '/';
                return siteUrl;
            }

        }
    }
}