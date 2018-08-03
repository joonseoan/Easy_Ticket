using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Movie_Ticket_Project
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

            string image = Session["Image_Desc"].ToString();
            string title = Session["Title_Desc"].ToString();
            string genre = Session["Genre_Desc"].ToString();
            string director = Session["Director_Desc"].ToString();
            string cast1 = Session["Cast1_Desc"].ToString();
            string cast2 = Session["Cast2_Desc"].ToString();
            string cast3 = Session["Cast3_Desc"].ToString();
            string duration = Session["Duration_Desc"].ToString();
            string synopsis = Session["Synopsis_Desc"].ToString();
            string rating = Session["Rating_Desc"].ToString();
            //string preference = Session["Preference_Desc"].ToString();

            this.title.InnerHtml = title + $" by {director}";

            this.Image1.Visible = true;
            this.Image1.ImageUrl = $"/images/{image}.PNG";
            this.Image1.Width = 250;
            this.Image1.Height = 350;
            this.Image1.BorderStyle = BorderStyle.Solid;
            this.Image1.BorderColor = System.Drawing.Color.Red;

            string rating_image;

            if (rating == "G")
            {
                rating_image = "g";  
            }
            else if (rating == "PG")
            {
                rating_image = "pg";
            }

            else if (rating == "14A")
            {
                rating_image = "14a";
            }
            else if (rating == "18A")
            {
                rating_image = "18a";
            }
            else if (rating == "R")
            {
                rating_image = "r";
            }
            else
            {
                rating_image = "a";
            }

            this.Image2.ImageUrl = $"/images/{rating_image}.PNG";

            this.Label2.Text = $"Cast: {cast1} | {cast2}| {cast3}";
            this.Label3.Text = $"Genre: {genre}";
            this.Label1.Text = $"[{duration} hour(s)]: " + synopsis;
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("service.aspx", false);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            // Testing...
            // Session.RemoveAll();

            // Session["Genre"] = "xxxxxxxx";
            // favDirector = Session["Director"].ToString();
            // favCast = Session["Cast"].ToString();

            this.Button2.PostBackUrl = "service.aspx";
            Server.Transfer("service.aspx", false);

        }

        
        protected void Button3_Click(object sender, EventArgs e)
        {

            
            Response.Redirect("Billing.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Server.Transfer("Default.aspx");
        }

    }
}