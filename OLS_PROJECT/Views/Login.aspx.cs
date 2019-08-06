using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OLS_PROJECT.Model;
using OLS_PROJECT.Utils;
using System.Drawing;

namespace OLS_PROJECT.Views
{
    public partial class Login : System.Web.UI.Page
    {
        private void InValidLogin()
        {
            this.LabelInvalidPassword.Text = "Invalid Login!";
            this.LabelInvalidPassword.ForeColor = Color.Red;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Submit_Btn_Click(object sender, EventArgs e)
        {
            LoginData loginData = new LoginData()
            {
                Username = this.UsernameTxtBox.Text,
                Password = this.PasswordTxtBox.Text
            };

            if (!DBManager.Login(loginData))
            {
                this.InValidLogin();
                return;
            }

            this.Session.Add("loginData", loginData);

            Response.Redirect("./Home.aspx");

        }
    }
}