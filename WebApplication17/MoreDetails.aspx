<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MoreDetails.aspx.cs" Inherits="WebApplication17.MoreDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="image" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="200px" Width="250px"  ImageUrl='<%# Eval("Image") %>'/>

                        </ItemTemplate>
                    </asp:TemplateField>
  
                    <asp:BoundField  DataField="Id" HeaderText="ID"/>
                    <asp:BoundField  DataField="upload Date" HeaderText="Date Of Upload"/>
                    <asp:HyperLinkField DataTextField="image" HeaderText="Image Url" DataNavigateUrlFields="image" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" HeaderText="Download" Text="Download Link" OnClick="LinkButton1_Click"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton2" runat="server" HeaderText="Delete" Text="Delete Image Link" OnClick="LinkButton2_Click"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                </Columns>
            </asp:GridView>
            <br />
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
