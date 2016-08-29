<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication2._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="id_cate" DataSourceID="SqlDataSource1">
                <Fields>
                    <asp:BoundField DataField="id_cate" HeaderText="id_cate" ReadOnly="True" SortExpression="id_cate" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="parent_category_id" HeaderText="parent_category_id" SortExpression="parent_category_id" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:assignmentConnectionString %>" DeleteCommand="DELETE FROM [category] WHERE [id_cate] = @id_cate" InsertCommand="INSERT INTO [category] ([id_cate], [name], [parent_category_id]) VALUES (@id_cate, @name, @parent_category_id)" SelectCommand="SELECT [id_cate], [name], [parent_category_id] FROM [category]" UpdateCommand="UPDATE [category] SET [name] = @name, [parent_category_id] = @parent_category_id WHERE [id_cate] = @id_cate">
                <DeleteParameters>
                    <asp:Parameter Name="id_cate" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="id_cate" Type="Int32" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="parent_category_id" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="parent_category_id" Type="Int32" />
                    <asp:Parameter Name="id_cate" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </section>
</asp:Content>