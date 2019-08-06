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
            using (DataSet dt = Utils.DBManager.GetAllRentals(loginData))
            {
                if (dt != null)
                {
                    GridViewLabel.Text = string.Empty;
                    gvCust.DataSource = dt;
                    gvCust.DataBind();
                }
                else
                {
                    GridViewLabel.Text = "No Reservations have been found.";
                }
            }
        }

        protected void CancelReservation_Click(object sender, EventArgs e)
        {
            //TODO create cancel reservation method
            Response.Redirect("./CancelReservation.aspx");

            //open new page showing all personal rentals? and cancel based on what rental ID user selects
            //OR load a dropdown picker on home page and have user pick and then hit confirm (confirm BTN appears when you press cancel reservation???)
        }

        protected void AddReservation_Click(object sender, EventArgs e)
        {
            Response.Redirect("./ReservationCreation.aspx");
        }

        protected void CreateCustomer_Click(object sender, EventArgs e)
        {
            Response.Redirect("./SignUp.aspx");
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("./Login.aspx");
        }
    }
}