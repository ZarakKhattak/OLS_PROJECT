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

        }

        protected void btn_tmp_Click1(object sender, EventArgs e)
        {
            LoginData loginData = this.Session["loginData"] as LoginData;


            // CODE


            // VP           -- Done
            // Vehicles     -- Done
            // Custumers    -- TODO
            // Rentals      -- TODO


            //Vehicle v = new Vehicle() {

            //LicensePlate = "Ford",
            //Make = "M4",
            //Model = "BMW"
            //};

            //DBManager.AddVehicle(v, loginData);


            //Vehicle v = new Vehicle()
            //{
            //    Model = "Ford",
            //    Make = "F 150",
            //    LicensePlate = "FRD222"
            //};

            //DBManager.AddVehicle(v, loginData);

            Vehicle v = new Vehicle()
            {
                Model = "Mercedes Benz",
                Make = "C350",
                LicensePlate = "MBZ400"
            };

            DBManager.AddVehicle(v, loginData);



            OracleConnection conn = new OracleConnection(String.Format("Data Source=Neptune; User Id={0}; Password={1}", loginData.Username, loginData.Password));
            OracleCommand cmd = new OracleCommand("SELECT * FROM \"VehicleProperties\"", conn);
            OracleDataAdapter da = new OracleDataAdapter(cmd);
            DataSet dt = new DataSet();
            da.Fill(dt);


            conn.Close();

            // UI
            // gvCust.DataSource = dt;
            // gvCust.DataBind();
        }
    }
}