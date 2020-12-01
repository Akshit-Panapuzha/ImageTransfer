<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ImageTransfer.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Imager Transfer System.</h3>
    <p>This application helps you send images (please configure image types) to remote locations where a dedicated web service can receive it and store it in its secured location for later processing.</p>
</asp:Content>
