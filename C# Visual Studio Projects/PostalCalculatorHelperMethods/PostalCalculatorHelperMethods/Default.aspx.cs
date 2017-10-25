using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PostalCalculatorHelperMethods
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Width_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Height_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Length_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GroundButton_CheckedChanged(object sender, EventArgs e)
        {
            calculatePostage(.15);
        }

        protected void AirButton_CheckedChanged(object sender, EventArgs e)
        {
            calculatePostage(.25);
        }

        protected void NextDayButton_CheckedChanged(object sender, EventArgs e)
        {
            calculatePostage(.45);
        }

        protected void calculatePostage(double multiplier)
        {
            if ((Width.Text.Trim().Length == 0) || (Height.Text.Trim().Length == 0) || (Length.Text.Trim().Length == 0))
            {
                resultLabel.Text = "You must enter the package dimensions.";
                return;
            } 
            else
	        {
                int volume = (int.Parse(Width.Text)) * (int.Parse(Height.Text)) * (int.Parse(Length.Text));

                double Postage = volume * multiplier;

                resultLabel.Text = String.Format("The postage for this package is {0:C}.", Postage);
            }

        }

    }
}