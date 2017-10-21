using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CS_ASP_016
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void getDateButton_Click(object sender, EventArgs e)
        {
            resultLabel.Text = Calendar1.SelectedDate.ToShortDateString();
        }

        protected void setDateButton_Click(object sender, EventArgs e)
        {
            Calendar1.SelectedDate = DateTime.Parse("10/21/2017");
        }

        protected void showDateButton_Click(object sender, EventArgs e)
        {
            Calendar1.VisibleDate = DateTime.Parse("7/18/1983");
        }

        protected void weekButton_Click(object sender, EventArgs e)
        {
            resultLabel.Text = "Week of " + Calendar1.SelectedDate.ToShortDateString();
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            resultLabel.Text = Calendar1.SelectedDate.ToShortDateString();
        }
    }
}