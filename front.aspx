<%@ Page Language="C#" AutoEventWireup="true" CodeFile="front.aspx.cs" Inherits="front" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link rel="stylesheet" href="front.css" />
    <link rel="Stylesheet" href="frontbutton.css" />
</head>
<body background="front.jpg">
    <form id="form1" runat="server">
    <div>m
        <asp:Image ID="Image1" runat="server" Height="314px" ImageUrl="~/logo.jpg" Style="left: 448px;
            position: relative; top: 6px" Width="467px" CssClass="img" /><br />
        &nbsp;
       <h1><span class="blinking">
           <span style="color: #ffffff; font-variant: small-caps">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
               &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
               &nbsp; <span style="font-size: 36pt"><span style="font-family: Constantia">&nbsp;<span style="font-variant: small-caps"><span style="color: #0099ff">Y<span style="color: #ffffff">ou</span>r</span>&nbsp;
                   <span style="color: #0099ff">ima<span style="color: #ffffff">ginat</span>ion... O<span
                       style="color: #ffffff">u</span>r&nbsp; com<span style="color: #ffffff">mitm</span>ent...</span></span></span></span></span></span><span
                           style="font-family: Constantia"> &nbsp; &nbsp; </span>&nbsp; &nbsp;
           &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
           &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
           &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
           &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
           &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
           &nbsp; &nbsp; &nbsp;&nbsp;
           <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Constantia"
               Font-Size="0.8em" ForeColor="#CCCCFF" Style="left: 607px; position: relative; top: -17px"
               Text="Get In ->" CssClass="input" Height="82px" OnClick="Button1_Click" Width="167px"/><span style="color: #ffffff;
                   font-variant: small-caps"><span style="font-size: 36pt"><span style="font-family: Museo For Dell 700;
                       font-variant: small-caps"><span style="color: #0099ff"></span></span></span></span></h1> 
       
        </div>
    </form>
</body>
</html>
