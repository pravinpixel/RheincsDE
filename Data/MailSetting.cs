//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace RheinBrucke.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class MailSetting
    {
        public int Id { get; set; }
        public string LoginName { get; set; }
        public string Password { get; set; }
        public string Port { get; set; }
        public string CustomSMTP { get; set; }
        public Nullable<bool> EnableSSL { get; set; }
        public Nullable<bool> Relay { get; set; }
        public string ContactUsMailId { get; set; }
        public string JobMailId { get; set; }
        public string LandingMailId { get; set; }
        public string EmailId { get; set; }
    }
}
