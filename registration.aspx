<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <link rel="stylesheet" href="regstyle.css"/>
<script language="javascript" type="text/javascript">
// <!CDATA[

function Checkbox1_onclick() {

}

// ]]>
</script>
</head>
<body>
    <form id="form1" runat="server">
        &nbsp;<div class="login-wrap">
	<div class="login-html">
		<%--<input id="tab-1" type="radio" name="tab" class="sign-in" onclick="return tab-1_onclick()"/><label for="tab-1" class="tab">Sign In</label>--%>
		<input id="tab-2" type="radio" name="tab" class="sign-up" checked="CHECKED" onclick="return tab-2_onclick()"/><label for="tab-2" class="tab" style="font-weight: bold; color: #000099; font-family: Constantia">Sign Up</label>
		<div class="login-form">
			<div class="sign-in-htm">
				<div class="group">
			
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Username"  CssClass="input"></asp:TextBox> 
                   
				</div>
             
				<div class="group">
					<%--<label for="pass" class="label">Password</label>--%>
					   <asp:TextBox ID="password" runat="server" placeholder="Password" CssClass="input" TextMode="Password"></asp:TextBox>
					   
					 <input type="checkbox" onchange="document.getElementById('password').type = this.checked ? 'text' : 'password'"/> show password
                        
				</div>
			
				<div class="group">
                    <asp:Button ID="Button1" runat="server" Text="Login"  CssClass="button"  />
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					<a href="forgetpassword.aspx">Forgot Password?</a>
				</div>
			</div>
			<div class="sign-up-htm" style="left: 0px; top: 0px; height: 944px">
			<div class="group">
				<%--	<label for="user" class="label" >First name</label>--%>
                    <asp:TextBox ID="TextBox8" runat="server" placeholder="First name"  CssClass="input" Font-Names="Bookman Old Style" Width="385px"></asp:TextBox> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox8" runat="server" ErrorMessage="Enter First name" ForeColor="DarkBlue" Font-Names="Bookman Old Style"></asp:RequiredFieldValidator>
                &nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox8"
                    ErrorMessage="Enter only alphabets" Font-Names="Bookman Old Style" Font-Size="12pt"
                    ForeColor="DarkBlue" ValidationExpression='"^[A-Za-z]"'></asp:RegularExpressionValidator></div>
				<div class="group">
				<%--	<label for="user" class="label">Last name</label>--%>
					<asp:TextBox ID="TextBox7" runat="server" placeholder="Last name" CssClass="input" Font-Names="Bookman Old Style" Width="385px"></asp:TextBox>  
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox7"
                        ErrorMessage="Enter only alphabets" Font-Names="Bookman Old Style" Font-Size="12pt"
                        ForeColor="DarkBlue" Style="left: 152px; position: relative; top: 1px" ValidationExpression='"^[A-Za-z]"'></asp:RegularExpressionValidator><br />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>
				<div class="group">
				<%--	<label for="user" class="label">Username</label>--%>
                    <asp:TextBox ID="TextBox3" runat="server" placeholder="Username" CssClass="input" Font-Names="Bookman Old Style" Width="385px"></asp:TextBox>   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="TextBox3" runat="server" ErrorMessage="Enter username" ForeColor="Navy" Font-Names="Bookman Old Style"></asp:RequiredFieldValidator>  
				</div>
					<div class="group">
				<%--	<label for="user" class="label">Last name</label>--%>
                        <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" GroupName ="n" OnCheckedChanged="RadioButton1_CheckedChanged" Font-Names="Bookman Old Style" ForeColor="DarkBlue"  /> 
                        <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" GroupName ="n" OnCheckedChanged="RadioButton2_CheckedChanged" Font-Names="Bookman Old Style" ForeColor="DarkBlue" />
					</div>
				
				<div class="group">
					<%--<label for="user" class="label">Mobile</label>--%>
                    <asp:TextBox ID="TextBox9" runat="server" placeholder="Contact number" CssClass="input" Font-Names="Bookman Old Style" Width="385px" ></asp:TextBox>   <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="TextBox9" runat="server" ErrorMessage="Enter contact number" ForeColor="DarkBlue" Font-Names="Bookman Old Style"></asp:RequiredFieldValidator><asp:RegularExpressionValidator
                        ID="RegularExpressionValidator3" runat="server" ErrorMessage="Invalid Number" ControlToValidate="TextBox9" ValidationExpression="^[0-9]{10}$" ForeColor="DarkBlue" Font-Names="Bookman Old Style"></asp:RegularExpressionValidator>
				</div>
				<div class="group">
					<%--<label for="pass" class="label">Email Address</label>--%>
                    <asp:TextBox ID="TextBox6" runat="server" placeholder="Email" CssClass="input" Font-Names="Bookman Old Style" Width="385px"></asp:TextBox>   <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="TextBox6" runat="server" ErrorMessage="Please Enter your email id" ForeColor="DarkBlue" Font-Names="Bookman Old Style"></asp:RequiredFieldValidator><asp:RegularExpressionValidator
                        ID="RegularExpressionValidator2" ControlToValidate="TextBox6" runat="server" ErrorMessage="Invalid Email" SetFocusOnError="false" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="DarkBlue" Font-Names="Bookman Old Style"></asp:RegularExpressionValidator>

				</div>
				<div class="group">
					<%--<label for="pass" class="label">Password</label>--%>
                    <asp:TextBox ID="TextBox2" CssClass="input" TextMode="Password" placeholder="Password" runat="server" Font-Names="Bookman Old Style" Width="385px"></asp:TextBox>
                    &nbsp; &nbsp; <span
                        style="font-family: Bookman Old Style">&nbsp;<asp:CheckBox ID="CheckBox1"
                        runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged"
                        Text="Show Password" ForeColor="DarkBlue" /></span>&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="TextBox2" runat="server" ErrorMessage="Please Enter your password" ForeColor="DarkBlue" Font-Names="Bookman Old Style"></asp:RequiredFieldValidator>&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2"
                        ErrorMessage="Password length must be more than 7 characters" ValidationExpression="^[a-zA-Z0-9'@&#.\s]{7,15}$" ForeColor="DarkBlue" Font-Names="Bookman Old Style"></asp:RegularExpressionValidator></div>
					<%--<div class="group">
				<input id="check" type="checkbox" class="check" checked="checked"/>
                    
					<label for="check"><span class="icon" style="left: 0px; top: 0px"></span></label>
				</div>--%>
				<div class="group" >
					<%--<label for="pass" class="label">Confirm PassworD</label>--%>
                    <asp:TextBox ID="TextBox5" runat="server" placeholder="Confirm password" CssClass="input" TextMode="Password" Font-Names="Bookman Old Style" Width="386px"></asp:TextBox>&nbsp; &nbsp;&nbsp;
                    <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox2_CheckedChanged"
                        Text="Show Password" ForeColor="DarkBlue" /><span
                        style="font-family: Bookman Old Style"> </span>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="TextBox5" runat="server" ErrorMessage="Please Enter the password again" ForeColor="DarkBlue" Font-Names="Bookman Old Style"></asp:RequiredFieldValidator><asp:CompareValidator
                        ID="CompareValidator1" runat="server" ErrorMessage="Password do not match" ControlToValidate="TextBox5" ControlToCompare="TextBox2" ForeColor="DarkBlue" Font-Names="Bookman Old Style"></asp:CompareValidator>
				</div>
				<div class="group">
				
                    
                    <asp:TextBox ID="TextBox4" runat="server" placeholder="Permanenet address" CssClass="input" TextMode="Multiline" Font-Names="Bookman Old Style" Width="385px"></asp:TextBox>&nbsp; &nbsp;
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox4" runat="server" ErrorMessage="Please Enter the address" ForeColor="DarkBlue" Font-Names="Bookman Old Style"></asp:RequiredFieldValidator>
                    </div>
                    <div class="group">
                        <asp:TextBox ID="TextBox10" runat="server" placeholder="City" CssClass="input" TextMode="Singleline" Font-Names="Bookman Old Style" Width="385px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox10" runat="server" ErrorMessage="Please Enter the City" ForeColor="DarkBlue" Font-Names="Bookman Old Style"></asp:RequiredFieldValidator>
                    </div>
                    
                    <div class="group">
                        <asp:TextBox ID="TextBox11" runat="server"  placeholder="State" CssClass="input" TextMode="Singleline" Font-Names="Bookman Old Style" Width="385px" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TextBox11" runat="server" ErrorMessage="Please Enter the State" ForeColor="DarkBlue" Font-Names="Bookman Old Style"></asp:RequiredFieldValidator>
                    </div>
                    <div class="group">
                        <asp:TextBox ID="TextBox12" runat="server" placeholder="Pincode" CssClass="input" TextMode="Singleline" Font-Names="Bookman Old Style" Width="385px" ></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="TextBox12" runat="server" ErrorMessage="Please Enter the Pincode" ForeColor="DarkBlue" Font-Names="Bookman Old Style"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <br />
                        <div class="group">
                        <asp:TextBox ID="TextBox13" runat="server" Width="385px" placeholder="Enter your secret number" CssClass ="input" TextMode ="singleline"  ForeColor="lavender" Font-Names="Bookman Old Style"></asp:TextBox><br />
                            &nbsp;</div>
                    </div> 
			
				<div class="group">
				
                 
<asp:Button ID="Button2"  runat="server" Text="Register" OnClick="Button2_Click" CssClass="button" Font-Names="Bookman Old Style" Width="385px" /></div>
                &nbsp;&nbsp;&nbsp;<a href="Default.aspx"></a>
                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Blue" NavigateUrl="~/clogin.aspx">Already have an account?</asp:HyperLink><br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </div>
		</div>
	</div>

  
  </form>
</body>
</html>
