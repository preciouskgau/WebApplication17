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
            <asp:Label ID="lblError" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#CC0000"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Enter your username: "></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtUsername" runat="server" OnTextChanged="txtUsername_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Enter your password: "></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:HyperLink ID="HlForgot" runat="server" Font-Bold="True" Font-Italic="True" Font-Underline="True" ForeColor="#3366FF" NavigateUrl="~/New Details.aspx">Forgot Password</asp:HyperLink>
            <br />
            <br />
            <asp:Button ID="btnLogin2" runat="server" BackColor="#009999" Font-Bold="True" Font-Size="Medium" Height="52px" OnClick="btnLogin2_Click" Text="LOGIN" Width="311px" />
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="White" BorderStyle="None" Font-Size="Large" ForeColor="Red" Height="41px" Text="Exit" Width="79px" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
