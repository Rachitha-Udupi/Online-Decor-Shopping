<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgetpassword.aspx.cs" Inherits="forgetpassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>forget password</title>
   <link rel="stylesheet" type="text/css" href="forpas.css" />
  
<script language="javascript" type="text/javascript">
// <!CDATA[



function Text2_onclick() {

}

// ]]>
</script>
</head>
<body background="loginbackground.jpg">
    <form id="form1" runat="server">
    <div>
    <div class="login-wrap">
    <div class="login-form">
			<div class="sign-in-htm">
				<div class="group">
    <h1>
        <span style="font-size: 1em; color: #ffffff; font-family: Bookman Old Style">FORGET PASSWORD</span></h1>
    <p>
        <span style="font-size: 1em; color: #ffffff; font-family: Bookman Old Style"></span></p>
        <asp:TextBox ID="TextBox1" runat="server" Width="246px" Placeholder="UserName" CssClass="input" style="left: 72px; position: relative; top: 0px"></asp:TextBox>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="input" Style="left: 71px; position: relative;
                        top: 22px" Width="246px"></asp:TextBox><br />
        <br />
        <br />
    <p>
        <span style="font-size: 1em; color: #ffffff; font-family: Bookman Old Style"></span></p>
        <span style="font-size: 1em; color: #ffffff; font-family: Bookman Old Style">
            <asp:TextBox ID="TextBox2" runat="server" Width="238px" Placeholder="Enter your secret number" CssClass="input" style="left: 77px; position: relative; top: -9px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;<br />
            <br />
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp;<asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Bookman Old Style"
                Font-Size="1em" Text="OK" OnClick="Button1_Click" Width="137px" CssClass="button" style="left: 162px; position: relative; top: -27px"/>
            &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Send to email..</asp:LinkButton><br />
        </span>
        </div> 
        </div> 
        </div> 
        </div> 
        
        </div>
    </form>
</body>
</html>
