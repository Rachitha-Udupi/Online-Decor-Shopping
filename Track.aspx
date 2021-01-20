<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Track.aspx.cs" Inherits="Track" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Track</title>
    <link rel="Stylesheet"  href="css/checkout.css" />
    <script type="text/javascript" src="jquery.js"></script>
    <script src="js/home.js"></script>
</head>
<body onload="msgbox()">
    <form id="form1" runat="server">
     <div class="head">
   <a href="Home.aspx"> <img src="logo.jpg" height="80" width="80" > </img></a>
    </div>
    <div class="productdiv">
    <asp:Image runat="server" ID="img"  CssClass="prodimg"/><br /><br /><br />
    <asp:Label runat="server" ID="lblname" CssClass="namelbl"></asp:Label><br /><br />
    <div class="locdiv" id="locdiv" runat="server"></div>
    </div>
    <div class="truckk">
      <div class="c" id="t" runat="server"> <img src="image/truck1.png" id="t"  width="200px" height="100px" style:"margin-top:-220px"> </img>  </div>

    </div>
    <div class="track">
    <div class="check1" id="check1" runat="server">
    </div>
    <div class="check2" id="check2"  runat="server">
    </div >
    <div class="check3" id="check3" runat="server">
    </div> &nbsp;
    &nbsp;<br/>

    </div>    <div class="ttt"><img src="image/home.jpg"> </img></div>
    <div runat="server" id="msg" class="msg">
    
    </div>
    </form>
</body>
</html>
