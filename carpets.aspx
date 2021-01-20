<%@ Page Language="C#" AutoEventWireup="true" CodeFile="carpets.aspx.cs" Inherits="carpets" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link rel="Stylesheet" href="navbar.css" />
    <link rel="Stylesheet" href="btn.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  background-color: black;
  font-family: cursive;
}

.glow {
  font-size: 80px;
  color:Highlight;
  text-align: center;
  -webkit-animation: glow 1s ease-in-out infinite alternate;
  -moz-animation: glow 1s ease-in-out infinite alternate;
  animation: glow 1s ease-in-out infinite alternate;
}

@-webkit-keyframes glow {
  from {
    text-shadow: 0 0 10px #fff, 0 0 20px Blue, 0 0 30px Blue, 0 0 40px Blue, 0 0 50px Blue, 0 0 60px Blue, 0 0 70px Blue;
  }
  
  to {
    text-shadow: 0 0 20px #fff, 0 0 30px #ff4da, 0 0 40px #ff4da6, 0 0 50px #ff4da6, 0 0 60px #ff4da6, 0 0 70px #ff4da6, 0 0 80px #ff4da6;
  }
}
</style>
</head>
<body bgcolor="#000000">
    <form id="form1" runat="server">
    <h1 class="glow">
        
        <span style="font-size: 0.8em; font-family: Constantia; background-color: black;">Online Decor Shopping</span></h1>
        <div class="header">
            <img src="logo.jpg" alt="logo" height="120" style="left: 154px; position: relative; top: -145px" width="120" />
    </div>    
     <div class="topnav" id="myTopnav" style="align:center;">

 

  <a href="mainpage.aspx" class="active" style="width:130px;"><span style="color: black">
      Home</span></a>

  <a href="about.aspx" style="width:130px; color: #000000;"><span>About</span> <span>us</span></a>
  
  <a href="" style="width:130px; color: #000000;"><span style="color: black">Contact us</span></a>
  <a href="category.aspx" style="width:130px; color: #000000;"><span>Category</span></a>
    
 

  </div>
  
    <div>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
        &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <br />
        <asp:ImageButton ID="ImageButton1" runat="server" style="left: 1086px; position: relative; top: 29px" Height="114px" ImageUrl="~/cart.gif" Width="164px" OnClick="ImageButton1_Click1" />
        
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; 
    <div>
        <br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
        <br />
        <asp:Panel ID="Panel1" runat="server" BackColor="White">
        
        <asp:DataList ID="DataList1" runat="server" DataKeyField="item_id" DataSourceID="SqlDataSource1"
             RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand"  >
            <ItemTemplate>
                <table>
                    <tr>
                        <td style="width: 100px">
                            &nbsp;<asp:Label ID="Label3" runat="server" CssClass="input" Text='<%# Eval("item_id") %>' Visible="False"></asp:Label>
                            </td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("item_image") %>' Width="347px" Height="324px" /></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            <asp:Label ID="Label4" runat="server" CssClass="input" Text='<%# Eval("item_name") %>' ForeColor="White"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            &nbsp;<asp:Label ID="Label1" runat="server" CssClass="input" Text='<%# Eval("price") %>' ForeColor="White"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 21px;">
                            <asp:Label ID="Label2" runat="server" CssClass="input" Text='<%# Eval("description") %>' Visible="False"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 143px;">
                            <span style="color: #ffffff"></span>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="input" Text='<%# Eval("qty") %>' Visible="False"></asp:TextBox><br />
                            <span style="color: #ffffff">Quantity :
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="input">
                                    <asp:ListItem>---select---</asp:ListItem>
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                    <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>9</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                </asp:DropDownList></span></td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 26px;">
                            <asp:Button ID="Button1" runat="server" CssClass="button" Text="Add To Cart" OnClick="Button1_Click" CommandArgument='<%#Eval("item_id")%>' CommandName="addtocart" ForeColor="White" /></td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 21px">
                            <asp:Button ID="Button2" runat="server" Text="View Item" CommandName="viewdetail" CommandArgument='<%#Eval("item_id")%>' ForeColor="White" CssClass="button" /></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bgroup28ConnectionString %>"
            SelectCommand="SELECT * FROM [item] WHERE ([category] = @category)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Carpets and mats" Name="category" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>
    </div>
    </form>
</body>
</html>
