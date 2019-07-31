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

        //protected void btn_tmp_Click1(object sender, EventArgs e)
        //{
        //    LoginData loginData = this.Session["loginData"] as LoginData;
        //    using (DataSet dt = Utils.DBManager.GetAllRentals(loginData))
        //    {
        //        if (dt != null)
        //        {
        //            GridViewLabel.Text = string.Empty;
        //            gvCust.DataSource = dt;
        //            gvCust.DataBind();
        //        }
        //        else
        //        {
        //            GridViewLabel.Text = "No Entires have been found.";
        //        }
        //    }
        //}

        protected void CancelReservation_Click(object sender, EventArgs e)
        {
            //open new page showing all personal rentals?
        }

        protected void AddReservation_Click(object sender, EventArgs e)
        {
            //make them give their name, and if 
        }
    }
}