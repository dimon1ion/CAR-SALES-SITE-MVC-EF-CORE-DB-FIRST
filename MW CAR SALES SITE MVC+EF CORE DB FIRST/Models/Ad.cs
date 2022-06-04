using System;
using System.Collections.Generic;

#nullable disable

namespace MW_CAR_SALES_SITE_MVC_EF_CORE_DB_FIRST.Models
{
    public partial class Ad
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public decimal Price { get; set; }
        public string Description { get; set; }
        public string Image { get; set; }
    }
}
