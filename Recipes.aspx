<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Recipes.aspx.vb" Inherits="GridView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="./css/style.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CS_RecipeWebSite %>" SelectCommand="SELECT * FROM [Table]">
        </asp:SqlDataSource>
        <br />
        <br />


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
        <asp:GridView
             ID="GridView1" 
            runat="server" 
            AllowPaging="True" 
            AllowSorting="True" 
            AutoGenerateColumns="False" 
            DataKeyNames="ID" 
            DataSourceID="SqlDataSource1"
            gridlines="none"
            CssClass="cssgridview"
            >
            <Columns>
                <asp:BoundField DataField="Recipe_Name" HeaderText="Recipe_Name" SortExpression="Recipe_Name" />
                <asp:BoundField DataField="Submitted_By" HeaderText="Submitted_By" SortExpression="Submitted_By" />
                <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="recipeDetail.aspx?ID={0}" Text="View Details" />
            </Columns>
        </asp:GridView>

        </div>
            <div id="footer">
                Copyright &copy;<asp:Label ID="lbl_copy" runat="server" Text=""></asp:Label>Tim Zhang
            </div>
        </div>
    </div>
    </form>
</body>
</html>
