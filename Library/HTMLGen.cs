using RheinBrucke.Data;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Xml;
using System.Xml.Linq;
using System.Xml.Xsl;

namespace RheinBrucke.Library
{
    public class HTMLGen
    {
        public void CreateTestimornial()
        {
            List<Testimonial> result = null;

            using (RheinBruckeDevEntities context = new RheinBruckeDevEntities())
            {
                result = context.Testimonials.Where(e => e.Status == true).OrderByDescending(e => e.TestimonialID).ToList<Testimonial>();
                var xEle = new XElement("Testimonials",
               from emp in result
               select new XElement("Testimonial",
                            new XElement("Content", new XCData(emp.Content )),
                              new XElement("ImageName", emp.ImageName),
                              new XElement("Name", emp.Name),
                              new XElement("Designation",new XCData(emp.Designation)),
                              new XElement("CompanyName",new XCData(emp.CompanyName)),
                               new XElement("Address", new XCData(emp.Address))
                          ));
                
                var xslfile = HttpContext.Current.Server.MapPath("~/private/Testimonial/testimonial.xslt").ToString();
                var htmlfile = HttpContext.Current.Server.MapPath("~/private/Testimonial/testimonial.html").ToString();

                XML2XSLT(xslfile, xEle.ToString(), htmlfile);
            }
           
        }

        private void XML2XSLT(string xsltFilePath, string xEle,string outputpath)
        {
            var transform = new XslCompiledTransform();
            var document = new XmlDocument();
            var xArgs = new XsltArgumentList();

            document.InnerXml = xEle;
            transform.Load(xsltFilePath);



            var results = new StringBuilder();
            var settings = new XmlWriterSettings();

            settings.OmitXmlDeclaration = true;
            settings.ConformanceLevel = ConformanceLevel.Auto;

            var writer = XmlWriter.Create(results, settings);

            transform.Transform(document, null, writer);


            System.IO.File.WriteAllText(outputpath, results.ToString());
        }

        public static string LoadTestimornial()
        {
            string output = string.Empty;
            var htmlfile = HttpContext.Current.Server.MapPath("~/private/Testimonial/testimonial.html").ToString();

            if (System.IO.File.Exists(htmlfile))
                output = File.ReadAllText(htmlfile).ToString();
            return output;
        }
    }
}