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

            if(ds != null)
            {
                this.gvRentals.DataSource = ds;
                this.gvRentals.DataBind();
             
            }
            else
            {
                this.noRentalsLabel.Visible= true;
            }
        }
    }
}