<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Recipe.aspx.vb" Inherits="Recipe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="detailsview">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CS_Recipes %>" DeleteCommand="DELETE FROM [Recipes] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Recipes] ([Name], [SubmittedBy], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Ingredient5], [Preparation], [Notes]) VALUES (@Name, @SubmittedBy, @Ingredient1, @Ingredient2, @Ingredient3, @Ingredient4, @Ingredient5, @Preparation, @Notes)" SelectCommand="SELECT * FROM [Recipes] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Recipes] SET [Name] = @Name, [SubmittedBy] = @SubmittedBy, [Ingredient1] = @Ingredient1, [Ingredient2] = @Ingredient2, [Ingredient3] = @Ingredient3, [Ingredient4] = @Ingredient4, [Ingredient5] = @Ingredient5, [Preparation] = @Preparation, [Notes] = @Notes WHERE [Id] = @Id">
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
    <SelectParameters>
        <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
    </SelectParameters>
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
<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id" 
    DataSourceID="SqlDataSource1" CssClass="detailsview" HeaderText="Recipe Details"
    HeaderStyle-CssClass="header" FieldHeaderStyle-CssClass="fieldheader" itemstyle-cssclass="item" CommandRowStyle-CssClass="command">
<CommandRowStyle CssClass="command"></CommandRowStyle>

<FieldHeaderStyle CssClass="fieldheader"></FieldHeaderStyle>
    <Fields>
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="SubmittedBy" HeaderText="Submitted By" SortExpression="SubmittedBy" />
        <asp:BoundField DataField="Ingredient1" HeaderText="Ingredient #1" SortExpression="Ingredient1" />
        <asp:BoundField DataField="Ingredient2" HeaderText="Ingredient #2" SortExpression="Ingredient2" />
        <asp:BoundField DataField="Ingredient3" HeaderText="Ingredient #3" SortExpression="Ingredient3" />
        <asp:BoundField DataField="Ingredient4" HeaderText="Ingredient #4" SortExpression="Ingredient4" />
        <asp:BoundField DataField="Ingredient5" HeaderText="Ingredient #5" SortExpression="Ingredient5" />
        <asp:BoundField DataField="Preparation" HeaderText="Preparation" SortExpression="Preparation" />
        <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
    </Fields>

<HeaderStyle CssClass="header"></HeaderStyle>
</asp:DetailsView>
</div>
</asp:Content>

