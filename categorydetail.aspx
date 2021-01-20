<%@ Page Language="C#" AutoEventWireup="true" CodeFile="categorydetail.aspx.cs" Inherits="categorydetail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body bgcolor="#000000" background="backg.jpeg">
    <form id="form1" runat="server">
    <div>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" align="center" CellPadding="20" CellSpacing="40">
            <ItemTemplate>
                <table style="width: 745px" cellpadding="10" cellspacing="10">
                    <tr>
                        <td style="border-right: red thin solid; border-top: red thin solid; border-left: red thin solid;
                            width: 100px; border-bottom: red thin solid; height: 21px; text-align: center;">
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red" Text="CATEGORY ID :" Width="147px"></asp:Label></td>
                        <td style="border-right: red thin solid; border-top: red thin solid; border-left: red thin solid;
                            width: 100px; border-bottom: red thin solid; height: 21px; text-align: center;">
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Red" Text='<%# Eval("category_id") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px; border-right: yellow thin solid; border-top: yellow thin solid; border-left: yellow thin solid; border-bottom: yellow thin solid; text-align: center;">
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Yellow" Text="CATEGORY NAME :" Width="179px"></asp:Label></td>
                        <td style="width: 100px; border-right: yellow thin solid; border-top: yellow thin solid; border-left: yellow thin solid; border-bottom: yellow thin solid; text-align: center;">
                            <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="Yellow" Text='<%# Eval("category_name") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px; border-right: aqua thin solid; border-top: aqua thin solid; border-left: aqua thin solid; border-bottom: aqua thin solid; text-align: center;">
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Aqua" Text="CATEGORY IMAGE :" Width="186px"></asp:Label></td>
                        <td style="width: 100px; border-right: aqua thin solid; border-top: aqua thin solid; border-left: aqua thin solid; border-bottom: aqua thin solid; text-align: center;">
                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Constantia" Font-Size="1.1em"
                                ForeColor="Aqua" Text="Label"></asp:Label></td>
                    </tr>
                </table>
                <br />
            </ItemTemplate>
        </asp:DataList></div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bgroup28ConnectionString %>"
            SelectCommand="SELECT * FROM [category]"></asp:SqlDataSource>
    </form>
</body>
</html>
