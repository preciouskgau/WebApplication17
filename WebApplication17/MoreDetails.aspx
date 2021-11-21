<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MoreDetails.aspx.cs" Inherits="WebApplication17.MoreDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="image" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="margin-top: 15px">
                <Columns>
                    <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="200px" Width="250px"  ImageUrl='<%# Eval("Image") %>'/>

                        </ItemTemplate>
                    </asp:TemplateField>
  
                    <asp:BoundField  DataField="Id" HeaderText="ID"/>
                    <asp:BoundField  DataField="upload Date" HeaderText="Date Of Upload"/>
                    <asp:HyperLinkField DataTextField="image" HeaderText="Image Url" DataNavigateUrlFields="image" />
                    <asp:TemplateField HeaderText="Download">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server"  Text="Download Link" OnClick="LinkButton1_Click"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField  HeaderText="Metadata">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton2" runat="server" Text="Metadata Link" OnClick="LinkButton2_Click"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                </Columns>
            </asp:GridView>
            <br />
            &nbsp;<asp:Label ID="Label2" runat="server" Text="Brand name of the device that took the image:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtFrom" runat="server"></asp:TextBox>
            <br />
            &nbsp;<asp:Label ID="Label1" runat="server" Text="Date the image was taken:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            &nbsp;<asp:Label ID="Label3" runat="server" Text="Model of the device that took the image:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtTo" runat="server"></asp:TextBox>
            <br />
        </div>
    </form>
</body>
</html>
