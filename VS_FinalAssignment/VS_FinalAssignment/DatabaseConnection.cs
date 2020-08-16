using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace VS_FinalAssignment
{
    public class DatabaseConnection
    {
        private string connectionString;

        public DatabaseConnection()
        {
            connectionString = @"Data Source=LAPTOP-OM5J60IG\SQLSERVER;Initial Catalog=FinalAssignment;Integrated Security = true";
        }

        public DatabaseConnection(string connectionString)
        {
            this.connectionString = connectionString;
        }

        //Get Data
        public DataTable getDataSQL(string query)
        {
            DataTable dt = new DataTable();
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            SqlCommand command = new SqlCommand(query, connection);
            dt.Load(command.ExecuteReader());
            connection.Close();
            return dt;
        }

        //insert, update, delete
        public void executeSQL(string query)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            SqlCommand command = new SqlCommand(query, connection);
            command.ExecuteNonQuery();
            connection.Close();
        }
    }
}