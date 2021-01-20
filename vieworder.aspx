<%@ Page Language="C#" AutoEventWireup="true" CodeFile="vieworder.aspx.cs" Inherits="vieworder" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
     <link rel="Stylesheet" href="btn.css" />
</head>
<body bgcolor="#000000">
    <form id="form1" runat="server">
    <div>
        <br />
        <br />
        &nbsp; &nbsp; &nbsp;&nbsp;<asp:Panel ID="Panel1" runat="server" BackColor="White">
      
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Style="position: relative; left: -4px; top: 7px;" OnItemCommand="DataList1_ItemCommand" Width="1167px">
           <HeaderTemplate >
                <table>
                    <tr>
                        <td style="width: 111px; height: 21px">
                            <asp:Label ID="Label1" runat="server" Text="Order ID"></asp:Label></td>
                            
                        <td style="width: 104px; height: 21px">
                            Customer ID</td>
                            <td style ="width:111px; height:21px">
                                <asp:Label ID="Label12" runat="server" Text="Name"></asp:Label> </td>
                                <td style="width: 104px; height: 21px">
                                    <asp:Label ID="Label13" runat="server" Text="Address"></asp:Label></td> 
                                    
                             <td style="width: 104px; height: 21px">
                                 <asp:Label ID="Label14" runat="server" Text="Contact"></asp:Label></td>  
                                   
                        <td style="width: 109px; height: 21px">
                            <asp:Label ID="Label15" runat="server" Text="ItemID"></asp:Label></td>
                        <td style="width: 126px; height: 21px">
                            <asp:Label ID="Label16" runat="server" Text="Date"></asp:Label></td>
                        <td style="width: 118px; height: 21px">
                            <asp:Label ID="Label17" runat="server" Text="Quantity"></asp:Label></td>
                        <td style="width: 125px; height: 21px">
                            <asp:Label ID="Label18" runat="server" Text="Price"></asp:Label></td>
                        <td style="width: 124px; height: 21px">
                            <asp:Label ID="Label19" runat="server" Text="Image"></asp:Label></td>
                        <td style="width: 100px; height: 21px">
                            <asp:Label ID="Label20" runat="server" Text="Total"></asp:Label></td>
                    </tr>
                    </table>
                    </HeaderTemplate> 
                   
                    <ItemTemplate>
                        <table>
                            <tr>
                                <td style="width: 54px; height: 21px">
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("order_id") %>' CssClass="input"></asp:Label></td>
                                <td style="width: 59px; height: 21px">
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("cust_id") %>' CssClass="input"></asp:Label>
                                </td>
                                <td style="width: 94px; height: 21px">
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("name") %>' CssClass="input"></asp:Label></td>
                                <td style="width: 100px; height: 21px">
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("address") %>' CssClass="input"></asp:Label></td>
                                <td style="width: 100px; height: 21px">
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("contact") %>' CssClass="input"></asp:Label></td>
                                <td style="width: 100px; height: 21px">
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("item_id") %>' CssClass="input"></asp:Label></td>
                                <td style="width: 100px; height: 21px">
                                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("date") %>' CssClass="input"></asp:Label></td>
                                <td style="width: 100px; height: 21px">
                                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("qty") %>' CssClass="input"></asp:Label></td>
                                <td style="width: 100px; height: 21px">
                                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("price") %>' CssClass="input"></asp:Label></td>
                                <td style="width: 100px; height: 21px">
                                    <asp:Image ID="Image1" runat="server" Height="173px" ImageUrl='<%# Eval("image") %>' Width="167px" /></td>
                                <td style="width: 100px; height: 21px">
                                    <asp:Label ID="Label11" runat="server" Text='<%# Eval("total") %>' CssClass="input"></asp:Label></td>
                                    <td > 
                                        <asp:Button ID="Button1" runat="server" Text="Send to logistic" CommandName="sendtologistic" CssClass="button" ForeColor="#FFFFFF" /></td>
                            </tr>
                        </table>
            </ItemTemplate>
            
        </asp:DataList><br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bgroup28ConnectionString %>"
            SelectCommand="SELECT * FROM [orderdetail]"></asp:SqlDataSource>
        <br />
        <br />
          </asp:Panel>
        &nbsp;</div>
    </form>
</body>
</html>
