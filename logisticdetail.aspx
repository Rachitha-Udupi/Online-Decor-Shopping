<%@ Page Language="C#" AutoEventWireup="true" CodeFile="logisticdetail.aspx.cs" Inherits="logisticdetail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body bgcolor="#000000" background="lgbck.jpg">
    <form id="form1" runat="server">
    <div>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" align="center" CellPadding="20" CellSpacing="40">
            <ItemTemplate>
                <table style="border-right: black thin solid; border-top: black thin solid; border-left: black thin solid;
                    width: 672px; border-bottom: black thin solid" cellpadding="10" cellspacing="10">
                    <tr>
                        <td style="border-right: blue thin solid; border-top: blue thin solid; border-left: blue thin solid;
                            width: 100px; border-bottom: blue thin solid; height: 33px; text-align: center;">
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red" Text="LOGISTIC ID"></asp:Label></td>
                        <td style="border-right: blue thin solid; border-top: blue thin solid; border-left: blue thin solid;
                            width: 100px; border-bottom: blue thin solid; height: 33px; text-align: center;">
                            <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="Red" Text='<%# Eval("log_id") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px; border-right: blue thin solid; border-top: blue thin solid; border-left: blue thin solid; border-bottom: blue thin solid; text-align: center;">
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Yellow" Text="USERNAME"></asp:Label></td>
                        <td style="width: 100px; border-right: blue thin solid; border-top: blue thin solid; border-left: blue thin solid; border-bottom: blue thin solid; text-align: center;">
                            <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="Yellow" Text='<%# Eval("username") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 21px; border-right: blue thin solid; border-top: blue thin solid; border-left: blue thin solid; border-bottom: blue thin solid; text-align: center;">
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Aqua" Text="PASSWORD"></asp:Label>
                        </td>
                        <td style="width: 100px; height: 21px; border-right: blue thin solid; border-top: blue thin solid; border-left: blue thin solid; border-bottom: blue thin solid; text-align: center;">
                            <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="Aqua" Text='<%# Eval("password") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px; border-right: blue thin solid; border-top: blue thin solid; border-left: blue thin solid; border-bottom: blue thin solid; text-align: center; height: 43px;">
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Lime" Text="PLACE"></asp:Label></td>
                        <td style="width: 100px; border-right: blue thin solid; border-top: blue thin solid; border-left: blue thin solid; border-bottom: blue thin solid; text-align: center; height: 43px;">
                            <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="Lime" Text='<%# Eval("place") %>'></asp:Label></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList></div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bgroup28ConnectionString %>"
            SelectCommand="SELECT * FROM [logistic]"></asp:SqlDataSource>
    </form>
</body>
</html>
