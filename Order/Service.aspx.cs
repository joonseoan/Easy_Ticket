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

    public partial class WebForm4 : System.Web.UI.Page
    {

        // Dictionary<string, string> recommended_title_images = new Dictionary<string, string>();

        SqlConnection cnn;
        SqlDataAdapter dap;
        System.Data.DataSet ds;
        string queryString;

        List<ImageButton> img = new List<ImageButton>();

        List<string[]> movie_elements = new List<string[]>();

        Table recommenation_table = new Table();
        
        string favGenre;
        string favDirector;
        string favCast;
        int custAge;

        // bool allMovieList = false;

        /*
        protected string[] splitTitle(string processed_title)
        {

            string[] basic_title = processed_title.Split('_');

            return basic_title;

        }
        */

        // title only
        protected string deleteColone(string title)
        {

            int index = 0;
            // string title_only;

            foreach (char c in title)
            {

                if (c == ':')
                {
                    index = title.IndexOf(':');
                }

            }

            string title_only = index != 0 ? title.Substring(0, index) : title;

            return title_only;

        }

        // image title
        protected string getImageName(string title)
        {

            string no_colone = deleteColone(title);  
           
            string image_title = no_colone.Replace(" ", "_");

            return image_title;

        }

        protected string getBackToPureName(string image_name)
        {
            
            string pureTileName = image_name.Replace("_", " ");

            return pureTileName;

        } 

        protected bool validateRating(string rating)
        {

            bool validation = true;

            string trimRating = rating.Trim();
            
            if(custAge == 17)
            {
                if(trimRating == "R" || trimRating == "18A" || trimRating == "A")
                {

                    validation = false;

                }

            }
            else if(custAge == 13)
            {

                if (trimRating == "R" || trimRating == "18A" || trimRating == "A" || trimRating == "14A" )
                {

                    validation = false;

                }

            }
            else if (custAge == 7)
            {

                if (trimRating == "R" || trimRating == "18A" || trimRating == "A" || trimRating == "14A" || trimRating == "PG")
                {

                    validation = false;

                }

            }

            return validation;

        }

        // xxxxxx_cdg
        protected void addTitles(string [] movie)
        {

            img.Add(new ImageButton());

                //{ movie[1], "dd" }
            movie_elements.Add(new string[] { getImageName(movie[1]), movie[1], movie[2], movie[3], movie[4], movie[5], movie[6], movie[7], movie[8], movie[9], movie[10] });

        }

        protected void validateAge(string[] movie_contents)
        {

            if(custAge < 18)
            {

                if (validateRating(movie_contents[9]))
                {

                    addTitles(movie_contents);

                }

            }
            else
            {

                addTitles(movie_contents);

            }
        }


        protected void showList(string [] movie_contents)
        {

            
            if ((favCast == movie_contents[4] || favCast == movie_contents[5] || favCast == movie_contents[6]) &&
                favDirector == movie_contents[3] && favGenre == movie_contents[2])
            {

                movie_contents[10] = "cdg";
                validateAge(movie_contents);

            }

            else if ((favCast == movie_contents[4] || favCast == movie_contents[5] || favCast == movie_contents[6]) &&
                favDirector == movie_contents[3])
            {

                movie_contents[10] = "cd";
                validateAge(movie_contents);
                
            }
            else if ((favCast == movie_contents[4] || favCast == movie_contents[5] || favCast == movie_contents[6]) &&
                        favGenre == movie_contents[2])
            {

                movie_contents[10] = "cg";
                validateAge(movie_contents);
                
            }
            else if (favDirector == movie_contents[3] && favGenre == movie_contents[2])
            {

                movie_contents[10] = "dg";
                validateAge(movie_contents);

            }

            else if (favCast == movie_contents[4] || favCast == movie_contents[5] || favCast == movie_contents[6])
            {

                movie_contents[10] = "c";
                validateAge(movie_contents);

            }
            else if (favDirector == movie_contents[3])
            {

                movie_contents[10] = "d";
                validateAge(movie_contents);
            }

            else if (favGenre == movie_contents[2])
            {

                movie_contents[10] = "g";
                validateAge(movie_contents);

            }
               
        }
                
        protected void Page_Load(object sender, EventArgs e)
        {

            string connectionString = "Data Source=LAPTOP-EO2QHHSQ\\SQLEXPRESS;Initial Catalog=TicketEasy;Integrated Security=SSPI;Persist Security Info=False";
            cnn = new SqlConnection(connectionString);
            queryString = "Select * from MOVIES";

            dap = new SqlDataAdapter(queryString, cnn);
            ds = new DataSet();
            dap.Fill(ds, "Movies");

            string[] movie_contents = new string[11];

            favGenre = Session["Genre"].ToString();
            favDirector = Session["Director"].ToString();
            favCast = Session["Cast"].ToString();
            custAge = Convert.ToInt32(Session["Age"]);

            this.Button2.Enabled = false;

            try
            {

                cnn.Open();

                foreach (DataRow row in ds.Tables["Movies"].Rows)
                {

                    movie_contents[0] = "image";
                    movie_contents[1] = row["title"].ToString().Trim();
                    movie_contents[2] = row["genre"].ToString().Trim();
                    movie_contents[3] = row["director"].ToString().Trim();
                    movie_contents[4] = row["cast1"].ToString().Trim();
                    movie_contents[5] = row["cast2"].ToString().Trim();
                    movie_contents[6] = row["cast3"].ToString().Trim();
                    movie_contents[7] = row["duration"].ToString().Trim();
                    movie_contents[8] = row["synopsis"].ToString().Trim();
                    movie_contents[9] = row["grade"].ToString().Trim();
                    movie_contents[10] = "preference";

                    if (IsPostBack)
                    {

                        validateAge(movie_contents);
                        this.title.InnerText = "- All Movie List -";
                    }
                    else
                    {
                        showList(movie_contents);
                        this.title.InnerText = "We Just Picked For You!";
                    }

                }

                if (img.Count != 0)
                {

                    int count = 0;

                    TableRow rows1 = new TableRow();
                    TableRow rows2 = new TableRow();

                    foreach (ImageButton movie in img)
                    {

                        movie.ID = movie_elements[count][0];
                        movie.ImageUrl = $"/images/{getImageName(movie_elements[count][0])}.PNG";
                        movie.Visible = true;
                        movie.Click += new ImageClickEventHandler(ImageButton1_Click);
                        movie.Attributes["image"] = movie_elements[count][0];
                        movie.Attributes["title"] = movie_elements[count][1];
                        movie.Attributes["genre"] = movie_elements[count][2];
                        movie.Attributes["director"] = movie_elements[count][3];
                        movie.Attributes["cast1"] = movie_elements[count][4];
                        movie.Attributes["cast2"] = movie_elements[count][5];
                        movie.Attributes["cast3"] = movie_elements[count][6];
                        movie.Attributes["duration"] = movie_elements[count][7];
                        movie.Attributes["synopsis"] = movie_elements[count][8];
                        movie.Attributes["rating"] = movie_elements[count][9];
                        movie.Attributes["preference"] = movie_elements[count][10];
                        movie.AlternateText = movie_elements[count][0];
                        movie.Width = 200;
                        movie.Height = 300;
                        movie.BorderStyle = BorderStyle.Solid;
                        movie.BorderColor = System.Drawing.Color.Red; // BorderStyle("", "") //AttributeCollection .Solid")    ("red");

                        if (count % 4 == 0)
                        {
                            rows1 = new TableRow();
                            rows2 = new TableRow();
                        }

                        TableCell cell1 = new TableCell();
                        TableCell cell2 = new TableCell();
                        rows1.HorizontalAlign = HorizontalAlign.Center;
                        rows2.HorizontalAlign = HorizontalAlign.Center;
                        
                        if(!IsPostBack)
                        {
                            if (movie_elements[count][10] == "cdg")
                            {

                                cell1.Text = "100% perfect for you!";

                            }
                            else if (movie_elements[count][10] == "cd")
                            {

                                cell1.Text = $"Awesome {favCast} with {favDirector}";

                            }
                            else if (movie_elements[count][10] == "cg")
                            {

                                cell1.Text = $"{favCast} is the best in {favGenre.ToLower()} movie";

                            }
                            else if (movie_elements[count][10] == "dg")
                            {

                                cell1.Text = $"The best director, {favDirector}, for {favGenre.ToLower()}";

                            }
                            else if (movie_elements[count][10] == "c")
                            {

                                cell1.Text = $"You love {favCast}, right?";

                            }

                            else if (movie_elements[count][10] == "d")
                            {

                                cell1.Text = $"{favDirector} is adorable, right?";

                            }
                            else
                            {

                                cell1.Text = $"Your favorite {favGenre.ToLower()}!";

                            }

                        } else
                        {

                            cell1.Text = "";

                        }
                        
                        cell2.Controls.Add(movie);

                        cell2.Width = 300;
                        cell2.Height = 350;

                        rows1.Cells.Add(cell1);
                        rows2.Cells.Add(cell2);

                        this.Table1.Rows.Add(rows1);
                        this.Table1.Rows.Add(rows2);

                        count++;

                    }

                }
                else
                {

                    this.title.InnerText = "Sorry We do not have any recommendation movies!, " +
                        "We will update them soon. Click All Movie List!";

                }

                cnn.Close();

            }
            catch (SqlException ex)
            {

                Response.Write(ex.Message);

            }
            finally
            {

                if (cnn.State == ConnectionState.Open)
                {

                    cnn.Close();

                }

            }

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

            Session["Image_Desc"] = ((ImageButton)sender).Attributes["image"];
            Session["Title_Desc"] = ((ImageButton)sender).Attributes["title"];
            Session["Genre_Desc"] = ((ImageButton)sender).Attributes["genre"];
            Session["Director_Desc"] = ((ImageButton)sender).Attributes["director"];
            Session["Cast1_Desc"] = ((ImageButton)sender).Attributes["cast1"];
            Session["Cast2_Desc"] = ((ImageButton)sender).Attributes["cast2"];
            Session["Cast3_Desc"] = ((ImageButton)sender).Attributes["cast3"];
            Session["Duration_Desc"] = ((ImageButton)sender).Attributes["duration"];
            Session["Synopsis_Desc"] = ((ImageButton)sender).Attributes["synopsis"];
            Session["Rating_Desc"] = ((ImageButton)sender).Attributes["rating"];
            Session["Preference_Desc"] = ((ImageButton)sender).Attributes["preference"];

            Server.Transfer("description.aspx", true);

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            // allMovieList = false;
            this.Button1.Enabled = false;
            this.Button2.Enabled = true;
        
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            // allMovieList = true;
            Server.Transfer("service.aspx", false);
            this.Button1.Enabled = true;
            this.Button2.Enabled = false;

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            Session.Abandon();
            Server.Transfer("Default.aspx");

        }
    }

}