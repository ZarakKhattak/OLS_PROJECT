using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OracleClient;
using OLS_PROJECT.Model;
using System.Data;

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
            }
            catch (Exception)
            {
                return false;
            }

            return true;
        }

        public static DataSet GetAllVehicles(LoginData loginData)
        {
            try
            {
                DataSet dt = new DataSet();
                string str = string.Format("SELECT * FROM VEHICLE");

                using (OracleCommand _command = CreateOracleCommand(loginData, str))
                {
                    using (OracleDataAdapter da = new OracleDataAdapter(_command))
                    {
                        _command.Connection.Open();
                        da.Fill(dt);
                    }
                }
                return dt;
            }
            catch (Exception)
            {
                return null;
            }
        }

        public static void AddCustomer(Customer customer, LoginData loginData)
        {
            string _query = "INSERT INTO CUSTOMER (FIRSTNAME, LASTNAME, PHONENUMBER, EMAIL, LICENSENUMBER, ADDRESS, PROVINCE, COUNTRY, POSTALCODE) " +
                "VALUES (:FIRSTNAME, :LASTNAME, :PHONENUMBER, :EMAIL, :LICENSENUMBER, :ADDRESS, :PROVINCE, :COUNTRY, :POSTALCODE)";
            using (OracleCommand _command = CreateOracleCommand(loginData, _query))
            {
                _command.Parameters.AddWithValue("FIRSTNAME", customer.FirstName);
                _command.Parameters.AddWithValue("LASTNAME", customer.LastName);
                _command.Parameters.AddWithValue("PHONENUMBER", customer.Phone);
                _command.Parameters.AddWithValue("EMAIL", customer.Email);
                _command.Parameters.AddWithValue("LICENSENUMBER", customer.License);
                _command.Parameters.AddWithValue("ADDRESS", customer.Address);
                _command.Parameters.AddWithValue("PROVINCE", customer.Province);
                _command.Parameters.AddWithValue("COUNTRY", customer.Country);
                _command.Parameters.AddWithValue("POSTALCODE", customer.PostalCode);

                _command.Connection.Open();
                _command.ExecuteNonQuery();
            }
        }

        public static void AddRental(Rental rental, LoginData loginData)
        {
            string _query = "INSERT INTO RENTAL (CUSTOMERID, STARTDATE, ENDDATE, LICENSEPLATE) " +
                "VALUES (:CUSTOMERID, :STARTDATE, :ENDDATE, :LICENSEPLATE)";
            using (OracleCommand _command = CreateOracleCommand(loginData, _query))
            {
                _command.Parameters.AddWithValue("CUSTOMERID", rental.CustomerID);
                _command.Parameters.AddWithValue("STARTDATE", rental.StartDate);
                _command.Parameters.AddWithValue("ENDDATE", rental.EndDate);
                _command.Parameters.AddWithValue("LICENSEPLATE", rental.LicensePlate);

                _command.Connection.Open();
                _command.ExecuteNonQuery();
            }
        }

        public static void AddVehicle(Vehicle vehicle, LoginData loginData)
        {
            string _query = "INSERT INTO VEHICLE VALUES (:LICENSEPLATE, :MAKE, :MODEL)";
            using (OracleCommand _command = CreateOracleCommand(loginData, _query))
            {
                _command.Parameters.AddWithValue("LICENSEPLATE", vehicle.LicensePlate);
                _command.Parameters.AddWithValue("MAKE", vehicle.Make);
                _command.Parameters.AddWithValue("MODEL", vehicle.Model);

                _command.Connection.Open();
                _command.ExecuteNonQuery();
            }
        }

        public static void AddVehicleProperty(VehicleProperties vehicleProperties, LoginData loginData)
        {
            string _query = "INSERT INTO VEHICLEPROPERTIES VALUES (:MAKE, :MODEL, :TYPE, :DESC)";
            using (OracleCommand _command = CreateOracleCommand(loginData, _query))
            {
                _command.Parameters.AddWithValue("MAKE", vehicleProperties.Make);
                _command.Parameters.AddWithValue("MODEL", vehicleProperties.Model);
                _command.Parameters.AddWithValue("TYPE", vehicleProperties.Type);
                _command.Parameters.AddWithValue("DESC", vehicleProperties.Description);

                _command.Connection.Open();
                _command.ExecuteNonQuery();
            }
        }

        public static void DeleteCustomerByID(int CustomerID, LoginData loginData)
        {
            string _query = "DELETE FROM CUSTOMER WHERE CUSTOMERID = :CUSTOMERID";
            using (OracleCommand _command = CreateOracleCommand(loginData, _query))
            {
                _command.Parameters.AddWithValue("CUSTOMERID", CustomerID);

                _command.Connection.Open();
                _command.ExecuteNonQuery();
            }
        }

        public static void DeleteRentalByID(int RentalID, LoginData loginData)
        {
            string _query = "DELETE FROM RENTAL WHERE RENTALID = :RENTALID";
            using (OracleCommand _command = CreateOracleCommand(loginData, _query))
            {
                _command.Parameters.AddWithValue("RENTALID", RentalID);

                _command.Connection.Open();
                _command.ExecuteNonQuery();
            }
        }

        public static void DeleteVehicleByLicense(string LicensePlate, LoginData loginData)
        {
            string _query = "DELETE FROM VEHICLE WHERE LICENSEPLATE = :LICENSEPLATE";
            using (OracleCommand _command = CreateOracleCommand(loginData, _query))
            {
                _command.Parameters.AddWithValue("LICENSEPLATE", LicensePlate);

                _command.Connection.Open();
                _command.ExecuteNonQuery();
            }
        }

        public static void DeletePropertyByMakeAndModel(string Make, string Model, LoginData loginData)
        {
            string _query = "DELETE FROM VEHICLEPROPERTIES WHERE MAKE = :MAKE, \"MODEL\" = :MODEL";
            using (OracleCommand _command = CreateOracleCommand(loginData, _query))
            {
                _command.Parameters.AddWithValue("MAKE", Make);
                _command.Parameters.AddWithValue("MODEL", Model);

                _command.Connection.Open();
                _command.ExecuteNonQuery();
            }
        }

        public static DataSet GetAllRentals(LoginData loginData)
        {
            try
            {
                DataSet dt = new DataSet();
                string str = string.Format(
                    "SELECT RENTAL.RENTALID, CUSTOMER.FIRSTNAME, CUSTOMER.LASTNAME, VEHICLE.LICENSEPLATE, VEHICLE.\"MODEL\", VEHICLEPROPERTIES.\"TYPE\" FROM RENTAL" +
                    " LEFT JOIN CUSTOMER ON CUSTOMER.CUSTOMERID = RENTAL.CUSTOMERID" +
                    " LEFT JOIN VEHICLE ON RENTAL.LICENSEPLATE = VEHICLE.LICENSEPLATE" +
                    " LEFT JOIN VEHICLEPROPERTIES ON VEHICLE.MAKE = VEHICLEPROPERTIES.MAKE AND VEHICLE.\"MODEL\" = VEHICLEPROPERTIES.\"MODEL\"");

                using (OracleCommand _command = CreateOracleCommand(loginData, str))
                {
                    using (OracleDataAdapter da = new OracleDataAdapter(_command))
                    {
                        _command.Connection.Open();
                        da.Fill(dt);
                    }
                }
                return dt;
            }
            catch (Exception)
            {
                return null;
            }
        }

        public static List<string> GetAllCustomerNames(LoginData loginData)
        {
            List<string> _customers = new List<string>();
            string _query = "SELECT FIRSTNAME, LASTNAME FROM CUSTOMER";
            using (OracleCommand _command = CreateOracleCommand(loginData, _query))
            using (OracleDataAdapter da = new OracleDataAdapter(_command))
            using (DataTable dt = new DataTable())
            {
                _command.Connection.Open();
                da.Fill(dt);

                foreach(DataRow row in dt.Rows)
                {
                    _customers.Add(Convert.ToString(row["FIRSTNAME"]) + " " + Convert.ToString(row["LASTNAME"]));
                }
                return _customers;
            }
        }

        public static int GetCustomerIDFromName(string name, LoginData loginData)
        {
            string[] _customerName = name.Split(' ').ToArray();
            string _query = "SELECT CUSTOMERID FROM CUSTOMER WHERE FIRSTNAME = :FIRSTNAME AND LASTNAME = :LASTNAME";
            using (OracleCommand _command = CreateOracleCommand(loginData, _query))
            using (OracleDataAdapter da = new OracleDataAdapter(_command))
            using (DataTable dt = new DataTable())
            {
                _command.Parameters.AddWithValue("FIRSTNAME", _customerName[0]);
                _command.Parameters.AddWithValue("LASTNAME", _customerName[1]);

                _command.Connection.Open();
                da.Fill(dt);
                DataRow _row = dt.Rows[0];
                return int.Parse(Convert.ToString(_row["CUSTOMERID"]));
            }
        }

        public static List<string> GetCarsAvailableDuringPeriod(DateTime startdate, DateTime enddate, LoginData loginData)
        {
            List<string> _licensePlates = new List<string>();
            string _query = "SELECT * FROM VEHICLE WHERE NOT EXISTS " +
                "(SELECT LICENSEPLATE FROM RENTAL WHERE (:STARTDATE BETWEEN STARTDATE AND ENDDATE) OR (:ENDDATE BETWEEN STARTDATE AND ENDDATE) OR " +
                "((:STARTDATE < STARTDATE) AND (:ENDDATE > ENDDATE)))";
            using (OracleCommand _command = CreateOracleCommand(loginData, _query))
            using (OracleDataAdapter da = new OracleDataAdapter(_command))
            using (DataTable dt = new DataTable())
            {
                _command.Parameters.AddWithValue("STARTDATE", startdate);
                _command.Parameters.AddWithValue("ENDDATE", enddate);

                _command.Connection.Open();
                da.Fill(dt);
                foreach (DataRow row in dt.Rows)
                {
                    _licensePlates.Add(Convert.ToString(row["LICENSEPLATE"]) + " (" + Convert.ToString(row["MAKE"]) + ", " + Convert.ToString(row["MODEL"]) + ")");
                }

                return _licensePlates;
            }
        }
    }
}