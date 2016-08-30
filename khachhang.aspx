<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication2._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="id_khach_hang" DataSourceID="SqlDataSource1">
                <Fields>
                    <asp:BoundField DataField="id_khach_hang" HeaderText="id_khach_hang" ReadOnly="True" SortExpression="id_khach_hang" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:assignmentConnectionString %>" DeleteCommand="DELETE FROM [khach_hang] WHERE [id_khach_hang] = @id_khach_hang" InsertCommand="INSERT INTO [khach_hang] ([id_khach_hang], [name], [email]) VALUES (@id_khach_hang, @name, @email)" SelectCommand="SELECT [id_khach_hang], [name], [email] FROM [khach_hang]" UpdateCommand="UPDATE [khach_hang] SET [name] = @name, [email] = @email WHERE [id_khach_hang] = @id_khach_hang">
                <DeleteParameters>
                    <asp:Parameter Name="id_khach_hang" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="id_khach_hang" Type="Int32" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="id_khach_hang" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </section>
</asp:Content>