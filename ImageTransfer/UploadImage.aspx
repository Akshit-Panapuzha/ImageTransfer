<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UploadImage.aspx.cs" Inherits="ImageTransfer._UploadImage" %>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Upload file</title>
</head>

<body style="height: 49px">
    <div style="border: solid; background-color: lightgray">
        <a runat="server" href="~/">Home</a>
        <h1>Please upload the image file</h1>
        <form id="Form1" method="post" runat="server" enctype="multipart/form-data">
            Image file to upload to the server:
        <input id="FileTpUpload" type="file" runat="server" name="oFile" />
            <asp:Button ID="btnUpload" type="submit" Text="Upload" runat="server" name="SubmitFile"></asp:Button>
            <asp:Panel ID="frmConfirmation" Visible="False" runat="server">
                <asp:Label ID="lblUploadResult" runat="server"></asp:Label>
            </asp:Panel>
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </form>
        <br />
    </div>
</body>
</html>
