using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CS_008
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void goButton_Click(object sender, EventArgs e)
        {
            /*
            int i;
            i = "3":
            */

            /*upcast works
            int i = 2000000000;
            long j = i;
            */

            /*downcast needs conversion
            long p = 2000000000000;
            int k = (int)p; 
            */

            /*
            double k = 2.5;
            int j = (int)k;

            resultLabel.Text = j.ToString(); 
            */

            /*
            string i = inputTextBox.Text;
            int j = int.Parse(i); //can cause runtime error if input isn't a number
            int k = j + 1;
            resultLabel.Text = k.ToString();
            */

            /*math
            int i = 1;
            int j = 2; 
            int result = i + j;
            */

            /* These all do the same thing
            i = i + 1;
            i += 1;
            i++
            */
            //There is also i--;

            /*multiplication and div happen before + and -, so use parentheses to change precedence
            int myInteger = 5 + 1 * 7;
            resultLabel.Text = myInteger.ToString();
            int myInteger = 5 + 1 * 7;
            resultLabel.Text = myInteger.ToString();
            */

            /*
            double myDouble = 5.5;
            int myInteger = 7;
            double myResult = myDouble + myInteger;

            int mynewResult = (int)myDouble + myInteger;
            resultLabel.Text = myResult.ToString();
            */

            /*This will overflow
            int firstNumber = 2000000000;
            int secondNumber = 2000000000;
            int resultNumber = firstNumber * secondNumber;
            */

            /*This will check for error
            int firstNumber = 2000000000;
            int secondNumber = 2000000000;

            long resultNumber;

            checked
            {
                resultNumber = firstNumber * secondNumber;
            }

            resultLabel.Text = resultNumber.ToString();
            */


        }
}
}
 