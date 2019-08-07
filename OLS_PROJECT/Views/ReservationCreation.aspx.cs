using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OLS_PROJECT;
using OLS_PROJECT.Utils;
using OLS_PROJECT.Model;
using OLS_PROJECT.Views;
using System.Data;

namespace OLS_PROJECT.Views
{
    public partial class ReservationCreation : System.Web.UI.Page
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

            //populate the customer names dropdown with all customers found in database
            this.CustomerDropDown.DataSource = DBManager.GetAllCustomerNames(this.loginData);
            this.CustomerDropDown.DataBind();

        }
        protected void CreateReservationBN_Click(object sender, EventArgs e)
        {

            this.Validate();
            if (!this.IsValid)
                return;
            try
            {
                this.ErrorLabel.Visible = false;
                Rental _rental = new Rental()
                {
                    RentalID = null,
                    CustomerID = DBManager.GetCustomerIDFromName(this.CustomerDropDown.SelectedValue, this.loginData),
                    StartDate = StartDateCal.SelectedDate,
                    EndDate = EndDateCal.SelectedDate,
                    LicensePlate = LicensePlateDropDown.SelectedValue.Split(' ').First()
                };

                DBManager.AddRental(_rental, loginData);

                Response.Redirect("./Home.aspx");
            } catch (Exception)
            {
                this.ErrorLabel.Visible = true;
                this.ErrorLabel.Text = "!!ERROR!! - Please look over all fields and make sure they are valid.";
            }
        }

        protected void CancelBN_Click(object sender, EventArgs e)
        {
            Response.Redirect("./Home.aspx");
        }


        protected void CalanderDateChanged(object sender, EventArgs e)
        {
            if (this.EndDateCal.SelectedDate < this.StartDateCal.SelectedDate)
            {
                this.LicensePlateDropDown.ClearSelection();
            } else if (this.EndDateCal.SelectedDate < DateTime.Now | this.StartDateCal.SelectedDate < DateTime.Now)
            {
                this.LicensePlateDropDown.ClearSelection();
            } else
            {
                this.LicensePlateDropDown.ClearSelection();
                this.LicensePlateDropDown.DataSource = DBManager.GetCarsAvailableDuringPeriod(this.StartDateCal.SelectedDate, this.EndDateCal.SelectedDate, this.loginData);
                this.LicensePlateDropDown.DataBind();
            }
        }
    }
}