<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editcategory.aspx.cs" Inherits="editcategory" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
<link rel="stylesheet" href="admn.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="login-wrap">
    <div class="login-form">
			<div class="sign-in-htm">
				<div class="group">
        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <br />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bgroup28ConnectionString %>"
                        SelectCommand="SELECT DISTINCT [category_name] FROM [category]"></asp:SqlDataSource>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="50px" ImageUrl="~/admhme.jpg"
                        OnClick="ImageButton1_Click" Style="left: 715px; position: relative; top: -54px"
                        Width="50px" />
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1"
                        DataTextField="category_name" DataValueField="category_name"  CssClass="input" Style="left: 305px;
                        position: relative; top: -60px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="241px" OnDataBound="DropDownList1_DataBound">
                    </asp:DropDownList>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Label ID="Label4"
                        runat="server" ForeColor="White" Style="left: 25px; position: relative; top: -79px"
                        Text="Category"></asp:Label>
                    &nbsp; &nbsp; &nbsp;
                    <asp:Label ID="Label5" runat="server" ForeColor="White" Style="left: -87px; position: relative;
                        top: -40px" Text="Sub Category"></asp:Label>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2"
                        DataTextField="subcategory" DataValueField="subcategory" OnDataBound="DropDownList2_DataBound"
                        OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged1" Style="left: -32px;
                        position: relative; top: -34px" Width="220px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:bgroup28ConnectionString %>"
                        SelectCommand="SELECT DISTINCT [subcategory] FROM [category] WHERE ([category_name] = @category_name)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="category_name" PropertyName="SelectedValue"
                                Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Placeholder="Category ID" CssClass="input" style="left: 186px; position: relative; top: 48px" Width="241px"></asp:TextBox>
                    <asp:Label ID="Label1" runat="server" ForeColor="White" Style="left: 28px; position: relative;
                        top: 14px; font-variant: small-caps;" Text="CATEGORY ID" Font-Bold="True" Font-Names="Constantia" Font-Size="1.1em" ></asp:Label><br />
        <br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Placeholder="Category Name" CssClass="input" style="left: 191px; position: relative; top: -18px" Width="236px"></asp:TextBox>
                    <asp:Label ID="Label2" runat="server" ForeColor="White" Style="left: 18px; position: relative;
                        top: -56px; font-variant: small-caps;" Text="Category name" Font-Bold="True" Font-Names="Constantia" Font-Size="1.2em" Height="30px" Width="155px" ></asp:Label><br />
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Constantia" Font-Size="1.2em"
                        ForeColor="White" Style="left: 24px; position: relative; top: -29px" Text="SUB CATEGORY"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" Height="35px" Style="left: 41px; position: relative;
                        top: -20px" Width="284px"></asp:TextBox><br />
        <br />
        <br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:Button ID="Button1" runat="server" Text="UPDATE" OnClick="Button1_Click" Width="113px" CssClass="button" style="left: 69px; position: relative; top: -68px" Font-Bold="True" Font-Names="Constantia" Font-Size="1em" BackColor="Yellow" ForeColor="Red"/>
                    <asp:Button ID="Button2" runat="server" Height="53px" OnClick="Button2_Click" Width="113px" CssClass="button" Style="left: 304px;
                        position: relative; top: -117px" Text="DELETE" Font-Bold="True" Font-Names="Constantia" Font-Size="1em" BackColor="Yellow" ForeColor="Red" /></div>
    </div>
    </div>
        <asp:Button ID="Button3" runat="server" Style="left: 143px; position: relative; top: -85px"
            Text="VIEW DETAIL>>>" CssClass ="button" Font-Bold="True" OnClick="Button3_Click" BackColor="Yellow" ForeColor="Red" Height="47px" Width="206px" /></div>
    </div>
    </form>
</body>
</html>


