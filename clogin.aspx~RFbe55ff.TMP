<%@ Page Language="C#" AutoEventWireup="true" CodeFile="clogin.aspx.cs" Inherits="clogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link rel="stylesheet" href="login.css" />
<script language="javascript" type="text/javascript">
// <!CDATA[

function Checkbox1_onclick() {

}

// ]]>
</script>
</head>
<body>
    <form id="form1" runat="server">
        .&nbsp;<div class="login-wrap">
	<div class="login-html">
		<%--<input id="tab-1" type="radio" name="tab" class="sign-in" onclick="return tab-1_onclick()"/><label for="tab-1" class="tab">Sign In</label>--%>
		<input id="tab-2" type="radio" name="tab" class="sign-up" checked="CHECKED" onclick="return tab-2_onclick()"/><label for="tab-2" class="tab" style="width: 90px; color: highlight; text-align: center">Login</label>
		<div class="login-form">
			<div class="sign-in-htm">
				<div class="group">
			
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Username"  CssClass="input"></asp:TextBox> 
                   
				</div>
             
				<div class="group">
					<%--<label for="pass" class="label">Password</label>--%>
					   <asp:TextBox ID="TextBox4" runat="server" placeholder="Password" CssClass="input" TextMode="Password"></asp:TextBox>
					   
					 <input type="checkbox" onchange="document.getElementById('password').type = this.checked ? 'text' : 'password'"/> show password
                        
				</div>
			
				<div class="group">
                    <asp:Button ID="Button1" runat="server" Text="Login"  CssClass="button" OnClick="Button1_Click"  />
				</div>
				<div class="hr"></div>
				<%--<div class="foot-lnk">
					<a href="forgotpassword.aspx">Forgot Password?</a>
				</div--%>>
			</div>
			<div class="sign-up-htm" style="left: 0px; top: 0px; height: 944px">
			<div class="group">
			
                    <asp:TextBox ID="TextBox3" runat="server" placeholder="Username"  CssClass="input" Width="385px"></asp:TextBox> 
                   
				</div>
             
				<div class="group">
					<%--<label for="pass" class="label">Password</label>--%>
					   <asp:TextBox ID="password" runat="server" placeholder="Password" CssClass="input" TextMode="Password" Width="385px"></asp:TextBox>
					   
					 <input type="checkbox" onchange="document.getElementById('password').type = this.checked ? 'text' : 'password'" id="Checkbox1" onclick="return Checkbox1_onclick()"/> 
                    <span style="color: #ffcccc">show password </span>
                        
				</div>
			
				
                 	<div class="group">
           <asp:Button ID="Button2"  runat="server" Text="Login" OnClick="Button2_Click" CssClass="button" Width="429px" /></div>
                &nbsp;&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Blue" NavigateUrl="~/forgetpassword.aspx">Forget password?</asp:HyperLink>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="Blue" NavigateUrl="~/registration.aspx">Create Account?</asp:HyperLink>&nbsp;
                <br />
                <br />
                <br />
                <br />
                
				</div> 
				</div>
			</div>
		</div>
	

  
    </form>
</body>
</html>
