<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BuyerProfile.aspx.cs" Inherits="BuyerProfile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Profile</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
		
    <link rel="Stylesheet"  href="css/checkout.css" />
    <script type="text/javascript" src="js/jquery.js"></script>
    <script src="js/home.js"></script>
    
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
    <link href="ddmenu.css" rel="stylesheet" type="text/css" />
    <script src="ddmenu.js" type="text/javascript"></script>
    
    
    <script>
    $(document).ready(function(){
    click=0;
        $("#header").click(function(){
        if(parseInt(click)==0)
        {
            $(".ordertbl").css({'width':'100%'});
            $(".htbl").css({'display':'block','height':'auto','width':'100%','overflow':'auto'});
           $(".htbl").append($('.ordertbl'));
           $('.ordertbl').css({'margin-top':'50px'});
           $(".ordercontent").css({'height':'auto','max-width':'190px'});
          $("#header").css({'position':'fixed','margin-top':'-50px','width':'100%','z-index':'10'});
          click=1;
         }
         else
         {
           $(".divorder").append($('.ordertbl'));
           $('.ordertbl').css({'margin-top':'0'});
           $("#header").css({'position':'none','width':$(".divorder").width()+'px','z-index':'1'});
            $(".htbl").css({'display':'none'});
            click=0;
         }
        });
    });
    </script>
    <style>
    
    <%-- code for search box --%>

input[type=text] {
    width: 300px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 3px;
    font-size: 16px;
    background-color: white;
    background-image: url('image/searchicon.png');
    background-position: 10px 10px; 
    background-repeat: no-repeat;
    padding: 12px 20px 12px 40px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
    height:45px;
 
}

input[type=text]:focus {
    width: 40%;
}
    .newspaper1 {
    -webkit-column-count: 3; /* Chrome, Safari, Opera */
    -moz-column-count: 3; /* Firefox */
    column-count: 3;
    -webkit-column-gap: 360px; /* Chrome, Safari, Opera */
    -moz-column-gap: 360px; /* Firefox */
    column-gap: 360px;
    font-size:18px;
    text-align:center;
    
}
</style>
</head>
<body onload="msgbox()" style="overflow-x:hidden;">
    <form id="form1" runat="server">
<div class="head">
<a href="home.aspx"><img src="Images/sudhaicon.png" alt="noImage" /></a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="user1" runat="server" CssClass="profil" Text="SIGNUP"  OnClick="user1_Click" />  <asp:Button ID="user2" runat="server" CssClass="profil" Text="LOGIN" OnClick="user2_Click" />	&nbsp;
    		<%--		</div>
