
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lbl_date.Text = DateTime.Now.ToLongDateString

        lbl_copy.Text = DateTime.Now.Year
    End Sub
End Class
