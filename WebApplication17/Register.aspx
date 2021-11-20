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
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtRegID" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
        </div>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Enter Name:"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtRegName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtRegName" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Enter Surname:"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtRegSurname" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtRegSurname" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label runat="server" Font-Bold="True" Text="Create Username:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtRegUsername" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtRegUsername" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label runat="server" Font-Bold="True" Text="Password:" ID="Label5"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtRegPassword" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtRegPassword" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtRegPassword" ControlToValidate="txtRegConfirm" ErrorMessage="Password do not match" ForeColor="Red"></asp:CompareValidator>
        <br />
        <asp:Label runat="server" Font-Bold="True" Text="Confirm Password:" ID="Label6"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtRegConfirm" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtRegConfirm" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Enter Email:"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtRegEmail" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtRegEmail" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
            <asp:Button ID="btnSubmit" runat="server" BackColor="#339966" Font-Bold="False" Font-Size="Large" Height="46px" OnClick="btnLogin_Click" Text="SUBMIT" Width="429px" />
            <br />
        <asp:Button ID="Button1" runat="server" BackColor="White" BorderStyle="None" ForeColor="#009999" Height="31px" OnClick="Button1_Click" Text="&lt;&lt;Back To Login Page&lt;&lt;" />
        <br />
            <br />
    </form>
</body>
</html>
