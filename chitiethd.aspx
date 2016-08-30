<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication2._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="id_chi_tiet" DataSourceID="SqlDataSource1">
                <Fields>
                    <asp:BoundField DataField="id_chi_tiet" HeaderText="id_chi_tiet" ReadOnly="True" SortExpression="id_chi_tiet" />
                    <asp:BoundField DataField="id_hoa_don" HeaderText="id_hoa_don" SortExpression="id_hoa_don" />
                    <asp:BoundField DataField="id_pro" HeaderText="id_pro" SortExpression="id_pro" />
                    <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:assignmentConnectionString %>" DeleteCommand="DELETE FROM [chi_tiet] WHERE [id_chi_tiet] = @id_chi_tiet" InsertCommand="INSERT INTO [chi_tiet] ([id_chi_tiet], [id_hoa_don], [id_pro], [amount]) VALUES (@id_chi_tiet, @id_hoa_don, @id_pro, @amount)" SelectCommand="SELECT [id_chi_tiet], [id_hoa_don], [id_pro], [amount] FROM [chi_tiet]" UpdateCommand="UPDATE [chi_tiet] SET [id_hoa_don] = @id_hoa_don, [id_pro] = @id_pro, [amount] = @amount WHERE [id_chi_tiet] = @id_chi_tiet">
                <DeleteParameters>
                    <asp:Parameter Name="id_chi_tiet" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="id_chi_tiet" Type="Int32" />
                    <asp:Parameter Name="id_hoa_don" Type="Int32" />
                    <asp:Parameter Name="id_pro" Type="Int32" />
                    <asp:Parameter Name="amount" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="id_hoa_don" Type="Int32" />
                    <asp:Parameter Name="id_pro" Type="Int32" />
                    <asp:Parameter Name="amount" Type="Int32" />
                    <asp:Parameter Name="id_chi_tiet" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        <div style="background-color: red; width: 100%; height: 100px;"></div>
    </section>
</asp:Content>