using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnResult_Click(object sender, EventArgs e)
    {
        PuzzleOne objPuzzle = new PuzzleOne();
        Int32 largestValue = 0;
        largestValue = objPuzzle.FindLargestInt(txtPuzzle.Text); //Prints 7 on the page
        //largetValue = objPuzzle.FindLargestInt("1,4,2,8,22,7,192,4,22,6,33,6,8"); //Prints 192 on the page
        lblResult.Text = "Larget integer is: <b> " + largestValue + " </b>";

    }

    public interface IPuzzleOne
    {
        Int32 FindLargestInt(string integerCSV);
    }


    public class PuzzleOne : IPuzzleOne
    {
        public Int32 FindLargestInt(string integerCSV)
        {
            Int32 largestInt = 0;

            string[] splitArray = integerCSV.Split(',');

        
            for (int i = 0; i < splitArray.Length; i++)
            {
                if (i == 0)
                {
                    largestInt = Convert.ToInt32(splitArray[0].ToString());
                }
                else
                {
                    if (largestInt < Convert.ToInt32(splitArray[i]))
                    {
                        largestInt = Convert.ToInt32(splitArray[i]);
                    }
                }            
            }

            return largestInt;
        }
    }

}