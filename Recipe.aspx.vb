
Partial Class Recipe
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted
        Dim delRecipe As String = e.Values("Name").ToString
        Response.Write("The recipe ")
        Response.Write("<span class=highlight>")
        Response.Write(delRecipe)
        Response.Write("</span> has been deleted from the database!")
        Response.AddHeader("REFRESH", "3;URL=./default.aspx")
    End Sub

    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        Response.Redirect("./Default.aspx")
    End Sub


End Class
