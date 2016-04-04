<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PuzzleThree.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Drawing Shapes</title>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
    <script src="js/jquery-1.12.2.min.js"></script>
    <script src="js/jquery-ui.js"></script>
    <script src="js/puzzle.js"></script>

    <style type="text/css">
        .ui-menu {
            width: 200px;
        }

        .ui-widget-header {
            padding: 0.2em;
        }
    </style>
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
                
        <p>
            <b>
                Note: THE SHAPES ARE DRAWN JUST FOR TWO ITEMS Circle and Rectangle. I would have completed the whole exercise but due to abundance of my office work i didn't had that much time.  
                None the less all these solutions can be developed in a lot of other ways and with more sophistication, but still i think you would be able to see almost all aspects of the 
                code (front end and back end) in these examples
            </b>
        </p>
        <br />
        <br />
        <br />


        <table>
            <tr>

                <td>

                    <ul id="menu">
                       
                    </ul>

                </td>
                <td>
                    <canvas id="myCanvas" width="578" height="200"></canvas>

                </td>
            </tr>

        </table>


    </form>
</body>
</html>
