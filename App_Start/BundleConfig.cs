using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;

namespace RheinBrucke
{
    public class BundleConfig
    {
        // For more information on Bundling, visit http://go.microsoft.com/fwlink/?LinkId=254726
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.IgnoreList.Clear();
            bundles.UseCdn = true;
            bundles.Add(new ScriptBundle("~/bundles/WebFormsJs").Include(
                  "~/Scripts/WebForms/WebForms.js",
                  "~/Scripts/WebForms/WebUIValidation.js",
                  "~/Scripts/WebForms/MenuStandards.js",
                  "~/Scripts/WebForms/Focus.js",
                  "~/Scripts/WebForms/GridView.js",
                  "~/Scripts/WebForms/DetailsView.js",
                  "~/Scripts/WebForms/TreeView.js",
                  "~/Scripts/WebForms/WebParts.js"));

            bundles.Add(new ScriptBundle("~/bundles/MsAjaxJs").Include(
                "~/Scripts/WebForms/MsAjax/MicrosoftAjax.js",
                "~/Scripts/WebForms/MsAjax/MicrosoftAjaxApplicationServices.js",
                "~/Scripts/WebForms/MsAjax/MicrosoftAjaxTimer.js",
                "~/Scripts/WebForms/MsAjax/MicrosoftAjaxWebForms.js"));

            // Use the Development version of Modernizr to develop with and learn from. Then, when you’re
            // ready for production, use the build tool at http://modernizr.com to pick only the tests you need
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                "~/Scripts/modernizr-*"));

            bundles.Add(new ScriptBundle("~/assets/js").Include(
"~/Assets/js/jquery-2.1.1.min.js",
"~/Assets/js/bootstrap.min.js",
"~/Assets/js/modernizr.custom.js",
"~/Assets/js/rheincs.js",
"~/Assets/js/Custom.js",
"~/Assets/js/jquery.tiny-Carusal.js",
"~/Assets/js/megamenu.js"));
            bundles.Add(new ScriptBundle("~/assets/jsmin").Include(
                "~/Assets/js/rheincs.min.js"));
            bundles.Add(new StyleBundle("~/assets/css").Include(
                 "~/assets/css/bootstrap-min.css",
    "~/assets/css/font-awesome.css",
    "~/assets/css/Custom.css",
    "~/assets/css/tinycarousel.css",
    "~/assets/css/megamenu.css",
    "~/assets/css/component.css",
    "~/assets/css/default.css",
    "~/assets/css/StyleSheet.css",
    "~/assets/css/Responsive.css"
                ));
           bundles.Add(new StyleBundle("~/assets/cssmin").Include(
              "~/assets/css/rheincs.min.css*"));
        }
    }
}