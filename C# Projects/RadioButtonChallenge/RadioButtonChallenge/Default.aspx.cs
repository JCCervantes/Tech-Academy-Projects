using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RadioButtonChallenge
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void OKButton_Click(object sender, EventArgs e)
        {/*
            if (RadioButton1.Checked)
                resultLabel.Text = "You selected Pencil";
            else if (RadioButton2.Checked)
                resultLabel.Text = "You selected Pen";
            else if (RadioButton3.Checked)
                resultLabel.Text = "You selected Phone";
            else if (RadioButton4.Checked)
                resultLabel.Text = "You selected Tablet";
            else resultLabel.Text = "Please select an option";
        */
            if (RadioButton1.Checked)
                resultImage.ImageUrl = "pencil.png";
            else if (RadioButton2.Checked)
                resultImage.ImageUrl = "pen.png";
            else if (RadioButton3.Checked)
                resultImage.ImageUrl = "phone.png";
            else if (RadioButton4.Checked)
                resultImage.ImageUrl = "tablet.png";
            else resultLabel.Text = "Please select an option";

        }
    }
}