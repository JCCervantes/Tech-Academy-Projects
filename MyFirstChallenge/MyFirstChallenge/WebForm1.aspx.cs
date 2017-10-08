using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstChallenge
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void okButton_Click(object sender, EventArgs e)
        {
            string name = nameTextBox.Text;
            string tvShow = showTextBox.Text;

            string result = "I'm sorry, " + name + ", but " + tvShow + " is not the best show. Veep is the best show.";

            resultLabel.Text = result;
        }
    }
}