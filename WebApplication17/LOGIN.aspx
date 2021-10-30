<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LOGIN.aspx.cs" Inherits="WebApplication17.LOGIN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="#336699" Text="Enter your details below"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Enter your username: "></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Enter your password: "></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:HyperLink ID="HlForgot" runat="server" Font-Bold="True" Font-Italic="True" Font-Underline="True" ForeColor="#3366FF">Forgot Password</asp:HyperLink>
            <br />
            <br />
            <asp:Button ID="btnLogin2" runat="server" BackColor="#009999" Font-Bold="True" Font-Size="Medium" Height="52px" OnClick="btnLogin2_Click" Text="LOGIN" Width="311px" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
