using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OLS_PROJECT.Model
{
    public class Rental
    {
        public string RentalID { get; set; }
        public string CustomerID { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public string LicensePlate { get; set; }
    }
}