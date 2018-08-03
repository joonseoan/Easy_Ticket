using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Order
{
    public partial class Billing : System.Web.UI.Page
    {
        int premium = 5;
        int vip = 10;
        double ticket_price = 17.99;

        ServiceReference1.CaculatePriceClient client
                    = new ServiceReference1.CaculatePriceClient();

        protected void setSubTotal()
        {

            if (this.Label6.Text.Length > 0 && this.Label8.Text.Length > 0)
            {

                this.Label2.Text = "$" + (Convert.ToDouble(this.Label6.Text) *
                     Convert.ToDouble(this.Label8.Text.Replace("$", "").Trim())).ToString();

                this.Label9.Text = "$" + Math.Round(client.GetTotal(Convert.ToDouble(this.Label2.Text.Replace("$", ""))), 2).ToString();

            }

        }

        protected void Page_Load(object sender, EventArgs e)
        {

            this.Label1.Text = Session["FirstName"].ToString() + " " + Session["LastName"];
            this.Label5.Text = Session["Title_Desc"].ToString();

            if (!IsPostBack)
            {

                Session["ticketNumber"] = 0;

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Session["ticketNumber"] = 1;
            this.Label6.Text = Session["ticketNumber"].ToString();
            setSubTotal();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            Session["ticketNumber"] = 2;
            this.Label6.Text = Session["ticketNumber"].ToString();
            setSubTotal();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            Session["ticketNumber"] = 3;
            this.Label6.Text = Session["ticketNumber"].ToString();
            setSubTotal();

        }

        protected void Button4_Click(object sender, EventArgs e)
        {

            Session["ticketNumber"] = 4;
            this.Label6.Text = Session["ticketNumber"].ToString();
            setSubTotal();

        }

        protected void Button5_Click(object sender, EventArgs e)
        {

            Session["ticketNumber"] = Convert.ToInt32(Session["ticketNumber"]) + 1;
            this.Label6.Text = Session["ticketNumber"].ToString();
            setSubTotal();

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

            this.Label7.Text = this.DropDownList1.SelectedValue.ToString();

            if (this.Label7.Text == "Standard")
            {
                this.Label8.Text = "$" + ticket_price.ToString();

            }

            else if (this.Label7.Text == "Premium")
            {
                this.Label8.Text = "$" + (premium + ticket_price).ToString();

            }

            else if (this.Label7.Text == "VIP")
            {

                this.Label8.Text = "$" + (vip + ticket_price).ToString();

            }

            setSubTotal();

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            if(!this.CheckBox1.Checked)
            {

                this.Label4.Text = "Please, check the checkbox above to confirm your order.";
                return;

            }

            Session.Abandon();
            Server.Transfer("ThankYou.aspx");
        }
    }
}