<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewdetail.aspx.cs" Inherits="viewdetail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="item_id" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
                <table>
                    <tr>
                        <td style="width: 130px">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("item_id") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 130px">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("item_image") %>' Width="446px" Height="330px" /></td>
                    </tr>
                    <tr>
                        <td style="width: 130px">
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("item_name") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 130px">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("price") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 130px">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("description") %>'></asp:Label></td>
                    </tr>
                </table>
                <asp:Label ID="Label4" runat="server" Text="Enter the quantity"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
                <asp:Button ID="Button1" runat="server"  Text="Buy now" CommandName="buy" CommandArgument ='<%# Eval("item_id") %>' OnClick="Button1_Click" />
            </ItemTemplate>
        </asp:DataList></div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bgroup28ConnectionString %>"
            SelectCommand="SELECT * FROM [item] WHERE ([item_id] = @item_id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="item_id" QueryStringField="id" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
