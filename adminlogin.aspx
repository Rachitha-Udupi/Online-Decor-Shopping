<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
 <link rel="stylesheet" href="adminstyle.css" />
<script language="javascript" type="text/javascript">
// <!CDATA[



// ]]>
</script>
</head>
<body>
    <form id="form1" runat="server">
     &nbsp;<div class="login-wrap">
	<div class="login-html" aligh="center">
		<%--<input id="tab-1" type="radio" name="tab" class="sign-in" onclick="return tab-1_onclick()"/><label for="tab-1" class="tab">Sign In</label>--%>
		<input id="tab-2" type="radio" name="tab" class="sign-up" checked="CHECKED" onclick="return tab-2_onclick()"/><label for="tab-2" class="tab" style="width: 106px; color: highlight; text-align: center"><span
            style="color: red">ADMIN </span></label>
        <div class="login-form">
			<div class="sign-in-htm">
				<div class="group">
			
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Username"  CssClass="input"></asp:TextBox> 
                   
				</div>
             
				<div class="group">
					<%--<label for="pass" class="label">Password</label>--%>
					   
					   
					 <input type="checkbox" onchange="document.getElementById('password').type = this.checked ? 'text' : 'password'"/> show password
                        
				</div>
			
				<div class="group">
                   
				</div>
				<div class="hr"></div>
				<%--<div class="foot-lnk">
					<a href="forgotpassword.aspx">Forgot Password?</a>
				</div--%>>
			</div>
			<div class="sign-up-htm" style="left: 0px; top: 0px; height: 944px">
			<div class="group">
			
                    <asp:TextBox ID="TextBox3" runat="server" placeholder="Username"  CssClass="input" Width="228px" ForeColor="Black"></asp:TextBox> 
                   
				</div>
             
				<div class="group">
					<%--<label for="pass" class="label">Password</label>--%>
					   <asp:TextBox ID="pass" runat="server" placeholder="Password" CssClass="input" TextMode="Password" Width="230px" ForeColor="Black" ></asp:TextBox>&nbsp;<asp:CheckBox
                           ID="CheckBox1" runat="server" AutoPostBack="True" ForeColor="Red" OnCheckedChanged="CheckBox1_CheckedChanged"
                           Style="left: 17px; position: relative; top: 0px" Text="Show Password" /></div>
			
				
                 	<div class="group">
                         &nbsp;<asp:Button ID="Button1" runat="server" Text="Login" CssClass ="button"  Width="188px" style="left: 87px; position: relative; top: 0px" Font-Bold="True" Font-Names="Constantia" Font-Size="1.3em" ForeColor="White" OnClick="Button1_Click" />
                &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                         &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
               &nbsp;&nbsp;<br />
                <br />
                <br />
                <br />
				</div> 
				</div>
			</div>
		</div>
         <br />
         <br />
	

  
    </form>
</body>
</html>

