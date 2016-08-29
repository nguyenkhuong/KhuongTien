<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication2.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>Liên hệ</h1>
    </hgroup>

    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.455244753623!2d105.79285111450017!3d21.014462993643093!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab582079f2f3%3A0x7fabee03d91ffc06!2zMTI1IFRydW5nIEvDrW5oLCBUcnVuZyBIb8OgLCBD4bqndSBHaeG6pXksIEjDoCBO4buZaSwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1471093566652" width="400" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
    <div class="form-group">
      <label for="usr">Name:</label>
      <input type="text" class="form-control" id="usr">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd">
    </div>
    <div class="form-group">
      <label for="comment">Comment:</label>
      <textarea class="form-control" rows="5" id="comment"></textarea>
    </div>
    <div style="width: 100px; height: 250px; background-color: #f00"></div>
</asp:Content>