//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Entities
{
    using System;
    using System.Collections.Generic;
    
    public partial class Price
    {
        public System.Guid Id { get; set; }
        public System.DateTime FromDate { get; set; }
        public System.DateTime ToDate { get; set; }
        public System.Guid PropertyId { get; set; }
        public System.Guid PricingTypeId { get; set; }
    
        public virtual PricingType PricingType { get; set; }
        public virtual Property Property { get; set; }
    }
}
