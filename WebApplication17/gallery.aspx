<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gallery.aspx.cs" Inherits="WebApplication17.gallery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Text="MANAGE YOUR GALLERY"></asp:Label>
        <br />
        <div>
            <asp:Label ID="Label2" runat="server" Font-Size="Large" Text="Upload image"></asp:Label>
&nbsp;<asp:FileUpload ID="FileUpload1" runat="server" />
        </div>
        <p>
            <asp:Label ID="lblUpload" runat="server" Font-Size="Large"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnUpload" runat="server" OnClick="btnUpload_Click" Text="Upload" />
        &nbsp;</p>
        
        <p>
            &nbsp;<asp:DataList ID="DataList1" runat="server" RepeatColumns="5" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <table>
                        <tr>
                            <td><asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("Image")%>' Height="150" Width="200" /></td>
                        </tr>
                    </table>
                   
                </ItemTemplate>
            </asp:DataList>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
