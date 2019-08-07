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
        private LoginData loginData;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            this.loginData = this.Session["loginData"] as LoginData;
            if (Session["loginData"] == null || !DBManager.Login(loginData))
            {
                Response.Redirect("./Login.aspx");
                return;
            }

        }

        protected void CreateCustomer_Click(object sender, EventArgs e)
        {
            this.Validate();
            if (!this.IsValid)
                return;
            Customer _customer = new Customer()
            {
                CustomerID = null,
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
            DBManager.AddCustomer(_customer, loginData);

            Response.Redirect("./Home.aspx");
        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("./Home.aspx");
        }
    }
}

//TODO setup creation so that every field HAS to be filled