<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="cart" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
     <link rel="Stylesheet" href="btn.css" />
</head>
<body bgcolor="#000000">
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server" BackColor="White">
       
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" BackColor="#FFFFFF" >
            
            <headertemplate>
                <table>
                    <tr>
                        <td style="width: 100px">
                            Item ID</td>
                        <td style="width: 100px">
                            Item Name</td>
                        <td style="width: 100px">
                            Image</td>
                        <td style="width: 100px">
                            Price</td>
                        <td style="width: 100px">
                            Qty</td>
                        <td style="width: 100px">
                        </td>
                    </tr>
                    </table> 
                    </headertemplate>
                    <ItemTemplate>
                    <table>
                    <tr>
                        <td style="width: 100px; height: 26px">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("item_id") %>' CssClass="input"></asp:Label></td>
                        <td style="width: 100px; height: 26px">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("item_name") %>' CssClass="input"></asp:Label></td>
                        <td style="width: 100px; height: 26px">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' Height="262px" Width="346px" /></td>
                        <td style="width: 100px; height: 26px">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("price") %>' CssClass="input"></asp:Label></td>
                        <td style="width: 100px; height: 26px">
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("qty") %>' CssClass="input"></asp:TextBox></td>
                        <td style="width: 100px; height: 26px">
                            <asp:Button ID="Button1" runat="server" Text="DELETE" CommandArgument ='<%# Eval("item_id") %>' CommandName ="delete" CssClass="button" ForeColor="#FFFFFF" /><br />
                            <asp:Button ID="Button2" runat="server" Text="EDIT" CommandArgument ='<%# Eval("item_id") %>' CommandName="edit" OnClick="Button2_Click" CssClass="button" ForeColor="#FFFFFF"/></td>
                    </tr>
                </table>
                        <br />
            </ItemTemplate>
            <FooterTemplate >
               
                <asp:Button ID="Button3" runat="server" Text="CHECKOUT" CssClass="button" BackColor="Red" ForeColor="White" CommandName ="checkout" CommandArgument ='<%# Eval("cust_id") %>'/>
                </FooterTemplate>
        </asp:DataList>
        <br />
        <br />
        &nbsp;&nbsp;
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bgroup28ConnectionString %>"
            SelectCommand="SELECT * FROM [cart] WHERE ([cust_id] = @cust_id)">
            <SelectParameters>
                <asp:SessionParameter Name="cust_id" SessionField="cust_id" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
         </asp:Panel>
         </div>
    </form>
</body>
</html>
