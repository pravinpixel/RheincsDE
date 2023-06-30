using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO.Compression;
using System.Net;
using System.Text;
namespace RheinBrucke.googlejs
{
    public partial class linkid : System.Web.UI.Page
    {
        
        private StringBuilder Builder;
     
        protected void Page_Load(object sender, EventArgs e)
        {
            string getst = CompressAndWriteScripts();

            if (HttpContext.Current.Request.IsLocal)
            { // don't cache local requests
                HttpContext.Current.Response.AddHeader("Expires", DateTime.Now.ToString("ddd, dd MMM yyyy hh:mm:ss") + " GMT");
                HttpContext.Current.Response.AddHeader("Cache-Control", "no-cache");
                HttpContext.Current.Response.AddHeader("Last-Modified", DateTime.Now.ToString("ddd, dd MMM yyyy hh:mm:ss") + " GMT");
            }
            else
            {
                if (!string.IsNullOrEmpty(Request.Headers["If-Modified-Since"]))
                {
                    string cc = Request.Headers["cache-request-directive"];
                    if (cc != "no-cache" && cc != "no-store")
                    {
                        // Assume no modifications (this responder is for production code!)
                        HttpContext.Current.Response.AddHeader("Expires", DateTime.Now.AddYears(5).ToString("ddd, dd MMM yyyy hh:mm:ss") + " GMT");
                        HttpContext.Current.Response.StatusCode = 304; // not changed
                        HttpContext.Current.Response.End();
                        return;
                    }
                }
                HttpContext.Current.Response.AddHeader("Expires", DateTime.Now.AddYears(5).ToString("ddd, dd MMM yyyy hh:mm:ss") + " GMT");
                HttpContext.Current.Response.AddHeader("Cache-Control", "public");
                HttpContext.Current.Response.AddHeader("Last-Modified", DateTime.Now.AddDays(-30).ToString("ddd, dd MMM yyyy hh:mm:ss") + " GMT");
            }
              HttpContext.Current.Response.Headers.Remove("Content-Encoding");
                  HttpContext.Current.Response.AppendHeader("Content-Encoding", "gzip");
            
            HttpContext.Current.Response.ContentType = "text/javascript";
            HttpContext.Current.Response.Write(getst);
        }
       



        private string CompressAndWriteScripts()
        {
            if (Builder == null) Builder = new StringBuilder();
            var url = "http://www.google-analytics.com/plugins/ua/linkid.js";

            var textFromFile = (new WebClient()).DownloadString(url);

            Builder.AppendLine(textFromFile);

            
            return Builder.ToString();
        }

    }
}