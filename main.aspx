<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="main" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body background="back.jpg">
    <form id="form1" runat="server">
    <div>
    <p>ADMIN</p>
        <asp:ImageButton ID="ImageButton1" runat="server" Height="120px" ImageUrl="~/admin.jpg" OnClick="ImageButton1_Click" Width="98px" />
        <p>LOGISTIC</p>
        <asp:ImageButton ID="ImageButton2" runat="server" Height="120px" ImageUrl="~/logistic.png" OnClick="ImageButton2_Click" Width="98px" />
        <p>CUSTOMER LOGIN/SIGN UP</p>
        <asp:ImageButton ID="ImageButton3" runat="server" Height="115px" ImageUrl="~/log.jpg" OnClick="ImageButton3_Click" Width="146px" /></div>
    </form>
</body>
</html>
