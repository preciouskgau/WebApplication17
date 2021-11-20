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
        <asp:Label ID="lblAlert" runat="server" ForeColor="#339933"></asp:Label>
        <br />
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Enter ID number"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtID" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="New Username:"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtNewUsername" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNewUsername" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="New Password:"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtNewPassword" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtNewPassword" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
        <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtNewPassword" ControlToValidate="txtConfirmPass" ErrorMessage="Password does not match!" ForeColor="Red"></asp:CompareValidator>
            <br />
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Confirm Password:"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtConfirmPass" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtConfirmPass" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button ID="btnNewSubmit" runat="server" BackColor="#009999" Font-Bold="True" Font-Size="Medium" Height="42px" Text="RESET" Width="301px" OnClick="btnNewSubmit_Click" />
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="White" BorderStyle="None" Font-Size="Medium" ForeColor="#006666" OnClick="Button1_Click" Text="&lt;&lt;Back To Login&lt;&lt;" />
            <br />
        </div>
    </form>
</body>
</html>
