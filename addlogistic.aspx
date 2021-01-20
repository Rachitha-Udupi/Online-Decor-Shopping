<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addlogistic.aspx.cs" Inherits="addlogistic" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
   <link rel="Stylesheet" href="adminlogistic.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <br />
    <br />
    <div class="login-wrap">
    <div class="login-form">
			<div class="sign-in-htm">
				<div class="group">
				<p>
                    <strong><span style="font-size: 32pt; font-family: Constantia; color:Blue;">&nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; Logistic</span></strong></p>
                    &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="50px" ImageUrl="~/admhme.jpg"
                        OnClick="ImageButton1_Click" Style="left: 18px; position: relative; top: -58px"
                        Width="50px" />
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Logistic ID" CssClass="input" style="left: 95px; position: relative; top: -18px" Width="282px"></asp:TextBox><br />
                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Username" CssClass="input" style="left: 93px; position: relative; top: -21px" Width="282px"></asp:TextBox>
                    <br />
                    <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter Password" CssClass="input" style="left: 96px; position: relative; top: 63px" Width="282px"  ></asp:TextBox>&nbsp;<asp:DropDownList
                        ID="DropDownList1" runat="server" Height="75px" Style="left: 96px; position: relative;
                        top: -90px" Width="321px" CssClass="input" AutoPostBack="True">
                        <asp:ListItem>UDUPI</asp:ListItem>
                        <asp:ListItem>MANGALORE</asp:ListItem>
                        <asp:ListItem>KARKALA</asp:ListItem>
                    </asp:DropDownList><br />
                    <asp:Button ID="Button1" runat="server" Text="ADD" CssClass="button" style="left: 182px; position: relative; top: -34px" Font-Bold="True" Font-Size="1.4em" ForeColor="White" Width="153px" OnClick="Button1_Click"/>
                    <asp:Button ID="Button2" runat="server" Style="left: 186px; position: relative; top: 7px"
                        Text="VIEW DETAIL>>>" CssClass="button" OnClick="Button2_Click" Width="140px" Font-Bold="True"/></div>
				</div>
				</div>
				</div>
    
    </div>
    </form>
</body>
</html>
