<%@ Page Language="C#" AutoEventWireup="true" CodeFile="wishlist.aspx.cs" Inherits="wishlist" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Wishlist</title>
    <script src="jquery.js" type="text/javascript"></script>
<script language="javascript" type="text/javascript" src="home.js"> </script>
 <!CDATA[
// ]]>
<%--<script type="text/javascript" src="mjs/jquery.js"></script>
<script type="text/javascript" src="mjs/slider.js"></script>
<script type="text/javascript" src="mjs/superfish.js"></script>

<script type="text/javascript" src="mjs/custom.js"></script>--%>
<%--/* code for image slider*/--%>
<meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"  type="text/javascript"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" type="text/javascript" ></script>
   <%--   code for gallery and icons--%>
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"> {

}

</script>
   
<%--  code for dropdownlist--%>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
    <link href="ddmenu.css" rel="stylesheet" type="text/css" />
    <script src="ddmenu.js" type="text/javascript"></script>
  
   
<%--</script>--%>
<link rel="Stylesheet"  href="css/home.css" />

<link href="css/sliderstyle.css" type="text/css" rel="stylesheet" />

<%--<link href="mcss/styles.css" rel="stylesheet" type="text/css" />--%>

<style type="text/css">
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 80%;
      margin: auto;
  }
   .left carousel-control > .glyphicon glyphicon-chevron-left {
      width: 100%;
      margin: auto;
  }
  .container > .carousel slide > carousel-indicators {
      width: 1500px;
      margin: auto;
  }

<%--code for gallery--%>  
  div {

 <%--   border: 1px solid white;
    outline: 1px solid black;
    /* Move the outline 15px away from the border */
    outline-offset: 15px; --%>
}


.image {
  opacity: 1;

  width: 100%;
  height: auto;
  transition: .5s ease;
  backface-visibility: hidden;
}


.imag:hover .image {
  opacity: 0.7;
}
/* for the fading of the image and imag is the class name...these r all part of div tag*/


.button {
bottom
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}


.button5 {
    background-color: white;
    color: black;
    border: 2px solid #555555;
}
.newspaper {
    -webkit-column-count: 3; /* Chrome, Safari, Opera */
    -moz-column-count: 3; /* Firefox */
    column-count: 3;
    -webkit-column-gap: 40px; /* Chrome, Safari, Opera */
    -moz-column-gap: 40px; /* Firefox */
    column-gap: 40px;
      border: 1px solid white;
    outline: 2px solid black;
    /* Move the outline 15px away from the border */
    outline-offset: 15px;
}

<%-- code for search box --%>

input[type=text] {
    width: 200px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    background-color: white;
    background-image: url('image/searchicon.png');
    background-position: 10px 10px; 
    background-repeat: no-repeat;
    padding: 12px 20px 12px 40px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
    height:40px;
}

input[type=text]:focus {
    width: 40%;
}



</style>
</head>
<body id="top">

		<!-- start preloader -->
		<div class="preloader">
			<div class="sk-spinner sk-spinner-wave">
     	 		<div class="sk-rect1"></div>
       			<div class="sk-rect2"></div>
       			<div class="sk-rect3"></div>
      	 		<div class="sk-rect4"></div>
      			<div class="sk-rect5"></div>
     		</div>
    	</div>
    	<!-- end preloader -->
    <form id="form1"  runat="server">
<div class="head">
<a href="home.aspx"><img src="Images/sudhaicon.png" alt="noImage" /></a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="user1" runat="server" CssClass="profile" Text="SIGNUP" BackColor="#336699" ForeColor="White" OnClick="user1_Click" />  <asp:Button ID="user2" runat="server" CssClass="profile" Text="LOGIN"  BackColor="#336699" ForeColor="White" OnClick="user2_Click" />	&nbsp;
    		<%--		</div>
<%--<a href="LogisticLogReg.aspx?val=login">
<div class="logistic">
</div></a>
<a href="SeLoLogReg.aspx?val=login">
<div class="seller">
</div></a>--%>
<div class="input input" style="left: 10%; top: -44px" id="DIV1" ">
    <asp:DropDownList CssClass="ddbox" ID="ddcatlist" runat="server"  DataTextField="cat_name" DataValueField="cat_name"  AutoPostBack="True">
        <asp:ListItem>All</asp:ListItem></asp:DropDownList>
 <asp:TextBox CssClass="searchtxt" ID="txtsearch" runat="server" placeholder="Search Here"  style="left: 1px; top: -16px"></asp:TextBox>
    <asp:ImageButton CssClass="searchbtn" ID="btnsearch" runat="server" ImageUrl="image/search.png" style="left: 1px; top: 3px" OnClick="btnsearch_Click"   />
    </div>
    <%-- <div id="user" runat="server">
     <div class="userbtn" style="left: -1%; top: -44px; height: 38px" > 
     <div id="triangle" class="triangle">.</div>
     <ul>
        <li id="loginli"><a href="loginform.aspx?val=login">Login</a></li>
     <li id="regli"><a href="login.aspx?val=register">Register</a></li>
     </ul>
     </div>
    </div>--%>
     <div id="userlogin" runat="server" >
     <div class="userbtn" style="left: -2%; top: -60px"><div class="profile">
         <asp:Label ID="Label3" CssClass ="sansserif" runat="server" Text="My profile"></asp:Label></div>
     <div class="triangle" style="left: -10%; top: -50px" >.</div>
     <ul>
        <li><a href="BuyerProfile.aspx">Profile</a></li>
             <li><a href="wishlist.aspx">Wishlist</a></li>
        <li><a href="ChangePassword.aspx?user=buyer">Password</a></li>
      <li><a href="Address.aspx?user=buyer">Addresss</a></li>
        <li><a href="Help.aspx?">help</a></li>
        <li><a id="A1" runat="server" href="#" onserverclick="logout_Click" >Logout</a></li>
     </ul>
    </div> 
    </div>    
    <div id="cartbtn" class="cartbtn" style="left: -7%; top: -40px" > <asp:ImageButton ID="ImageButton4" ImageUrl="image/cart7.jpg" OnClick="ImageButton4_Click"  runat="server" Height="35" Width="30" /><asp:Label CssClass="itemnolbl" ID="lblitemct" runat="server" Text="CART "></asp:Label><asp:Label CssClass="itemnolabl" ID="lblitemcount" runat="server" Text=""></asp:Label> </div>  

 
    
  </div>  <div runat="Server"  class="cartcontent" id="cartcontent">
    
    </div>
   <%-- <div class="footer">
        <a href="Home.aspx"><div class="homeicon"></div></a>
        <a href="Help.aspx?utype=buyer"><div class="helpicon"></div></a>
        <a href="About.aspx"><div class="abouticon"></div></a>
    </div>--%>
<div runat="server" id="msg" class="msg">
    
    </div>  
    </form>
</body>
</html>
