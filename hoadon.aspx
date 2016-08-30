<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication2._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="id_hoa_don" DataSourceID="SqlDataSource1">
                <Fields>
                    <asp:BoundField DataField="id_hoa_don" HeaderText="id_hoa_don" ReadOnly="True" SortExpression="id_hoa_don" />
                    <asp:BoundField DataField="purchase_no" HeaderText="purchase_no" SortExpression="purchase_no" />
                    <asp:BoundField DataField="id_khach_hang" HeaderText="id_khach_hang" SortExpression="id_khach_hang" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:assignmentConnectionString %>" DeleteCommand="DELETE FROM [hoa_don] WHERE [id_hoa_don] = @id_hoa_don" InsertCommand="INSERT INTO [hoa_don] ([id_hoa_don], [purchase_no], [id_khach_hang]) VALUES (@id_hoa_don, @purchase_no, @id_khach_hang)" SelectCommand="SELECT [id_hoa_don], [purchase_no], [id_khach_hang] FROM [hoa_don]" UpdateCommand="UPDATE [hoa_don] SET [purchase_no] = @purchase_no, [id_khach_hang] = @id_khach_hang WHERE [id_hoa_don] = @id_hoa_don">
                <DeleteParameters>
                    <asp:Parameter Name="id_hoa_don" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="id_hoa_don" Type="Int32" />
                    <asp:Parameter Name="purchase_no" Type="String" />
                    <asp:Parameter Name="id_khach_hang" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="purchase_no" Type="String" />
                    <asp:Parameter Name="id_khach_hang" Type="Int32" />
                    <asp:Parameter Name="id_hoa_don" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </section>
</asp:Content>