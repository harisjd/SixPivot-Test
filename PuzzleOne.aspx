<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PuzzleOne.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Largest Integer Checker</title>
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
                    Enter Some Integers
                </td>
                <td>
                    <asp:TextBox ID="txtPuzzle" runat="server" Text ="1,3,2,5,7,2" Width="250px" MaxLength="35"></asp:TextBox>
                </td>
                <td>
                    Note: Please input numbers in comma separated format i.e., 1,2,3,4,5,6
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button id="btnResult" runat="server" Text="Get Largest Integer" OnClick="btnResult_Click"/>
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
