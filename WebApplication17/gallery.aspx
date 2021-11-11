<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gallery.aspx.cs" Inherits="WebApplication17.gallery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Text="MANAGE YOUR GALLERY"></asp:Label>
        <asp:DataList ID="DataList1" runat="server" BackColor="#FFFFCC">
        </asp:DataList>
        <br />
        <div>
            <asp:Label ID="Label2" runat="server" Font-Size="Large" Text="Upload image"></asp:Label>
&nbsp;<asp:FileUpload ID="FileUpload1" runat="server" />
        </div>
        <p>
            <asp:Label ID="lblUpload" runat="server" Font-Size="Large"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnUpload" runat="server" OnClick="btnUpload_Click" Text="Upload" />
        </p>
        <p>
            <asp:CheckBox ID="CheckBox1" runat="server" />
        </p>
    </form>
</body>
</html>
