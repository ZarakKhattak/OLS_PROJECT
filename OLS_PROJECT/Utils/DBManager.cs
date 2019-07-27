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
        public static bool Login(LoginData loginData)
        {
            OracleConnection con = new OracleConnection(String.Format("Data Source=Neptune; User Id={0}; Password={1};", loginData.Username, loginData.Password));
            //OracleCommand com = new OracleCommand("", con);
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
    }
}