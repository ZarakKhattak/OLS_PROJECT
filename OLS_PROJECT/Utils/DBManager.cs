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

        public static void AddCustomer(Customer customer, LoginData loginData)
        {
            string str = string.Format("INSERT INTO Customer VALUES ({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8}, {9})",
                customer.CustomerID, customer.FirstName, customer.LastName, customer.Phone, customer.Email, customer.License, customer.Address, customer.Province, customer.Country, customer.PostalCode);
            OracleCommand _command = CreateOracleCommand(loginData, str);
            _command.ExecuteNonQuery();
        }

        public static void AddRental(Rental rental, LoginData loginData)
        {
            string str = string.Format("INSERT INTO Rental VALUES ({0}, {1}, {2}, {3}, {4})",
                rental.RentalID, rental.CustomerID, rental.StartDate, rental.EndDate, rental.LicensePlate);
            OracleCommand _command = CreateOracleCommand(loginData, str);
            _command.ExecuteNonQuery();
        }

        public static void AddVehicle(Vehicle vehicle, LoginData loginData)
        {
            string str = string.Format("INSERT INTO Vehicle VALUES ({0}, {1}, {2})",
                vehicle.LicensePlate, vehicle.Make, vehicle.Model);
            OracleCommand _command = CreateOracleCommand(loginData, str);
            _command.ExecuteNonQuery();
        }

        public static void AddVehicleProperty(VehicleProperties vehicleProperties, LoginData loginData)
        {
            string str = string.Format("INSERT INTO VehicleProperties VALUES ({0}, {1}, {2}, {3})",
                vehicleProperties.Make, vehicleProperties.Model, vehicleProperties.Type, vehicleProperties.Description);
            OracleCommand _command = CreateOracleCommand(loginData, str);
            _command.ExecuteNonQuery();
        }
    }
}