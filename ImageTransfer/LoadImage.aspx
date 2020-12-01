<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoadImage.aspx.cs" Inherits="ImageTransfer.LoadImage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>File Uploader</title>
</head>
<body>
    <form id="Form1" method="post" runat="server" enctype="multipart/form-data">
        <table border="1" >
            <tr>
                <td align="center" width="800"><h2>Image file to upload to the server</h2>
                </td>
            </tr>
            <tr>
                <td>
                    <input id="FileTpUpload" type="file" runat="server" name="oFile" />
                    <br />
                    <div align="right">
                    <asp:Button ID="btnUpload" type="submit" Text="Upload" runat="server" name="SubmitFile" OnClick="btnUpload_Click"></asp:Button>
                        </div>
                    <asp:Panel ID="frmConfirmation" Visible="False" runat="server">
                        <asp:Label ID="lblUploadResult" runat="server"></asp:Label>
                    </asp:Panel>
                    
                </td>
            </tr>
            <tr>
                <td>
                    <div>
                        <br />
                        <a runat="server" href="~/"><b>Home</b></a>
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                    </div>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
