<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frontpage.aspx.cs" Inherits="frontpage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>
</title>
   <link rel="stylesheet" href="nav.css" />
<meta name="keywords" content="">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   <link href="1.css" rel="stylesheet">
    <link rel="stylesheet" href="animate.min.css">
    <link rel="stylesheet" href="bootstrap.min.css">
    <link rel="stylesheet" href="font-awesome.min.css">
    <link href="2.css" rel='stylesheet'
        type='text/css'>
    <link rel="stylesheet" href="templatemo-style.css">

    <script src="jquery.js"></script>

    <script src="tjs/bootstrap.min.js"></script>
    <script src="tjs/jquery.singlePageNav.min.js"></script>
    <script src="tjs/typed.js"></script>
    <script src="tjs/wow.min.js"></script>

    <script src="custom.js"></script>

    <style>
		.newspaper1 {
    -webkit-column-count: 3; /* Chrome, Safari, Opera */
    -moz-column-count: 3; /* Firefox */
    column-count: 3;
    -webkit-column-gap: 100px; /* Chrome, Safari, Opera */
    -moz-column-gap: 100px; /* Firefox */
    column-gap: 100px;

}
</style>
<style>
h1 {
    text-shadow: 3px 2px white;
}
</style>
</head>
<body id="top">
    <!-- start preloader -->
    <div class="preloader">
   
        <div class="sk-spinner sk-spinner-wave">
            <div class="sk-rect1">
            </div>
            <div class="sk-rect2">
            </div>
            <div class="sk-rect3">
            </div>
            <div class="sk-rect4">
            </div>
            <div class="sk-rect5">
            </div>
            <div class="sk-rect6">
            </div>

        </div>
    </div>
    <!-- end preloader -->
    <!-- start header -->
    <%--<header>
            
        </header>--%>
    <!-- end header -->
    <!-- start navigation -->
    <%--<nav class="navbar navbar-default templatemo-nav" role="navigation">--%>
			<%--<div class="container">
				<div class="navbar-header">
					<button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
						<span class="icon icon-bar"></span>
						<span class="icon icon-bar"></span>
						<span class="icon icon-bar"></span>
					</button>
					--%>
					
				<%--</div>--%>
				<%--<div class="collapse navbar-collapse">--%>
				
					<%--<ul class="navbar">
					<a href="frontpage.aspx"><img src="logo.jpg" />
						<a class="active" href="frontpage.aspx"><i class="fa fa-fw fa-home"></i> Home</a> 
  <a href="item.aspx"><i class="fa fa-fw fa-search"></i> Search</a> 
  <a href="contact.aspx"><i class="fa fa-fw fa-envelope"></i> Contact</a> 
  <a href="clogin.aspx"><i class="fa fa-fw fa-user"></i> Login</a>--%>
						<%--<ul>
						
						<li><img src ="logo.jpg"> </li>
						<li ><a href="mainpage.aspx">HOME</a></li>
						<li><a href="about.aspx">ABOUT</a></li>--%>
						<%--<ul><img src ="logo.jpg"> &nbsp; &nbsp;--%>
						 &nbsp;
						<img src ="logo.jpg" style="left: 23px; position: relative; top: -57px; width: 93px; height: 82px;">
    <asp:Label ID="Label2" runat="server" Text='<span style="color:white; font-family:Andalus; font-weight:bold; font-stretch:semi-expanded; font-size:36pt; font-variant: small-caps;">Online Decor Shopping</span>' style="left: -18px; position: relative; top: -59px" Font-Size="72pt" Width="493px"></asp:Label>
                        
						  <div class="topnav" id="myTopnav">
                        <ul class="social-icon">
                        <p class="wow bounceIn" data-wow-offset="50" data-wow-delay="0.5s">
                            <li><strong><span style="font-size: 1.2em"><span style="font-family: @Gulim"><span><span
                                style="color: #0000ff">Redefine</span><span style="color: #00cc66"> the</span> <span
                                    style="color: #ff3300">Luxurious</span> <span style="color: #00ccff">Expierence</span></span><span
                                        style="color: #00ccff"> </span></span></span></strong></li>
                            <li><a href="https://www.facebook.com/hidecorcurtains/" class="fa fa-facebook" style="background-color:ButtonShadow"></a></li>
                            <li><a href="twitter.com/hidecorcurtains" class="fa fa-twitter" style="background-color:Lime"></a></li>
                            <li><a href="instagram.com/hidecorcurtains" class="fa fa-instagram" style="background-color:Green"></a></li>
                           <%--<li><a href="" class="fa fa-youtube"></a></li>--%>
                          
                    </p>
                        </ul>
                    </div>
                     
                    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       
                     <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-4 col-xs-12">
                        <p class="wow bounceIn" data-wow-offset="50" data-wow-delay="0.3s"><i class="fa fa-phone"></i><span> Phone</span>+91 98860 23486</p>
                    </div>
                    <div class="col-md-3 col-sm-4 col-xs-12">
                        <p class="wow bounceIn" data-wow-offset="50" data-wow-delay="0.3s"><i class="fa fa-envelope-o"></i><a href="www.hidecorcurtains.com"> www.hidecorcurtains.com</a></p>
                    </div>
                   
                </div>
            </div>
            
						 <ul class="navbar navbar-inverse">
						   <div class="container-fuild">
						   <ul class="nav navbar-nav">
						       <li><a class="active" href="frontpage.aspx" style="position: relative"><i class="fa fa-fw fa-home"></i> Home</a> </li>
  <li><a href="item.aspx"><i class="fa fa-fw fa-search"></i> Category</a> </li>
  <li><a href="contact.aspx"><i class="fa fa-fw fa-envelope"></i> Contact</a></li> 
  <li><a href="clogin.aspx"><i class="fa fa-fw fa-user"></i> Login</a></li>
