using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CalculatorChallenge
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addButton_Click(object sender, EventArgs e)
        {
            string a = Val1.Text;
            string b = Val2.Text;
            double c = double.Parse(a) + double.Parse(b);
            resultLabel.Text = c.ToString();
        }

        protected void multButton_Click(object sender, EventArgs e)
        {
            string g = Val1.Text;
            string h = Val2.Text;
            double i = double.Parse(g) * double.Parse(h);
            resultLabel.Text = i.ToString();
        }

        protected void divButton_Click(object sender, EventArgs e)
        {
            string j = Val1.Text;
            string k = Val2.Text;
            double l = double.Parse(j) / double.Parse(k);
            resultLabel.Text = l.ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string d = Val1.Text;
            string q = Val2.Text;
            double f = double.Parse(d) - double.Parse(q);
            resultLabel.Text = f.ToString();
        }
    }
}