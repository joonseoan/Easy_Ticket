using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.UI;

namespace Movie_Ticket_Project
{
    public class Global : System.Web.HttpApplication
    {

        // public object MessageBox { get; private set; }
        // Connection object
        SqlConnection cnn;
        // Command Object
        SqlCommand command;

        // setup connection string to SQL server
        string connectionString = "Data Source=LAPTOP-EO2QHHSQ\\SQLEXPRESS;Initial Catalog=TicketEasy;Integrated Security=SSPI;Persist Security Info=False";

        // setup creating Movie table
        
        string createMovieDatabase = "CREATE TABLE dbo.MOVIES " +
          "(title VARCHAR(50) PRIMARY KEY," +
          "genre VARCHAR(50) NOT NULL," +
          "director VARCHAR(50) NOT NULL," +
          "cast1 VARCHAR(50) NOT NULL," +
          "cast2 VARCHAR(50) NOT NULL," +
          "cast3 VARCHAR(50) NOT NULL," +
          "duration NUMERIC(3, 1) NOT NULL," +
          "synopsis VARCHAR(1000) NOT NULL," +
          "grade VARCHAR(50) NOT NULL)";

        

        // setup creating Customer table
        string createCustomerDatabase = "CREATE TABLE dbo.CUSTOMERS " +
          "(first_name VARCHAR(50) NOT NULL," +
          "last_name VARCHAR(50) NOT NULL," +
          "gender VARCHAR(7) NOT NULL," +
          "age NUMERIC(2,0) NOT NULL," +
          "email VARCHAR(50) PRIMARY KEY," +
          "password VARCHAR(50) NOT NULL," +
          "password_confirm VARCHAR(50) NOT NULL," +
          "genre VARCHAR(20) NOT NULL," +
          "director VARCHAR(50) NOT NULL," +
          "cast VARCHAR(50) NOT NULL)";

        protected void Application_Start(object sender, EventArgs e)
        {
            System.Web.UI.ScriptManager.ScriptResourceMapping.AddDefinition("jquery",
            new ScriptResourceDefinition
            {
                Path = "~/scripts/jquery-1.4.1.min.js",
                DebugPath = "~/scripts/jquery-1.4.1.js",
                CdnPath = "http://ajax.microsoft.com/ajax/jQuery/jquery-1.4.1.min.js",
                CdnDebugPath = "http://ajax.microsoft.com/ajax/jQuery/jquery-1.4.1.js"
            });

        }

        protected void Session_Start(object sender, EventArgs e)
        {// initializing con instance cotaining connectioon property
            cnn = new SqlConnection(connectionString);


            
            // Creating CUSTOMERS table
            try
            {
                // open connection
                cnn.Open();

                // trying to connect to the database and input creating CUSTOMERS table command
                command = new SqlCommand(createMovieDatabase, cnn);

                // executes creating BOOKS table command
                SqlDataReader reader_customers = command.ExecuteReader();

            }
            catch (SqlException ex)
            {
                // SQL Error Message
                Console.Write("Error in SQL! " + ex.Message);

            }
            finally
            {

                if (cnn.State == ConnectionState.Open)
                {

                    cnn.Close();

                }

            }

            

            // Creating Customer table
            try
            {

                cnn.Open();

                command = new SqlCommand(createCustomerDatabase, cnn);

                SqlDataReader reader_orders = command.ExecuteReader();

            }
            catch (SqlException ex)
            {

                Console.Write("Error in SQL! " + ex.Message);

            }
            finally
            {

                if (cnn.State == ConnectionState.Open)
                {

                    cnn.Close();

                }

            }

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}