using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RheinBrucke.Library
{
    public class MailEntity
    {
        public string MailFrom { get; set; }
        public string MailTo { get; set; }
        public string MailSubject { get; set; }
        public string MailBody { get; set; }
        public string MailCC { get; set; }
        public string IsAttachmentAvailable { get; set; }
        public string DocumentDetails { get; set; }
    }
}