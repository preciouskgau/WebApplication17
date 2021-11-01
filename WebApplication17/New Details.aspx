<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="New Details.aspx.cs" Inherits="WebApplication17.New_Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="#009999" Text="Enter new login details"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Enter ID number"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="New Username:"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtNewUsername" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="New Password:"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtNewPassword" runat="server"></asp:TextBox>
        <div>
            <br />
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Confirm Password:"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtConfirmPass" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnNewSubmit" runat="server" BackColor="#009999" Font-Bold="True" Font-Size="Medium" Height="42px" Text="RESET" Width="301px" OnClick="btnNewSubmit_Click" />
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" ForeColor="#CC0000" NavigateUrl="~/LOGIN.aspx">&lt;&lt;LOGIN&lt;&lt;</asp:HyperLink>
            <br />
        </div>
    </form>
</body>
</html>
