using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;
using System.Data;
using OLS_PROJECT.Model;
using OLS_PROJECT.Utils;

namespace OLS_PROJECT.Views
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoginData loginData = this.Session["loginData"] as LoginData;
            if(Session["loginData"] == null || !DBManager.Login(loginData))
            {
                Response.Redirect("./Login.aspx");
                return;
            }
            using (DataTable dt = Utils.DBManager.GetAllRentals(loginData))
            {
                if (dt.Rows.Count != 0)
                {
                    this.GridViewLabel.Visible = false; //TODO EMPTY label not showing up anywhere on page no matter what
                    gvCust.DataSource = dt;
                    gvCust.DataBind();
                }
                else
                {
                    this.GridViewLabel.Visible = true;
                }
            }
        }

        protected void CancelReservation_Click(object sender, EventArgs e)
        {
            Response.Redirect("./CancelReservation.aspx");
        }

        protected void AddReservation_Click(object sender, EventArgs e)
        {
            Response.Redirect("./ReservationCreation.aspx");
        }

        protected void CreateCustomer_Click(object sender, EventArgs e)
        {
            Response.Redirect("./CreateCustomerProfile.aspx");
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("./Login.aspx");
        }

        protected void CreateVehicle_Click(object sender, EventArgs e)
        {
            Response.Redirect("./CreateVehicleAndProperty.aspx");
        }
    }
}