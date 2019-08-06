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
            this.loginData = this.Session["loginData"] as LoginData;
            if (Session["loginData"] == null || !DBManager.Login(loginData))
            {
                Response.Redirect("./Login.aspx");
                return;
            }

            using (DataSet dt = DBManager.GetAllVehicles(loginData))
            {
                if (dt != null)
                {
                    //GridViewLabel.Text = string.Empty;
                    VehicleGrid.DataSource = dt;
                    VehicleGrid.DataBind();
                }
                else
                {
                    VehicleGridLabel.Text = "No Vehicles Available";
                }
            }

            //populate the customer names dropdown with all customers found in database
            this.CustomerDropDown.DataSource = DBManager.GetAllCustomerNames(this.loginData);
            this.CustomerDropDown.DataBind();

            //TODO configure the dropdown list in create reservation;
            //make sure that the selected index is not the first entry in the list
            this.CustomerDropDown.SelectedIndex = 0;    //this doesn't seem to work

        }
        protected void CreateReservationBN_Click(object sender, EventArgs e)
        {
            Rental _rental = new Rental()
            {
                RentalID = null,
                CustomerID = DBManager.GetCustomerIDFromName(this.CustomerDropDown.SelectedValue, this.loginData),
                StartDate = StartDateCal.SelectedDate,
                EndDate = EndDateCal.SelectedDate,
                LicensePlate = LicensePlateTB.Text
            };

            DBManager.AddRental(_rental, loginData);

            Response.Redirect("./Home.aspx");
        }

        protected void CancelBN_Click(object sender, EventArgs e)
        {
            Response.Redirect("./Home.aspx");
        }
    }
}

//TODO rental aesthetics
//if you want you can make the rental page prettier or something IDK