<%@ Page Language="C#" AutoEventWireup="true" CodeFile="itemdetail.aspx.cs" Inherits="itemdetail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link rel="Stylesheet" href="tabledetail.css" />
</head>
<body bgcolor="#000000" background="backg.jpeg">
    <form id="form1" runat="server">
     <div>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="item_id" DataSourceID="SqlDataSource1" align="center" CssClass="tabledetail" BorderColor="Transparent" CellPadding="20" CellSpacing="40">
            <ItemTemplate>
                <table style="width: 617px" cellpadding="10" cellspacing="10">
                    <tr>
                        <td style="border-right: red thin double; border-top: red thin double; border-left: red thin double;
                            width: 100px; border-bottom: red thin double; height: 21px; text-align: center; border-radius:100%;">
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red" Text="ITEM ID" CssClass="input"></asp:Label></td>
                        <td style="border-right: red thin double; border-top: red thin double; border-left: red thin double;
                            width: 100px; border-bottom: red thin double; height: 21px; text-align: center;border-radius:100%;">
                            <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="Red" Text='<%# Eval("item_id") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 21px; border-right: #ffff66 thin solid; border-top: #ffff66 thin solid; border-left: #ffff66 thin solid; border-bottom: #ffff66 thin solid; text-align: center;border-radius:100%;">
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Yellow" Text="ITEM NAME" ></asp:Label></td>
                        <td style="width: 100px; height: 21px; border-right: yellow thin solid; border-top: yellow thin solid;border-left: yellow thin solid; border-bottom: yellow thin solid; text-align: center;border-radius:100%;">
                            <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="Yellow" Text='<%# Eval("item_name") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 21px; border-right: yellow thin solid; border-top: yellow thin solid;border-left: yellow thin solid; border-bottom: yellow thin solid; text-align: center;border-radius:100%;">
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Yellow" Text="CATEGORY"></asp:Label></td>
                        <td style="width: 100px; height: 21px; border-right: yellow thin solid; border-top: yellow thin solid; border-left: yellow thin solid; border-bottom: yellow thin solid; text-align: center;border-radius:100%;">
                            <asp:Label ID="Label10" runat="server" Font-Bold="True" ForeColor="Yellow" Text='<%# Eval("category") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px; border-right: aqua thin solid; border-top: aqua thin solid; border-left: aqua thin solid; border-bottom: aqua thin solid; text-align: center;border-radius:100%;">
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Aqua" Text="PRICE"></asp:Label></td>
                        <td style="width: 100px; border-right: aqua thin solid; border-top: aqua thin solid; border-left: aqua thin solid; border-bottom: aqua thin solid; text-align: center;border-radius:100%;">
                            <asp:Label ID="Label11" runat="server" Font-Bold="True" ForeColor="Aqua" Text='<%# Eval("price") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px; border-right: aqua thin solid; border-top: aqua thin solid; border-left: aqua thin solid; border-bottom: aqua thin solid; text-align: center;;">
                            <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="Aqua" Text="DESCRIPTION"></asp:Label></td>
                        <td style="width: 100px; border-right: aqua thin solid; border-top: aqua thin solid; border-left: aqua thin solid; border-bottom: aqua thin solid; text-align: center;">
                            <asp:Label ID="Label12" runat="server" Font-Bold="True" ForeColor="Aqua" Text='<%# Eval("description") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px; border-right: lime thin solid; border-top: lime thin solid; border-left: lime thin solid; border-bottom: lime thin solid; text-align: center;border-radius:100%;">
                            <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="Lime" Text="QUANTITY"></asp:Label></td>
                        <td style="width: 100px; border-right: lime thin solid; border-top: lime thin solid; border-left: lime thin solid; border-bottom: lime thin solid; text-align: center;border-radius:100%;">
                            <asp:Label ID="Label13" runat="server" Font-Bold="True" ForeColor="Lime" Text='<%# Eval("qty") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px; border-right: lime thin solid; border-top: lime thin solid; border-left: lime thin solid; border-bottom: lime thin solid; text-align: center;">
                            <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="Lime" Text="ITEM IMAGE"></asp:Label></td>
                        <td style="width: 100px; border-right: lime thin solid; border-top: lime thin solid; border-left: lime thin solid; border-bottom: lime thin solid; text-align: center;">
                            <asp:Image ID="Image1" runat="server" ForeColor="White" Height="100px" ImageUrl='<%# Eval("item_image") %>'
                                Width="100px" /></td>
                    </tr>
                </table>
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bgroup28ConnectionString %>"
            SelectCommand="SELECT * FROM [item]"></asp:SqlDataSource>
    
    
    </div>
    </form>
</body>
</html>