</ul>
</div>
						<%--<a href="mainpage.aspx">HOME</a>&nbsp; &nbsp;  
						<a href="about.aspx">ABOUT US</a>
						<a href="item.aspx">CATEGORY</a>
						<a href="feedback.aspx">FEEDBACK</a>
						<a href="contact.aspx">CONTACT US</a>
						<%--<li><a href="#team">TEAM</a></li>--%>
						<%--<li><a href="#service">SERVICE</a></li>--%>
						<%--<li><a href="#portfolio">PORTFOLIO</a></li>--%>
						</ul>
						<%--<a href="contact.aspx">CONTACT</a>
						
					</ul>--%>
<%--				</div>
			</div>--%>
			
	<%--	</nav>--%>
    <!-- end navigation -->
    <!-- start home -->
    <section id="home">
    	<%--	<div class="container">--%>
    			<%--<div class="row">
    				<div class="col-md-offset-2 col-md-8">--%>
    				<%--<h1 class="wow fadeIn" data-wow-offset="50" data-wow-delay="0.3s"><span style="color:white; font-weight:normal" ></span> </h1>
    				<h1 class="wow fadeIn" data-wow-offset="50" data-wow-delay="0.3s"><span style="color:white; font-weight:normal" ></span> </h1>
    				<h1 class="wow fadeIn" data-wow-offset="50" data-wow-delay="0.3s"><span style="color:white; font-weight:normal" ></span> </h1>--%>
    			
    				<%--	<h1 class="wow fadeIn" data-wow-offset="50" data-wow-delay="0.3s"><span style="color:floroscent; font-weight:normal" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Welcome to</span> </h1>
    					--%><br/>
    					<br/>
    					<br/>
    					<br/><br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    					<%--<div class="element">
                            <div class="sub-element">Hello, This is a HTML Website.</div>
                            <div class="sub-element">Awesome Website is Designed and provided by Giri Designs.</div>
                            <div class="sub-element">If you need this website, Please contact us.</div>
                        </div>--%>
    					&nbsp;&nbsp;&nbsp;<a data-scroll href="registration.aspx" class="btn btn-default wow fadeInUp" data-wow-offset="50" data-wow-delay="0.0s">Create account?</a>
    					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a data-scroll href="clogin.aspx" class="btn btn-default wow fadeInUp" data-wow-offset="50" data-wow-delay="0.0s">Already member?</a>
    					
    		<%--		</div>
    			</div>
    		</div>--%>
    	</section>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Online Decor Shopping&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp;<a class="btn btn-default wow fadeInUp" data-scroll="" data-wow-delay="0.0s"
            data-wow-offset="50" href="registration.aspx" style="left: 587px; position: relative;
            top: -231px"></a><a class="btn btn-default wow fadeInUp" data-scroll="" data-wow-delay="0.0s"
                data-wow-offset="50" href="clogin.aspx" style="left: 417px; position: relative;
                top: -171px"></a><a class="btn btn-default wow fadeInUp" data-scroll="" data-wow-delay="0.0s"
                    data-wow-offset="50" href="Home.aspx" style="left: 243px; width: 103px; position: relative;
                    top: -107px"></a>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;<footer id="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                    <div class="newspaper1">


<br />
<i class="material-icons">location_on</i> &nbsp;HI-DECOR
1-1-91C(3),"Ramnath",Near CorpBank ATM
Udupi-Manipal Road,Kunjibettu,Udupi-576102
Ph:0820-4294999,9886023486
<br />
                        <p class="wow bounceIn" data-wow-offset="50" data-wow-delay="0.3s">
                         &copy; Copyright 2019. ONLINE DECOR SHOPPING</p>
                         </div>
                    </div>
                </div>
            </div>
        </footer>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p>
            &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        </p>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
</body>
</html>
