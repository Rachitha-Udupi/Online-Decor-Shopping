<%@ Page Language="C#" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="changepassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link rel="stylesheet" href="login.css" />
</head>
<body>
    <form id="form1" runat="server">
     
        &nbsp;<div class="login-wrap">
	<div class="login-html">
		
		
		<div class="login-form">
           <input id="tab-2" type="radio" name="tab" class="sign-up" checked="CHECKED" onclick="return tab-2_onclick()"/><label for="tab-2" class="tab" style="width: 317px; color: highlight; text-align: center">Change Password</label>
				<div class="group">
                    <br />
			
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Username" CssClass="input"  Width="385px" ></asp:TextBox> 
                   
				</div>
             
				<div class="group">
					<%--<label for="pass" class="label">Password</label>--%>
					   <asp:TextBox ID="TextBox2" runat="server" placeholder="Old Password" CssClass="input" TextMode="Password" Width="385px"></asp:TextBox>
					   
					 
                        
				</div>
				<div class="group">
					<%--<label for="pass" class="label">Password</label>--%>
					   <asp:TextBox ID="TextBox3" runat="server" placeholder="New Password" CssClass="input" TextMode="Password" Width="385px"></asp:TextBox>
                        
				</div>
				<div class="group">
                    <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged"
                        Style="left: 7px; position: relative; top: -14px" Text="Show Password" />
                    <br />
					   <asp:TextBox ID="TextBox4" runat="server" placeholder="Confirm Password" CssClass="input" TextMode="Password" Width="385px"></asp:TextBox>
                        
				</div>
			
				<div class="group">
                    <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox2_CheckedChanged"
                        Style="left: 4px; position: relative; top: -15px" Text="Show Password" />
                    <asp:Button ID="Button1" runat="server" Text="Submit"  CssClass="button" Width="420px" OnClick="Button1_Click1"  />
				</div>
				<div class="hr"></div>
				
				
				</div>
				</div>
				</div>
			</form>
			
</body>
</html>
