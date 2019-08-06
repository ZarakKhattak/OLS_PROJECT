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

        }
        protected void CreateReservationBN_Click(object sender, EventArgs e)
        {
            
            Rental _rental = new Rental()
            {
                RentalID = null,
                CustomerID = int.Parse(CustomerIDTB.Text),
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