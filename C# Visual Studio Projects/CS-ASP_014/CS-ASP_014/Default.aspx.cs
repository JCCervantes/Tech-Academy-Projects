﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CS_ASP_014
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DateTime myValue = DateTime.Now;
            //resultLabel.Text = myValue.ToLongDateString();
            //resultLabel.Text = myValue.AddDays(2).ToString();
            //resultLabel.Text = myValue.AddMonths(-2).ToString();
            //resultLabel.Text = myValue.Month.ToString();
            //resultLabel.Text = myValue.IsDaylightSavingTime().ToString();
            //resultLabel.Text = myValue.DayOfWeek.ToString();
            //resultLabel.Text = myValue.DayOfYear.ToString();

            DateTime myNewValue = DateTime.Parse("12/07/1969");
            resultLabel.Text = myNewValue.ToLongDateString();

            DateTime myThirdValue = new DateTime(1969, 12, 7, 6, 35, 0);
        }
    }
}