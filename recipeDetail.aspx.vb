
Partial Class DetailsView
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted
        Dim delRecipe As String = e.Values("Recipe Name").ToString()

        lbl_delrecipe.Text = "The record <span class=deletedrecipe>" & delRecipe & "</span> has been deleted from the database."

        'Response.Write("The record ")
        'Response.Write("<span class=deletedrecipe>")
        'Response.Write(delRecipe)
        'Response.Write("</span> has been deleted from the database.")

        Response.AddHeader("REFRESH", "3;URL=./Recipes.aspx")
        'Response.Write("The record has been deleted from the database.")
    End Sub

    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        Response.Redirect("./Recipes.aspx")

    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lbl_date.Text = DateTime.Now.ToLongDateString

        lbl_copy.Text = DateTime.Now.Year
    End Sub
End Class
