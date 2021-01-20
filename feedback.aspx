<%@ Page Language="C#" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
     <link rel="Stylesheet" href="feedback.css" />
</head>
<body bgcolor="#000000" background="bckk.jpg">
    <form id="form1" runat="server">
      <div class="login-wrap">
    <div class="login-form">
			<div class="sign-in-htm">
				<div class="group">
               <h1>
            <span style="font-family: Constantia">&nbsp; &nbsp; &nbsp; </span></h1>
                    <h1>
                        &nbsp; &nbsp; <span style="color: #ffffff; font-family: Constantia">What would you like to see next from us?</span></h1>
        <h3>
            <span style="font-family: Constantia; color: #ffffff;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Got a item or idea suggestion? We're all ears.</span></h3>
            <p>
                <span style="font-family: Constantia"></span>&nbsp;</p>
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Username" CssClass="input" BorderColor="Fuchsia" style="left: 72px; position: relative; top: -15px" BorderStyle="Solid" Width="274px" ></asp:TextBox><br />
            <asp:TextBox ID="TextBox2" runat="server" placeholder="Email" CssClass="input" BorderColor="Fuchsia" style="left: 72px; position: relative; top: -4px" BorderStyle="Solid" Width="272px"></asp:TextBox><br />
            <asp:TextBox ID="TextBox3" runat="server" placeholder="Tell us why you would like this idea" CssClass="input" BorderColor="Fuchsia" style="left: 70px; position: relative; top: 4px" Height="112px" TextMode="MultiLine" Width="502px" BorderStyle="Solid"></asp:TextBox>  
            <asp:Button ID="Button1" runat="server" Text="SUBMIT" CssClass="button" style="left: 145px; position: relative; top: 39px" Font-Bold="True" Font-Names="Constantia" Font-Size="1.3em" ForeColor="#FFFFFF" OnClick="Button1_Click" />    
      
    </div>
    </div> 
    </div> 
    </div> 
    </form>
</body>
</html>
