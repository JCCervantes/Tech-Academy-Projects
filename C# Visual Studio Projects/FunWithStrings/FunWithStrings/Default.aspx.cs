using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FunWithStrings
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //1. Reverse my name
            string name = "Julia Cervantes";
            for (int i = 14; i >= 0; i--)
            //OR for (int i = name.Length -1; i >= 0; i--)
            {
                resultLabel.Text += name[i];
            }

            //2. Reverse this sequence: string names = "Luke,Leia,Han,Chewbacca";
            string names = "Luke,Leia,Han,Chewbacca";

            string[] starwars = names.Split(',');
            string result = "";
            for (int i = starwars.Length - 1; i >= 0; i--)
            {
                result += starwars[i] + ",";
            }
            result = result.Remove(result.Length - 1, 1);
            resultLabel.Text = result;


            // 3. Use the sequence to create ascii art:
            // *****luke*****
            // *****leia*****
            // *****han******
            // **Chewbacca***

            string[] starwars2 = names.Split(',');
            string result2 = "";
            for (int i = 0; i < starwars2.Length; i++)
            {
                int padLeft = (14 - starwars2[i].Length) / 2;
                string temp = starwars2[i].PadLeft(starwars2[i].Length + padLeft, '*');
                result2 += temp.PadRight(14, '*');
                result2 += "<br />";
            }
            resultLabel.Text = result2;


            // 4. Solve this puzzle:

            string puzzle = "NOW IS ZHEremove-me ZIME FOR ALL GOOD MEN ZO COME ZO ZHE AID OF ZHEIR COUNZRY.";
            string replaceZ = puzzle.Replace("Z", "T");
            string remove = replaceZ.Remove(10, 9);
            string lower = remove.ToLower();
            string solved = lower.Replace("now", "Now");
            resultLabel.Text = solved;


            //string removeMe = "remove-me"
            //int index = puzzle.IndexOf(removeMe);
            //puzzle = puzzle.Remove(index, removeMe.Length);
            //puzzle = puzzle.ToLower();
            //puzzle = puzzle.Replace('z', 't');
            //puzzle = puzzle.Remove(0, 1);
            //puzzle = puzzle.Insert(0, "N");
        }
    }
}