<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MoreDetails.aspx.cs" Inherits="WebApplication17.MoreDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("image")%>' Height="233px" Width="151px" />
        <div>
            <asp:Button ID="btnView" runat="server" Text="View" Width="88px" OnClick="btnView_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnDetails" runat="server" Text="Details" Width="80px" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnDelete" runat="server" Text="Delete" Width="74px" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnShare" runat="server" Text="Share" Width="77px" />
            <br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
        </div>
    </form>
</body>
</html>
