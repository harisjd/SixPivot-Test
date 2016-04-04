<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PuzzleTwo.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Palindrome Checker</title>
</head>
<body>
    <form id="form1" runat="server">

          <table cellspacing="0" cellpadding ="0" style="width:100%">
            <tr>
                <td>
                    <a href="PuzzleOne.aspx"> Puzzle One</a>
                </td>
                <td>
                    <a href="PuzzleTwo.aspx"> Puzzle Two</a>
                </td>
                <td>
                    <a href="PuzzleThree.aspx"> Puzzle Three</a>
                </td>
            </tr>
        </table>

    <table>
            <tr>
                <td>
                    Enter enter text
                </td>
                <td>
                    <asp:TextBox ID="txtPuzzle" runat="server" Text ="Never odd or even!" Width="400px" MaxLength="200"></asp:TextBox>
                </td>
                <td>
                    Note: Input text to check whether it is Palindrome
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button id="btnResult" runat="server" Text="Validate" OnClick="btnResult_Click"/>
                </td>
            </tr>

            <tr>
                <td colspan="2">
                    <asp:label ID="lblResult" runat="server"></asp:label>
                </td>
            </tr>

        </table>

    </form>
</body>
</html>