<%--<a href="LogisticLogReg.aspx?val=login">
<div class="logistic">
</div></a>
<a href="SeLoLogReg.aspx?val=login">
<div class="seller">
</div></a>--%>
  &nbsp;&nbsp;  &nbsp;&nbsp;  &nbsp;&nbsp;  &nbsp;&nbsp;<div class="input input" style="left: 10%; top: -44px" id="DIV1" ">
    <asp:DropDownList CssClass="ddbox" ID="ddcatlist" runat="server"  DataTextField="cat_name" DataValueField="cat_name"  AutoPostBack="True">
        <asp:ListItem>All</asp:ListItem></asp:DropDownList>
 <asp:TextBox CssClass="searchtxt" ID="txtsearch" runat="server" placeholder="Search Here"  style="left: 1px; top: -16px"></asp:TextBox>
    <asp:ImageButton CssClass="searchbtn" ID="btnsearch" runat="server" ImageUrl="image/search.png" style="left: 1px; top: 3px" OnClick="btnsearch_Click2"   />
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
     <div class="userbtn" style="left: -2%; top: -60px"><div class="pro">
         <asp:Label ID="Label3" CssClass ="sansserif" runat="server" Text="My profile"></asp:Label></div>
     <div class="triangle" style="left: -10%; top: -40px" >.</div>
     <ul>
        <li><a href="BuyerProfile.aspx">Profile</a></li>
             <li><a href="wishlist.aspx">Wishlist</a></li>
        <li><a href="ChangePassword.aspx?user=buyer">Password</a></li>
      <li><a href="Address.aspx?user=buyer">Addresss</a></li>
        <li><a href="Help.aspx?utype=buyer">Help</a></li>
        <li><a id="A1" runat="server" onserverclick="logout_Click" >Logout</a></li>
     </ul>
    </div> 
    </div>    
    <div id="cartbtn" class="cartbtn" style="left: -7%; top: -40px" >&nbsp; <asp:ImageButton ID="ImageButton4" ImageUrl="image/cart7.jpg" OnClick="ImageButton4_Click"  runat="server" Height="35" Width="30" /><asp:Label CssClass="itemnolbl" ID="lblitemct" runat="server" Text="CART "></asp:Label><asp:Label CssClass="itemnolabl" ID="lblitemcount" runat="server" Text=""></asp:Label> </div>  
   <%--<div id="cartbtn" class="cartbtn" style="left: -7%; top: -20px">
   <div class="triangle1">.</div>
   <div class="cartlist" style="left: -233px; top:-24px">
       <div class="cartlisthead" style="left: 0px; top: 2px">
           <asp:Label CssClass="cartitem" ID="Label36" runat="server" Text="Items"></asp:Label>
           <asp:Label CssClass="cartamount" ID="Label37" runat="server" Text="Amount"></asp:Label>       
       </div>
    <asp:Label CssClass="itemnolabel" ID="lblitemcount" runat="server" Text=""></asp:Label>
       <asp:Label CssClass="amountlabel" ID="lblamt" runat="server" Text=""></asp:Label>
       <hr />
       <br/>
        <br/> <br/>
       <asp:LinkButton CssClass="viewcartbtn" ID="LinkButton1" PostBackUrl="~/Cart.aspx" runat="server">View Cart</asp:LinkButton>
   <asp:Button CssClass="checkbtn" ID="Button7" runat="server" Text="CheckOut"  />
   </div>
   </div>--%>
      <nav id="ddmenu">
    
    <ul>
        <li class="full-width">
            <span class="top-heading"><a href="gallery.aspx">Gallery</a></span>
            <i class="caret"></i>
            <div class="dropdown">
                <div class="dd-inner">
                    <ul class="column">
                       <li><a href="bean.aspx"><h3>Bean bags</h3></a></li>
                          <li><a href="joola.aspx"><h3>Joola</h3></a></li>
                        <%--<li><a href="#">Dolor sit amet</a></li>
                        <li><a href="#">Consectetur elit</a></li>
                        <li><a href="#">Etiam massa</a></li>
                        <li><a href="#">Suscipit sapien</a></li>
                        <li><a href="#">Quis turpis</a></li>--%>
                    </ul>
                     <ul class="column mayHide">
                        <li><br /><img src="image/2.jpg" width="300px"/></li>
                    </ul>
                </div>
            </div>
        </li>
        
        
       <li class="full-width">
            <span class="top-heading"><a href="dining.aspx">Dining Room</a></span>
            <i class="caret"></i>
            <div class="dropdown">
                <div class="dd-inner">
                    <ul class="column">
                       <li><a href="diningt.aspx"><h3>Dining Table</h3></a></li>
                         <%-- <li><a href="joola.aspx"><h3>Joola</h3></a></li>--%>
                        <%--<li><a href="#">Vestibulum ante</a></li>
                        <li><a href="#">Nulla id laoreet</a></li>
                        <li><a href="#">Elementum blandit</a></li>--%>
                    </ul>
                </div>
            </div>
        </li>
      <li class="full-width">
            <span class="top-heading"><a href="living.aspx">Living Room</a></span>
            <i class="caret"></i>
            <div class="dropdown ">
                <div class="dd-inner">
                    <ul class="column">
                      <li><a href="sofa.aspx"><h3>Sofa</h3></a></li>
                          <li><a href="joola.aspx"><h3>center Table</h3></a></li>
                          <li><a href="chair.aspx"><h3>Chair</h3></a></li>
                          <%--<li><a href="joola.aspx"><h3>Joola</h3></a></li>--%>
                    </ul>
                   <ul class="column mayHide">
                        <li><br /><img src="ddmenu/img2.jpg" /></li>
                    </ul>
                </div>
            </div>
        </li>
   
        <li class="full-width">
            <span class="top-heading"><a href="office.aspx">Office</a></span>
            <i class="caret"></i>
            <div class="dropdown">
                <div class="dd-inner">
                    <ul class="column">
                        <li><a href="chair.aspx"><h3>Chair</h3></a></li>
                        <%--<li><a href="#">Vel faucibus leo</a></li>
                        <li><a href="#">Duis ut mauris</a></li>
                        <li><a href="#">In tempus semper</a></li>
                        <li><a href="#">laoreet erat</a></li>--%>
                    
                    </ul>
                </div>
            </div>
        </li>
        
        
        <li class="full-width">
          <span class="top-heading"><a href="bed.aspx">Bed Room</a></span>
            <i class="caret"></i>
            <div class="dropdown">
                <div class="dd-inner">
                    <ul class="column">
                        <li><a href="cup.aspx"><h3>CupBoard</h3></a></li> 
                          <li><a href="matrices.aspx"><h3>Matrices</h3></a></li>
                            <li><a href="cot.aspx"><h3>cot</h3></a></li>
                    </ul>
                </div>
            </div>
        </li>
         <li>
          <span class="top-heading"><a href="bed.aspx"></a></span>
    
           
        </li>
          <li>
          <span class="top-heading"><a href="bed.aspx"></a></span>
    
           
           
        </li>
          <li>
          <span class="top-heading"><a href="bed.aspx"></a></span>
    
           
        </li>
          <li>
          <span class="top-heading"><a href="bed.aspx"></a></span>
    
           
        </li>
          <li>
          <span class="top-heading"><a href="bed.aspx"></a></span>
    
           
        </li>
         <li>
          <span class="top-heading"><a href="bed.aspx"></a></span>
    
           
        </li>
          <li>
          <span class="top-heading"><a href="bed.aspx"></a></span>
    
           
           
        </li>
          <li>
          <span class="top-heading"><a href="bed.aspx"></a></span>
    
           
        </li>
          <li>
          <span class="top-heading"><a href="bed.aspx"></a></span>
    
           
        </li>
          <li>
          <span class="top-heading"><a href="bed.aspx"></a></span>
    
           
            <li>
          <span class="top-heading"><a href="bed.aspx"></a></span>
    
           
        </li>
          <li>
          <span class="top-heading"><a href="bed.aspx"></a></span>
    
           
           
        </li>
    
        
        </li>
        
         <li>
          <span class="top-heading"><a href="BuyerProfile.aspx">Profile</a></span>
        
        </li>
         <li>
          <span class="top-heading"><a href="Address.aspx?user=buyer">Address</a></span>
         
            
        </li>
         <li>
          <span class="top-heading"><a href="orderss.aspx">My orders</a></span>
           
            
        </li>
    </ul>
