<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication2._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="id_pro" DataSourceID="SqlDataSource1">
                <Fields>
                    <asp:BoundField DataField="id_pro" HeaderText="id_pro" ReadOnly="True" SortExpression="id_pro" />
                    <asp:BoundField DataField="category_id" HeaderText="category_id" SortExpression="category_id" />
                    <asp:BoundField DataField="sku" HeaderText="sku" SortExpression="sku" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                    <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                    <asp:BoundField DataField="img" HeaderText="img" SortExpression="img" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:assignmentConnectionString %>" DeleteCommand="DELETE FROM [product] WHERE [id_pro] = @id_pro" InsertCommand="INSERT INTO [product] ([id_pro], [category_id], [sku], [name], [price], [description], [img]) VALUES (@id_pro, @category_id, @sku, @name, @price, @description, @img)" SelectCommand="SELECT [id_pro], [category_id], [sku], [name], [price], [description], [img] FROM [product]" UpdateCommand="UPDATE [product] SET [category_id] = @category_id, [sku] = @sku, [name] = @name, [price] = @price, [description] = @description, [img] = @img WHERE [id_pro] = @id_pro">
                <DeleteParameters>
                    <asp:Parameter Name="id_pro" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="id_pro" Type="Int32" />
                    <asp:Parameter Name="category_id" Type="Int32" />
                    <asp:Parameter Name="sku" Type="String" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="price" Type="Decimal" />
                    <asp:Parameter Name="description" Type="String" />
                    <asp:Parameter Name="img" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="category_id" Type="Int32" />
                    <asp:Parameter Name="sku" Type="String" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="price" Type="Decimal" />
                    <asp:Parameter Name="description" Type="String" />
                    <asp:Parameter Name="img" Type="String" />
                    <asp:Parameter Name="id_pro" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </section>
</asp:Content>