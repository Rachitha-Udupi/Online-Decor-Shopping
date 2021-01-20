<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addcat.aspx.cs" Inherits="addcat" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
     <link rel="stylesheet" href="admn.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="login-wrap">
    <div class="login-form">
			<div class="sign-in-htm">
				<div class="group">
        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <br />
                   <%-- <asp:ImageButton ID="ImageButton1" runat="server" Height="50px" ImageUrl="~/ahome.png"
                        OnClick="ImageButton1_Click" Style="left: 622px; position: relative; top: -8px"
                        Width="50px" /><br />--%>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Placeholder="Category ID" CssClass="input" style="left: 186px; position: relative; top: 48px" Width="241px"></asp:TextBox>
                    <asp:Label ID="Label1" runat="server" ForeColor="White" Style="left: 28px; position: relative;
                        top: 14px; font-variant: small-caps;" Text="CATEGORY ID" Font-Bold="True" Font-Names="Constantia" Font-Size="1.1em" ></asp:Label><br />
        <br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Placeholder="Category Name" CssClass="input" style="left: 191px; position: relative; top: -18px" Width="236px"></asp:TextBox>
                    <asp:Label ID="Label2" runat="server" ForeColor="White" Style="left: 18px; position: relative;
                        top: -56px; font-variant: small-caps;" Text="Category name" Font-Bold="True" Font-Names="Constantia" Font-Size="1.2em" Height="30px" Width="155px" ></asp:Label>
                    <asp:Label ID="Label3" runat="server" ForeColor="White" Style="left: -95px; position: relative;
                        top: -3px" Text="Sub Category"></asp:Label><br />
                    &nbsp; &nbsp;&nbsp;&nbsp;<br />
                    <asp:TextBox ID="txtsubcat" runat="server" Style="left: 191px; position: relative;
                        top: -44px"></asp:TextBox><br />
                    <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:Button ID="btnadd" runat="server" Text="Add" OnClick="btnadd_click" Width="113px" CssClass="button" style="left: 180px; position: relative; top: -32px" Font-Bold="True" Font-Names="Constantia" Font-Size="1em"/></div>
    <br />
<%--     <asp:Button ID="Button3" runat="server" Text="VIEW DETAIL>>>" CssClass ="button" style="left: 152px; position: relative; top: -18px" Font-Bold="True" Font-Names="Constantia" Font-Size="1em" Height="50px"  Width="170px" OnClick="Button3_Click"/> 
--%>    </div>
    </div>
    </div>
    </div>
    </form>
</body>
</html>
