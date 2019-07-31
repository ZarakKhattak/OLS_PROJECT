using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OLS_PROJECT.Model;
using OLS_PROJECT.Utils;

namespace OLS_PROJECT.Views
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateCustomer_Click(object sender, EventArgs e)
        {
            LoginData loginData = this.Session["loginData"] as LoginData;
            try
            {
                Customer _customer = new Customer()
                {
                    FirstName = FirstNameTB.Text,
                    LastName = LastNameTB.Text,
                    Email = EmailTB.Text,
                    Country = CountryTB.Text,
                    Province = ProvinceTB.Text,
                    Address = AddressTB.Text,
                    PostalCode = PostalCodeTB.Text,
                    Phone = PhoneNumberTB.Text,
                    License = LicenseNumberTB.Text
                };
                Utils.DBManager.AddCustomer(_customer, loginData);
            }
            catch (Exception)
            {
                CreateCustomer_Click(sender, e);
            }
        }
    }
}