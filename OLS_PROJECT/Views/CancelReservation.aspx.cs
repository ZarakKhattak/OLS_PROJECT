using OLS_PROJECT.Model;
using OLS_PROJECT.Utils;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace OLS_PROJECT.Views
{
    public partial class CancelReservation : System.Web.UI.Page
    {
        private LoginData loginData;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.loginData = this.Session["loginData"] as LoginData;
            DataSet ds = DBManager.GetAllRentals(this.loginData);

            if (Session["loginData"] == null || !DBManager.Login(loginData))
            {
                Response.Redirect("./Login.aspx");
                return;
            }

            if (ds != null)
            {
                this.gvRentals.DataSource = ds;
                this.gvRentals.DataBind();
             
            }
            else
            {
                this.noRentalsLabel.Visible= true;
            }
        }
        
        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("./Home.aspx");
        }

        protected void deleteRentalButton_Click(object sender, EventArgs e)
        {
            int rentID = int.Parse(deleteRentalTextBox.Text);
            DBManager.DeleteRentalByID(rentID, loginData);

            Response.Redirect("./CancelReservation.aspx");
        }
    }
}