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
    
    public partial class WhitePaper
    {
        public int WhitePaperId { get; set; }
        public string FilterName { get; set; }
        public string DocumentFileName { get; set; }
        public string Thumbnail { get; set; }
        public string Description { get; set; }
        public string ImageURL { get; set; }
        public Nullable<bool> NotDuplicate { get; set; }
        public Nullable<int> DisplayOrder { get; set; }
    }
}