</nav>
  </div>
 &nbsp; &nbsp;
 &nbsp; &nbsp;
<br/><br/>
      <div class="back">
     
       <div class="profile">
        <div class="photodiv">
            <div class="img" ID="Image1" runat="server" >
            <asp:ImageButton ID="i1" Csslass="iii"  Width="400px"  height="320px" runat="server"  /> 	
     	
 <br/> <br/> <br/>
          &nbsp; &nbsp;
 &nbsp; &nbsp;   &nbsp; &nbsp;  <asp:FileUpload ID="img3" BackColor ="#bfbfbf"  CssClass="input" runat="server" /> &nbsp;
         
        &nbsp; &nbsp;
 &nbsp; &nbsp;   &nbsp; &nbsp;        &nbsp; &nbsp;
 &nbsp; &nbsp;   &nbsp; &nbsp;   <asp:Button ID="Button1" CssClass="addcart" runat="server" Text="Upload pic" OnClick="Button1_Click" />   
      
            </div>
             <br/> <br/>
            <div class="addressdiv">
                <asp:Table CssClass="addresstbl" ID="addresstbl" runat="server">
                <asp:TableHeaderRow>
                <asp:TableHeaderCell  ColumnSpan="2" CssClass="tblhead" >Personal Info</asp:TableHeaderCell>
                </asp:TableHeaderRow>
                </asp:Table>  
            </div>
        </div>
           
       
       </div>
       </div>
     <div runat="server" id="msg" class="msg">
    
    </div>  
    <div class="htbl"></div>
    </form>
    
      <footer>
            <div class="footer">
               <div class="newspaper1">
<a href="about.aspx"> About us </a><br/> <br/>
<a href="contact.aspx"> Contact </a>
<br/>
<i class="material-icons">location_on</i> &nbsp;Sudha Enterprises
Near hotel New Woodlands
U.R.Rao Complex, Tenkpet
Udupi-576101<br/>
0820 2526463, 9886718463<br/>
info@sudhafurniture.com
<br />
                        <p class="wow bounceIn" data-wow-offset="50" data-wow-delay="0.3s">
                         &copy; Copyright 2016. SUDHA FURNITURE</p>
                         </div>
                    </div>
           
        </footer>
</body>
</html>
