<%@ Page Language="C#" AutoEventWireup="true" CodeFile="recoverpass.aspx.cs" Inherits="recoverpass" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link rel ="stylesheet" href ="login.css" />
     
<script language="javascript" type="text/javascript">
// <!CDATA[

function Checkbox1_onclick() {

}

function Checkbox1_onclick() {

}

function Checkbox1_onclick() {

}

// ]]>
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="login-html" style="left: 35%; top: 15%">
    <div class="group">
        <span style="color: #ffffff; font-family: Bookman Old Style"></span>
			
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Username"   Width="385px" style="left: 0px; position: relative; top: -2px" ></asp:TextBox> 
                   
				</div>
             
				<div class="group">
					<%--<label for="pass" class="label">Password</label>--%>
                    &nbsp;</div>
				<div class="group">
					<%--<label for="pass" class="label">Password</label>--%>
					   <asp:TextBox ID="TextBox3" runat="server" placeholder="New Password" CssClass="input"  TextMode="Password" Width="385px"></asp:TextBox>&nbsp;&nbsp;
                    &nbsp;
                    <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged"
                        Text="Show Password" /><br />
                    &nbsp;
					<%--<label for="pass" class="label">Password</label>--%>
                    <br />
					   <asp:TextBox ID="TextBox4" runat="server" placeholder="Confirm Password" CssClass="input" TextMode="Password" Width="385px"></asp:TextBox>&nbsp;&nbsp;
                    &nbsp;
                    <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox2_CheckedChanged"
                        Text="Show Password" /></div>
				<div class="group">
                     
			
				<div class="group">
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Submit"  CssClass="button" Width="420px" OnClick="Button1_Click"  />
				</div>
				<div class="hr"></div>
				
				
				</div>
				</div>
				</div> 
    <h1>
        <span style="font-size: 1em; color: #ffffff; font-family: Bookman Old Style">&nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></h1>
        <h1>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; <span style="font-size: 1em; color: #ffffff; font-family: Bookman Old Style">
                Recover
            Password<br />
                &nbsp;&nbsp; </span>
    <p>
        <span style="font-size: 1em; color: #ffffff; font-family: Bookman Old Style"></span></p>
        <span style="font-size: 1em; color: #ffffff; font-family: Bookman Old Style">
            &nbsp;<br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            <br />
        </span>
        </h1>
    
   
   </form> 
</body>
</html>
