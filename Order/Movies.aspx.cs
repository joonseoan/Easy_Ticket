using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Movie_Ticket_Project
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                // Movie Genre Setup
                this.DropDownList1.Items.Add("Action & Adventure");
                this.DropDownList1.Items.Add("Romantic Movies");
                this.DropDownList1.Items.Add("Drama");
                this.DropDownList1.Items.Add("Animation");

                // Movie Rating Setup
                this.DropDownList2.Items.Add("G");
                this.DropDownList2.Items.Add("PG");
                this.DropDownList2.Items.Add("14A");
                this.DropDownList2.Items.Add("18A");
                this.DropDownList2.Items.Add("R");
                this.DropDownList2.Items.Add("A");

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!RequiredFieldValidator1.IsValid || !RequiredFieldValidator2.IsValid
                || !RequiredFieldValidator3.IsValid || !RequiredFieldValidator4.IsValid
                || !RequiredFieldValidator5.IsValid || !RequiredFieldValidator6.IsValid
                || !RequiredFieldValidator7.IsValid) return;

            SqlConnection cnn;
            SqlCommand command;

            string connetionString = "Data Source=LAPTOP-EO2QHHSQ\\SQLEXPRESS;Initial Catalog=TicketEasy;Integrated Security=SSPI;Persist Security Info=False";

            cnn = new SqlConnection(connetionString);

            this.Label1.Text = "";

            try
            {

                cnn.Open();

                command = new SqlCommand("INSERT INTO MOVIES VALUES (@title, @genre, @director, @cast1, @cast2, @cast3, @duration, @synopsis, @grade)", cnn);

                // Assign book_name, author_name, publish_date to Insert query
                command.Parameters.AddWithValue("@title", this.TextBox1.Text.Trim());
                command.Parameters.AddWithValue("@genre", this.DropDownList1.SelectedValue.ToString());
                command.Parameters.AddWithValue("@director", this.TextBox2.Text.Trim());
                command.Parameters.AddWithValue("@cast1", this.TextBox3.Text.Trim());
                command.Parameters.AddWithValue("@cast2", this.TextBox4.Text.Trim());
                command.Parameters.AddWithValue("@cast3", this.TextBox5.Text.Trim());

                double movie_duration = Int32.Parse(this.TextBox6.Text);
                command.Parameters.AddWithValue("@duration", this.TextBox6.Text.Trim());

                command.Parameters.AddWithValue("@synopsis", this.TextBox7.Text.Trim());
                command.Parameters.AddWithValue("@grade", this.DropDownList2.SelectedValue.ToString());

                command.ExecuteNonQuery();

                cnn.Close();

                this.Label1.Text = "You are successfully registered on our database";

                this.TextBox1.Text = "";
                this.TextBox2.Text = "";
                this.TextBox3.Text = "";
                this.TextBox4.Text = "";
                this.TextBox5.Text = "";
                this.TextBox6.Text = "";
                this.TextBox7.Text = "";

                // this.DropDownList2.Items.Clear();
            }

            catch (SqlException ex)
            {

                this.Label1.Text = "Error in connection ! ";
                
            }
            catch(FormatException fe)
            {
                this.Label1.Text = "Youn entered invalid number";
            }

            finally
            {

                if (cnn.State == ConnectionState.Open)
                {

                    cnn.Close();

                }

            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            Session.Abandon();
            Server.Transfer("Default.aspx");
        }
    }

}