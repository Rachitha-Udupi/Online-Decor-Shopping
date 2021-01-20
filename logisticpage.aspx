<%@ Page Language="C#" AutoEventWireup="true" CodeFile="logisticpage.aspx.cs" Inherits="logisticpage" %>

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
      
        <br />
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Width="961px">
            
            <HeaderTemplate >
            <table>
                    <tr>
                        <td style="width: 100px; height: 21px">
                            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label></td>
                        <td style="width: 100px; height: 21px">
                            <asp:Label ID="Label2" runat="server" Text="Address"></asp:Label></td>
                        <td style="width: 100px; height: 21px">
                            <asp:Label ID="Label3" runat="server" Text="Contact"></asp:Label></td>
                        <td style="width: 100px; height: 21px">
                            <asp:Label ID="Label4" runat="server" Text="Item ID"></asp:Label></td>
                        <td style="width: 100px; height: 21px">
                            <asp:Label ID="Label5" runat="server" Text="Date"></asp:Label></td>
                        <td style="width: 100px; height: 21px">
                            <asp:Label ID="Label6" runat="server" Text="Quantity"></asp:Label></td>
                        <td style="width: 100px; height: 21px">
                            <asp:Label ID="Label7" runat="server" Text="Price"></asp:Label></td>
                        <td style="width: 100px; height: 21px">
                            <asp:Label ID="Label8" runat="server" Text="Image"></asp:Label></td>
                        <td style="width: 100px; height: 21px">
                            <asp:Label ID="Label9" runat="server" Text="Total"></asp:Label></td>
                    </tr>
                    </table> 
                    </HeaderTemplate>
                    <ItemTemplate>
                <table >
                    <tr>
                        <td style="width: 100px; height: 21px">
                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("name") %>' CssClass="input"></asp:Label></td>
                        <td style="width: 100px; height: 21px">
                            <asp:Label ID="Label11" runat="server" Text='<%# Eval("address") %>' CssClass="input"></asp:Label></td>
                        <td style="width: 100px; height: 21px">
                            <asp:Label ID="Label12" runat="server" Text='<%# Eval("contact") %>' CssClass="input"></asp:Label></td>
                        <td style="width: 100px; height: 21px">
                            <asp:Label ID="Label13" runat="server" Text='<%# Eval("item_id") %>' CssClass="input"></asp:Label></td>
                        <td style="width: 100px; height: 21px">
                            <asp:Label ID="Label14" runat="server" Text='<%# Eval("date") %>' CssClass="input"></asp:Label></td>
                        <td style="width: 100px; height: 21px">
                            <asp:Label ID="Label15" runat="server" Text='<%# Eval("qty") %>' CssClass="input"></asp:Label></td>
                        <td style="width: 100px; height: 21px">
                            <asp:Label ID="Label16" runat="server" Text='<%# Eval("price") %>' CssClass="input"></asp:Label></td>
                        <td style="width: 100px; height: 21px">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' Height="139px" Width="143px" /></td>
                        <td style="width: 100px; height: 21px">
                            <asp:Label ID="Label17" runat="server" Text='<%# Eval("total") %>' CssClass="input"></asp:Label></td>
                                    <td style="width: 100px; height: 21px"> 
                                <asp:CheckBox ID="CheckBox1" runat="server" Text ="Approved to delivery" CssClass="input" ForeColor="Red" /><br/> 
                                <asp:CheckBox ID="CheckBox2" runat="server" Text ="confirm delivery" CssClass="input" ForeColor="Red"/></td>  
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList><br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bgroup28ConnectionString %>"
            SelectCommand="SELECT * FROM [logisticdetail]"></asp:SqlDataSource>
        &nbsp;  </asp:Panel></div>
    </form>
</body>
</html>
