<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CS_Recipes %>" DeleteCommand="DELETE FROM [Recipes] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Recipes] ([Name], [SubmittedBy], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Ingredient5], [Preparation], [Notes]) VALUES (@Name, @SubmittedBy, @Ingredient1, @Ingredient2, @Ingredient3, @Ingredient4, @Ingredient5, @Preparation, @Notes)" SelectCommand="SELECT * FROM [Recipes]" UpdateCommand="UPDATE [Recipes] SET [Name] = @Name, [SubmittedBy] = @SubmittedBy, [Ingredient1] = @Ingredient1, [Ingredient2] = @Ingredient2, [Ingredient3] = @Ingredient3, [Ingredient4] = @Ingredient4, [Ingredient5] = @Ingredient5, [Preparation] = @Preparation, [Notes] = @Notes WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="SubmittedBy" Type="String" />
        <asp:Parameter Name="Ingredient1" Type="String" />
        <asp:Parameter Name="Ingredient2" Type="String" />
        <asp:Parameter Name="Ingredient3" Type="String" />
        <asp:Parameter Name="Ingredient4" Type="String" />
        <asp:Parameter Name="Ingredient5" Type="String" />
        <asp:Parameter Name="Preparation" Type="String" />
        <asp:Parameter Name="Notes" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="SubmittedBy" Type="String" />
        <asp:Parameter Name="Ingredient1" Type="String" />
        <asp:Parameter Name="Ingredient2" Type="String" />
        <asp:Parameter Name="Ingredient3" Type="String" />
        <asp:Parameter Name="Ingredient4" Type="String" />
        <asp:Parameter Name="Ingredient5" Type="String" />
        <asp:Parameter Name="Preparation" Type="String" />
        <asp:Parameter Name="Notes" Type="String" />
        <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" 
        gridlines="None" CssClass="gridview">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="SubmittedBy" HeaderText="Submitted By" SortExpression="SubmittedBy" />
            <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="Recipe.aspx?Id={0}" Text="Select" />
        </Columns>
    </asp:GridView>
</asp:Content>

