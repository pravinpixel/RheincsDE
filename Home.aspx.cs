using MaxMind.GeoIP2;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RheinBrucke
{
    public partial class Default : System.Web.UI.Page
    {
        public string GetPublicIP()
        {
           
            string ipaddress;
            ipaddress = Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
            if (ipaddress == "" || ipaddress == null)
                ipaddress = Request.ServerVariables["REMOTE_ADDR"];
            if (ipaddress == "::1" || ipaddress == "192.168.1.1")
                ipaddress = GetPublicIPK();
            return ipaddress;
        }
        
        public string GetPublicIPK()
        {
            string url = "http://checkip.dyndns.org";
            System.Net.WebRequest req = System.Net.WebRequest.Create(url);
            System.Net.WebResponse resp = req.GetResponse();
            System.IO.StreamReader sr = new System.IO.StreamReader(resp.GetResponseStream());
            string response = sr.ReadToEnd().Trim();
            string[] a = response.Split(':');
            string a2 = a[1].Substring(1);
            string[] a3 = a2.Split('<');
            string a4 = a3[0];
            return a4;
        }




        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                
                if (!IsCrawlByBot())
                {
                    var reader = new DatabaseReader(Server.MapPath("~/GeoIP/GeoLite2-Country.mmdb"));


                    if (Request.Cookies["firstvisit"] == null)
                    {
                        var country = reader.Country(GetPublicIP());
                        if (country != null)
                        {
                            HttpCookie myCookie = new HttpCookie("firstvisit");
                            DateTime now = DateTime.Now;
                            myCookie.Value = now.ToString();
                            myCookie.Expires = now.AddMinutes(20);
                            Response.Cookies.Add(myCookie);

                            if (country.Country.IsoCode.ToUpper() == "IN" || country.Country.IsoCode.ToUpper() == "US" || country.Country.IsoCode.ToUpper() == "AU" || country.Country.IsoCode.ToUpper() == "CA" || country.Country.IsoCode.ToUpper() == "IE" || country.Country.IsoCode.ToUpper() == "NZ" || country.Country.IsoCode.ToUpper() == "GB")
                                Response.Redirect("https://www.rheincs.com");
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                //HiddenField1.Text = ex.Message;
                //Response.Write(ex.Message);

            }

        }

        public static bool IsCrawlByBot()
        {
            List<string> Crawlers = new List<string>()
        {
            "google","speed","googlebot","bingbot","yandexbot","ahrefsbot","msnbot","linkedinbot","exabot","compspybot",
           "yesupbot","paperlibot","tweetmemebot","semrushbot","gigabot","voilabot","adsbot-google",
            "botlink","alkalinebot","araybot","undrip bot","borg-bot","boxseabot","yodaobot","admedia bot",
            "ezooms.bot","confuzzledbot","coolbot","internet cruiser robot","yolinkbot","diibot","musobot",
            "dragonbot","elfinbot","wikiobot","twitterbot","contextad bot","hambot","iajabot","news bot",
            "irobot","socialradarbot","ko_yappo_robot","skimbot","psbot","rixbot","seznambot","careerbot",
            "simbot","solbot","mail.ru_bot","spiderbot","blekkobot","bitlybot","techbot","void-bot",
            "vwbot_k","diffbot","friendfeedbot","archive.org_bot","woriobot","crystalsemanticsbot","wepbot",
            "spbot","tweetedtimes bot","mj12bot","who.is bot","psbot","robot","jbot","bbot","bot"
        };

            string ua = HttpContext.Current.Request.UserAgent.ToLower();
            bool iscrawler = Crawlers.Exists(x => ua.Contains(x));
            return iscrawler;
        }

    }

}