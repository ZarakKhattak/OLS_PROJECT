using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OLS_PROJECT.Model
{
    public class Customer
    {
        public int? CustomerID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string PostalCode { get; set; }
        public string Country { get; set; }
        public string Province { get; set; }
        public string Address { get; set; }
        public string License { get; set; }
        public string Phone { get; set; }
    }
}