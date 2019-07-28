using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OracleClient;
using OLS_PROJECT.Model;

namespace OLS_PROJECT.Utils
{
    public static class DBManager
    {
        public static OracleCommand CreateOracleCommand(LoginData loginData, String command)
        {
            OracleConnection con = new OracleConnection(String.Format("Data Source=Neptune; User Id={0}; Password={1};", loginData.Username, loginData.Password));
            OracleCommand comm = new OracleCommand(command, con);
            return comm;
        }

        public static bool Login(LoginData loginData)
        {
            OracleConnection con = new OracleConnection(String.Format("Data Source=Neptune; User Id={0}; Password={1};", loginData.Username, loginData.Password));
            try
            {
                con.Open();
                con.Close();
            } catch(Exception)
            {
                return false;
            }

            return true;
        }

        public static Customer AddCustomer(Customer customer, LoginData loginData)
        {

        }

        public static Rental AddRental(Rental rental, LoginData loginData)
        {

        }

        public static Vehicle AddVehicle(Vehicle vehicle, LoginData loginData)
        {

        }

        public static VehicleProperties AddVehicleProperty(VehicleProperties vehicleProperties, LoginData loginData)
        {

        }
    }
}