
Partial Class Recipe
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted
        Dim delRecipe As String = e.Values("Name").ToString
        Response.Write("The recipe ")
        Response.Write("<span class=highlight>")
        Response.Write(delRecipe)
        Response.Write("</span> has been added to the database!")
        Response.AddHeader("REFRESH", "3;URL=./default.aspx")
    End Sub


End Class
