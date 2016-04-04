using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
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
        PuzzleTwo objPuzzleTwo = new PuzzleTwo();
        bool isPalindrome = objPuzzleTwo.IsPalindrome(txtPuzzle.Text);
        lblResult.Text = "The given text is " + (isPalindrome == true ? "<b> Palindrome </b>" : "<b>Not Palindrome</b>");


    }

    public interface IPuzzleTwo
    {
        bool IsPalindrome(string str);
    }
    
    public class PuzzleTwo : IPuzzleTwo
    {
        public bool IsPalindrome(string str)
        {
            bool isPalindrome = false;

            StringBuilder sb = new StringBuilder();
            StringBuilder sbReversed = new StringBuilder();

            foreach (char c in str)
            {
                if ((c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z'))
                {
                    sb.Append(c);
                }
            }

            IEnumerable<char> reversedArray = sb.ToString().Reverse();

            foreach (char c in reversedArray)
            {
                sbReversed.Append(c);
            }


            if (sb.ToString().ToLower() == sbReversed.ToString().ToLower())
            {
                isPalindrome = true;
            }

            return isPalindrome;
        }    
    }

}