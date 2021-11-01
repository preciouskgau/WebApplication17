<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication17.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="#009999" Text="REGISTER YOUR ACCOUNT"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblRegError" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#CC0000"></asp:Label>
            <br />
            <br />
        <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Enter ID Number:"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtRegID" runat="server"></asp:TextBox>
            <br />
            <br />
        </div>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Enter Name:"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtRegName" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Enter Surname:"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtRegSurname" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label runat="server" Font-Bold="True" Text="Create Username:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtRegUsername" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label runat="server" Font-Bold="True" Text="Password:" ID="Label5"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtRegPassword" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label runat="server" Font-Bold="True" Text="Confirm Password:" ID="Label6"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtRegConfirm" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Enter Email:"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtRegEmail" runat="server"></asp:TextBox>
        <br />
        <br />
            <asp:Button ID="btnSubmit" runat="server" BackColor="#339966" Font-Bold="False" Font-Size="Large" Height="46px" OnClick="btnLogin_Click" Text="SUBMIT" Width="429px" />
            <br />
    </form>
</body>
</html>
