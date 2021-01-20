<%@ Page Language="C#" AutoEventWireup="true" CodeFile="categorypage.aspx.cs" Inherits="categorypage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link rel="Stylesheet" href="navbar.css" />
    <link rel="Stylesheet" href="categorybtn.css" />
    <link rel="Stylesheet" href="logo.css" />
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
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1500px;
  max-height:1000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.input {
  
  font-size: 25px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 30%;
  height:10%;
  text-align: center;
 
  background-color:Grey;
  opacity:0.6;
  left:36%;
}

<%--/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}--%>

/* The dots/bullets/indicators */
.dot {
  height: 10px;
  width: 10px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <h1 class="glow">
        
        <span style="font-size: 0.8em; font-family: Constantia; background-color: black;">Online Decor Shopping</span></h1>
        <p>
            <span style="font-size: 0.8em; font-family: Constantia; background-color: black"></span>
            &nbsp;</p>
            <div class="topnav" id="myTopnav" style="align:center;">

 

  <a href="mainpage.aspx" class="active" style="width:130px;"><span style="color: black">
      Home</span></a>

  <a href="about.aspx" style="width:130px; color: #000000;"><span>About</span> <span>us</span></a>
  
  <a href="" style="width:130px; color: #000000;"><span style="color: black">Contact us</span></a>
  <a href="about.aspx" style="width:130px; color: #000000;"><span>Category</span></a>
    
 

  </div>
        
    <div class="slideshow-container">

<div class="mySlides fade">
  
  <img src="curtains.jpg" style="height:600px;" onkeydown="~/curtains.aspx">
  <a href="curtains.aspx"> </a>
 
    
</div>

<div class="mySlides fade">

  <img src="blinds.jpg" style="height:600px;">
  <a href="Blinds.aspx" ></a>
  
     
</div>

<div class="mySlides fade">
 
  <img src="carpet.jpg" style="height:600px;">
 <a href="carpets.aspx"></a>
     
</div>

<div class="mySlides fade">
  
  <img src="wallpaper.jpg" style="height:600px;" onclick="wallpaper.aspx">
<a href="wallpaper.aspx" ></a>
     
</div>

<div class="mySlides fade">
  
  <img src="lights.jpg" style="height:600px;">
  <a href="lights.aspx"></a>
</div>

<div class="mySlides fade">
 
  <img src="decorative.jpg" style="height:600px;">
 <a href="decorative.aspx"></a>
    
    <br />
</div>
</div>


<div style="text-align:center">
    <asp:Button ID="Button1" runat="server" Text="View Category" style="font-variant: small-caps" BackColor="#99FFFF" Font-Bold="True" ForeColor="#000000" OnClick="Button1_Click" />
  <br />
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
   <span class="dot"></span> 
    <span class="dot"></span> 
     <span class="dot"></span> 
</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>

  
    </form>
</body>
</html>
