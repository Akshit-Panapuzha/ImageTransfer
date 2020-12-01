<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ImageTransfer._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1>Image Transfer System</h1>
        <div>
            <p class="btn"><a class="btn btn-default" style="font-family: Arial; font-size: 26px; font-style: normal;" runat="server" href="~/LoadImage">Click here to send the image &raquo;</a></p>
        </div>
        <div>
            <p>
                <span style="font-family: Arial; font-size: 12px; font-style: normal;">This application helps you send images (please configure image types) to remote locations where a dedicated web service can receive it and store it in its secured location for later processing. 
                </span>
            </p>
        </div>
    </div>
</asp:Content>

