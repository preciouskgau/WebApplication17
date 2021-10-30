<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WELCOME.aspx.cs" Inherits="WebApplication17.WELCOME" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="#336699" Text="PHOTO GALLERY"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#0099CC" Text="Already have an account"></asp:Label>
            <br />
            <asp:Button ID="btnLogin" runat="server" BackColor="#339966" Font-Bold="False" Font-Size="Large" Height="46px" OnClick="btnLogin_Click" Text="LOGIN" Width="298px" />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#0099CC" Text="New to photo gallery"></asp:Label>
        </div>
        <asp:Button ID="btnRegister" runat="server" BackColor="#006666" Font-Size="Large" Height="45px" OnClick="btnRegister_Click" Text="SIGN_UP" Width="298px" />
        <br />
        <br />
        <asp:HyperLink ID="HlExit" runat="server" Font-Bold="True" Font-Italic="True" Font-Underline="True" ForeColor="#CC0000">Exit Page</asp:HyperLink>
    </form>
</body>
</html>
