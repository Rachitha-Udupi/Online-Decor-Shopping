
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
     <link rel="Stylesheet" href="adminlogin.css" />
    <link rel ="stylesheet" href ="style1.css" />
    <link rel="Stylesheet" href="adminbutton.css" />
</head>
<body bgcolor="#000000" >
    <form id="form1" runat="server">
    
    <div>
        
    <div class="container">
    <ul>
    <li style="left:630px;top:55px">
       <asp:LinkButton ID="LinkButton1" runat="server" style="font-variant: small-caps" ForeColor="Red" OnClick="LinkButton1_Click" Font-Overline="False" CssClass="button" >Add item</asp:LinkButton><span
           style="color: yellow"> </span></li>
  
    <li style="left: 730px; top: 55px">
        <asp:LinkButton ID="LinkButton2" runat="server" style="font-variant: small-caps" ForeColor="Red" OnClick="LinkButton2_Click" Font-Overline="False">Edit item</asp:LinkButton><span
            style="color: yellow"> </span></li>
   </ul>
   </div>
   <br /> <br /> <br /> <br /> <br />
   <div class="container">
   <ul>
    <li style="left: 630px; top: 63px">
        <asp:LinkButton ID="LinkButton3" runat="server" style="font-variant: small-caps" ForeColor="Red" OnClick="LinkButton3_Click" Font-Overline="False" >Add category</asp:LinkButton></li>

    <li style="left: 730px; top: 62px; color: orangered;">
        <asp:LinkButton ID="LinkButton4" runat="server" style="font-variant: small-caps" ForeColor="Red"  OnClick="LinkButton4_Click" Font-Overline="False">Edit category</asp:LinkButton></li>
   </ul>
   </div>
    <br /> <br /> <br /> <br /> <br />
   <div class="container">
   <ul>
    <li style="left:760px;top:70px">
        <asp:LinkButton ID="LinkButton5" runat="server" style="font-variant: small-caps" ForeColor="Red"  OnClick="LinkButton5_Click" Font-Overline="False">Add Logistics</asp:LinkButton><span
            style="color: orangered"> </span></li>
    </ul>
    </div>
     <br /> <br /> <br /> <br /> <br />
    <div class="container">
    <ul>
    <li style="left:760px;top:76px">
        <asp:LinkButton ID="LinkButton6" runat="server" style="font-variant:small-caps " ForeColor="Red" Font-Overline="False" OnClick="LinkButton6_Click1"  >View order</asp:LinkButton><span
            style="color: orangered"> </span></li>
    </ul>
    </div>
     <br /> <br /> <br /> <br /> <br />
    <div class="container">
    <ul>
    <li style="left:760px;top:75px">
        <asp:LinkButton ID="LinkButton7" runat="server" style="font-variant:small-caps" ForeColor="Red" Font-Overline="False" >Report</asp:LinkButton><span
            style="color: orangered"> </span></li>
    </ul>
    </div>
        &nbsp;
        <br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp;&nbsp;
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
      <%--  <asp:Button ID="Button1" runat="server" Height="36px" OnClick="Button1_Click" Text="Add Item"
            Width="123px" />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;
        <asp:Button ID="Button2" runat="server" Height="32px" OnClick="Button2_Click" Text="Customer Info" />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Height="34px" OnClick="Button3_Click" Text="Add Category" /><br />
        <br />
        <asp:Button ID="Button4" runat="server" Height="33px" Style="left: 182px; position: relative;
            top: 60px" Text="Logistic" Width="121px" OnClick="Button4_Click" /><br />--%>
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    
  
    </div>
    </form>
</body>
</html>
