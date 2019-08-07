using OLS_PROJECT.Model;
using OLS_PROJECT.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OLS_PROJECT.Views
{
    public partial class CreateVehicleAndProperty : System.Web.UI.Page
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

            UpdateOptionsBasedOnRadio(sender, e);
        }

        protected void CreateVehicleBN_Click(object sender, EventArgs e)
        {
            this.Validate();
            if (!this.IsValid)
                return;

            if (this.CreateNewPropertyRadio.SelectedIndex == 0)
            {
                Vehicle _vehicle = new Vehicle()
                {
                    LicensePlate = this.LicensePlateTB.Text.ToUpper(),
                    Make = this.MakeModelDropDown.SelectedValue.Split(new string[] {", "}, StringSplitOptions.None).ElementAt(0),
                    Model = this.MakeModelDropDown.SelectedValue.Split(new string[] { ", " }, StringSplitOptions.None).ElementAt(1)
                };
                DBManager.AddVehicle(_vehicle, loginData);
            }
            else
            {
                VehicleProperties _vehicleProperties = new VehicleProperties()
                {
                    Make = this.MakeTB.Text.ToUpper(),
                    Model = this.ModelTB.Text.ToUpper(),
                    Type = this.TypeTB.Text.ToUpper(),
                    Description = this.DescriptionTB.Text
                };
                DBManager.AddVehicleProperty(_vehicleProperties, loginData);

                Vehicle _vehicle = new Vehicle()
                {
                    LicensePlate = this.LicensePlateTB.Text.ToUpper(),
                    Make = this.MakeTB.Text.ToUpper(),
                    Model = this.ModelTB.Text.ToUpper(),
                };
                DBManager.AddVehicle(_vehicle, loginData);
            }

            Response.Redirect("./Home.aspx");
        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("./Home.aspx");
        }

        protected void UpdateOptionsBasedOnRadio(object sender, EventArgs e)
        {
            if (this.CreateNewPropertyRadio.SelectedIndex == 0)
            {
                this.MakeLabel.Visible = false;
                this.MakeTB.Visible = false;
                this.ModelLabel.Visible = false;
                this.ModelTB.Visible = false;
                this.TypeLabel.Visible = false;
                this.TypeTB.Visible = false;
                this.DescriptionLabel.Visible = false;
                this.DescriptionTB.Visible = false;

                this.MakeModelLabel.Visible = true;
                this.MakeModelDropDown.Visible = true;

                this.MakeModelDropDown.DataSource = DBManager.GetAllMakeAndModels(this.loginData);
                this.MakeModelDropDown.DataBind();
            }
            else
            {
                this.MakeLabel.Visible = true;
                this.MakeTB.Visible = true;
                this.ModelLabel.Visible = true;
                this.ModelTB.Visible = true;
                this.TypeLabel.Visible = true;
                this.TypeTB.Visible = true;
                this.DescriptionLabel.Visible = true;
                this.DescriptionTB.Visible = true;

                this.MakeModelLabel.Visible = false;
                this.MakeModelDropDown.Visible = false;
            }
        }

    }
}

//TODO make sure all entries are filled by user
//TODO make create vehicle pretty