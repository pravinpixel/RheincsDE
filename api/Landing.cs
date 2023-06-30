using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RheinBrucke.api
{
    public class Landing
    {
        public string firstname { get; set; }
        public string email { get; set; }
        public string phone { get; set; }
        public string companyname { get; set; }
        public string ServiceType { get; set; }
        public string[] CheckBoxValues { get; set; }
      

    }
    public class LandingReport
    {
        public string Services { get; set; }
        public DateTime DateFrom { get; set; }
        public DateTime DateTo { get; set; }
    }

    
}