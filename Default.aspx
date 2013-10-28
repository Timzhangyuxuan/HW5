<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="./css/style.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="container">

            <div id="menu">
                <ul id="navlist">
                    <li><a href="./Default.aspx">Home</a></li>
                    <li><a href="./Recipes.aspx">Recipes</a></li>
                    <li><a href="./newRecipe.aspx">Add a New Recipe</a></li>
                </ul>
            </div>
            <div id="date">
                <asp:Label ID="lbl_date" runat="server" Text=""></asp:Label>
            </div>

            <div id="content">

                <h1 class="centered">Welcome to the Recipe Database.</h1>
                
                <p class="centered">
                    <img alt="Recipe" title="Recipe" src="./Images/recipe.gif" />
                </p>
                <br/><br/>
                  
            
            </div>

            <div id="footer">
                Copyright &copy;<asp:Label ID="lbl_copy" runat="server" Text=""></asp:Label>Tim Zhang
            </div>
        </div>
    </div>
    </form>
</body>
</html>
