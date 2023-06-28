using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RheinBrucke.api
{
    public class Admin
    {
        public string username { get; set; }
        public string password { get; set; }
    }

    public class MailConfig
    {
        public string LoginName { get; set; }
        public string Password { get; set; }
        public string Port { get; set; }
        public string Smtp { get; set; }
        public bool EnableSSl { get; set; }
        public bool Relay { get; set; }
        public string ConatctMailId { get; set; }
        public string JobMailId { get; set; }
    }
}