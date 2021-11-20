﻿<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="gallery.aspx.cs" Inherits="WebApplication17.gallery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Text="MANAGE YOUR GALLERY"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Text="UPLOAD PANEL"></asp:Label>
        <br />
&nbsp;<asp:Button ID="btnView" runat="server" OnClick="btnView_Click" Text="View all images in the gallery" Width="329px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Font-Size="Large" Text="Upload image"></asp:Label>
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        <br />
            <asp:Label ID="llj" runat="server" Font-Size="Large">Enter the image name/url:</asp:Label>
        <asp:TextBox ID="txtview" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblUpload" runat="server" Font-Size="Large"></asp:Label>
            <asp:Button ID="btnUpload" runat="server" OnClick="btnUpload_Click" Text="Upload" Width="85px" />
        <br />
            <asp:Label ID="lbldelete" runat="server" Font-Size="Large"></asp:Label>
        <br />
        <asp:Button ID="btnView2" runat="server" OnClick="btnView2_Click" Text="View" Width="67px" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnDowload" runat="server" OnClick="btnDowload_Click" Text="Download" />
        <p style="margin-left: 0px">
            &nbsp; <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" RepeatDirection="Horizontal" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
              
                <ItemTemplate>
                    <table>
                        <tr>
                            <td>
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("Image") %>' CommandName="view" Height="158px" Width="187px" OnClick="ImageButton1_Click" />
                                <asp:Button ID="btndelete2" runat="server"  ImageUrl='<%# Eval("Image") %>' Text="Button" />
                            </td>
                        </tr>
                    </table>
                   
                </ItemTemplate>
               
            </asp:DataList>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;&nbsp;
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        
        <p>
            <asp:Button ID="btnDeleteAll" runat="server" OnClick="btnDeleteAll_Click" Text="Delete All images" Width="328px" />
        </p>
    </form>
</body>
</html>
