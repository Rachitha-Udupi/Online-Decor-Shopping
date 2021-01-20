<%@ Page Language="C#" AutoEventWireup="true" CodeFile="category.aspx.cs" Inherits="category" %>

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
    
</head>
<body bgcolor="buttonface">
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
  <a href="category.aspx" style="width:130px; color: #000000;"><span>Category</span></a>
    
 

  </div>
        <asp:Panel ID="Panel3" runat="server">
        
        </asp:Panel>
        <asp:Panel ID="Panel1" runat="server" >
       
            <img src="logo.jpg" alt="logo" style="left: 157px; position: relative; top: -250px; width: 123px; height: 119px;" />&nbsp;</asp:Panel>
             <asp:Panel ID="Panel2" runat="server">
            <br />
            <div style="text-align: center">
                <table border="0" cellpadding="5" cellspacing="10" style="background-color: transparent">
                    <tr>
                        <td style="width: 140px; height: 137px">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/curt.gif" Height="300px" /></td>
                        <td style="width: 140px; height: 137px">
                            <asp:Image ID="Image3" runat="server" Height="320px" ImageUrl="~/bli.gif" /></td>
                        <td style="width: 140px; height: 137px">
                            <asp:Image ID="Image6" runat="server" ImageUrl="~/crp.gif" Width="280px" />
                            <asp:Image ID="Image7" runat="server" ForeColor="Black" Height="30px" ImageUrl="~/black.jpg"
                                Style="left: 1px; position: relative; top: -27px" Width="288px" /></td>
                        <td style="width: 140px; height: 137px">
                            <asp:Image ID="Image5" runat="server" Height="280px" ImageUrl="~/wall.gif" Width="280px" /></td>
                        <td style="width: 140px; height: 137px">
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/lit.png" /></td>
                        <td style="width: 258px; height: 137px">
                            <asp:Image ID="Image4" runat="server" ImageUrl="~/vas.gif" /></td>
                        <td style="width: 140px; height: 137px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 140px; height: 137px;">
                            &nbsp;<asp:Button ID="Button1" runat="server" CssClass="input" Text="Curtains" OnClick="Button1_Click" /></td>
                        <td style="width: 140px; height: 137px;">
                            &nbsp;<asp:Button ID="Button2" runat="server" CssClass="input" Text="Blinds" OnClick="Button2_Click" /></td>
                        <td style="width: 140px; height: 137px;">
                            &nbsp;<asp:Button ID="Button3" runat="server" CssClass="input" Text="Carpets" OnClick="Button3_Click" /></td>
                        <td style="width: 140px; height: 137px;">
                            &nbsp;<asp:Button ID="Button4" runat="server" CssClass="input" Text="Wallpaper" OnClick="Button4_Click" /></td>
                        <td style="width: 140px; height: 137px;">
                            &nbsp;<asp:Button ID="Button5" runat="server" CssClass="input" Text="Lights" OnClick="Button5_Click" /></td>
                        <td style="width: 258px; height: 137px;">
                            &nbsp;<asp:Button ID="Button6" runat="server" CssClass="input" Text="Decorative items" OnClick="Button6_Click" Width="262px" /></td>
                        <td style="width: 140px; height: 137px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 140px">
                            &nbsp;<asp:Button ID="Button28" runat="server" CssClass="input" Text="ALL" Height="84px" Width="172px" OnClick="Button28_Click" /></td>
                        <td style="width: 140px">
                            &nbsp;<asp:Button ID="Button7" runat="server" Text="Single Rod Curtains" CssClass="input" Width="276px" OnClick="Button7_Click" /></td>
                        <td style="width: 140px">
                            <asp:Button ID="Button8" runat="server" Text="Double Rod Curtains" CssClass="input" Width="276px" OnClick="Button8_Click" />&nbsp;</td>
                        <td style="width: 276px">
                            <asp:Button ID="Button9" runat="server" Text="Triple Rod Curtains" CssClass="input" Width="276px" OnClick="Button9_Click" /></td>
                        <td style="width: 276px">
                            </td>
                        <td style="width: 258px">
                            </td>
                        <td style="width: 276px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 140px; text-align: center;">
                            <asp:Button ID="Button29" runat="server" CssClass="input" Text="ALL" Width="166px" OnClick="Button29_Click" /></td>
                        <td style="width: 140px; text-align: center;">
                            <asp:Button ID="Button10" runat="server" CssClass="input" Text="Vertical Blinds" OnClick="Button10_Click" />&nbsp;</td>
                        <td style="width: 140px; text-align: center;">
                            <asp:Button ID="Button11" runat="server" CssClass="input" Text="Roler Blinds" OnClick="Button11_Click" /></td>
                        <td style="width: 140px; text-align: center;">
                            <asp:Button ID="Button12" runat="server" CssClass="input" Text="Wood Blinds" OnClick="Button12_Click" /></td>
                        <td style="width: 140px">
                            <asp:Button ID="Button13" runat="server" CssClass="input" Text="PVC Blinds" OnClick="Button13_Click" /></td>
                        <td style="width: 258px">
                            <asp:Button ID="Button14" runat="server" CssClass="input" Text="Zebra Blinds" OnClick="Button14_Click" /></td>
                        <td style="width: 140px">
                            <asp:Button ID="Button15" runat="server" CssClass="input" Text="Roman Blinds" OnClick="Button15_Click" /></td>
                    </tr>
                    <tr>
                        <td style="width: 140px">
                            <asp:Button ID="Button30" runat="server" CssClass="input" Text="ALL" Width="170px" OnClick="Button30_Click" /></td>
                        <td style="width: 140px">
                            <asp:Button ID="Button16" runat="server" CssClass="input" Text="Coir Carpet" OnClick="Button16_Click" /></td>
                        <td style="width: 140px">
                            <asp:Button ID="Button17" runat="server" CssClass="input" Text="Non Wooven Carpet"
                                Width="250px" OnClick="Button17_Click" /></td>
                        <td style="width: 140px">
                            <asp:Button ID="Button18" runat="server" CssClass="input" Text="Cotton Mat" OnClick="Button18_Click" /></td>
                        <td style="width: 140px">
                            <asp:Button ID="Button19" runat="server" CssClass="input" Text="PVC Mat" OnClick="Button19_Click" /></td>
                        <td style="width: 258px">
                            <asp:Button ID="Button20" runat="server" CssClass="input" Text="Vinyle Carpet" /></td>
                        <td style="width: 140px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 140px">
                        </td>
                        <td style="width: 140px">
                        </td>
                        <td style="width: 140px">
                        </td>
                        <td style="width: 140px">
                            <asp:Button ID="Button21" runat="server" CssClass="input" Text="Wallpaper Coverings"
                                Width="274px" /></td>
                        <td style="width: 140px">
                        </td>
                        <td style="width: 258px">
                        </td>
                        <td style="width: 140px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 140px; height: 124px">
                            <asp:Button ID="Button31" runat="server" CssClass="input" Text="ALL" Width="158px" OnClick="Button31_Click" /></td>
                        <td style="width: 140px; height: 124px">
                            <asp:Button ID="Button22" runat="server" CssClass="input" Text="Hanging Lights" OnClick="Button22_Click" /></td>
                        <td style="width: 140px; height: 124px">
                            <asp:Button ID="Button23" runat="server" CssClass="input" Text="Wall Lights" OnClick="Button23_Click" /></td>
                        <td style="width: 140px; height: 124px">
                            <asp:Button ID="Button24" runat="server" CssClass="input" Text="Surface Lights" OnClick="Button24_Click" /></td>
                        <td style="width: 140px; height: 124px">
                            <asp:Button ID="Button25" runat="server" CssClass="input" Text="Gate Lights" OnClick="Button25_Click" /></td>
                        <td style="width: 258px; height: 124px">
                        </td>
                        <td style="width: 140px; height: 124px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 140px; height: 133px">
                            <asp:Button ID="Button32" runat="server" CssClass="input" Text="ALL" Width="156px" OnClick="Button32_Click" /></td>
                        <td style="width: 140px; height: 133px">
                            <asp:Button ID="Button26" runat="server" CssClass="input" Text="Vase" OnClick="Button26_Click" /></td>
                        <td style="width: 140px; height: 133px">
                            <asp:Button ID="Button27" runat="server" CssClass="input" Text="Showcase Items" Width="240px" OnClick="Button27_Click" /></td>
                        <td style="width: 140px; height: 133px">
                        </td>
                        <td style="width: 140px; height: 133px">
                        </td>
                        <td style="width: 258px; height: 133px">
                        </td>
                        <td style="width: 140px; height: 133px">
                        </td>
                    </tr>
                </table>
                </div>
                </asp:Panel>
            
            <br />
            
            <br />
             
       
        
        
    
     
 

  
    </form>
</body>
</html>
