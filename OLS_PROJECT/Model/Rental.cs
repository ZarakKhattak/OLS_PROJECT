using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OLS_PROJECT.Model
{
    public class Rental
    {
        public int? RentalID { get; set; }
        public int? CustomerID { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public string LicensePlate { get; set; }
    }
}