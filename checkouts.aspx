<%@ Page Language="C#" AutoEventWireup="true" CodeFile="checkouts.aspx.cs" Inherits="checkouts" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link rel="Stylesheet" href="btn.css" />
</head>
<body bgcolor="#000000">
    <form id="form1" runat="server">
    <div>
        &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label22" runat="server" Text="Label" Visible="False"></asp:Label><br />
        &nbsp;&nbsp;<br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
        &nbsp;<br />
        <br />
        <br />
        <asp:Panel ID="Panel2" runat="server" BackColor="White">
        
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" BackColor="White">
            <ItemTemplate>
                <table>
                    <tr>
                        <td style="width: 100px; height: 21px">
                            <asp:Label ID="Label5" runat="server" Text="Item id "></asp:Label></td>
                        <td style="width: 100px; height: 21px">
                            <asp:Label ID="Label6" runat="server" Text="Name "></asp:Label></td>
                        <td style="width: 100px; height: 21px">
                            <asp:Label ID="Label7" runat="server" Text="Image"></asp:Label></td>
                        <td style="width: 100px; height: 21px">
                            <asp:Label ID="Label8" runat="server" Text="Price"></asp:Label></td>
                        <td style="width: 113px; height: 21px">
                            <asp:Label ID="Label9" runat="server" Text="qty"></asp:Label></td>
                        <td style="width: 110px; height: 21px">
                            <asp:Label ID="Label10" runat="server" Text="Total price"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            <asp:Label ID="Label11" runat="server" Text='<%# Eval("item_id") %>' CssClass="input"></asp:Label></td>
                        <td style="width: 100px">
                            <asp:Label ID="Label12" runat="server" Text='<%# Eval("item_name") %>' CssClass="input"></asp:Label></td>
                        <td style="width: 100px">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' Height="100px" Width="100px" /></td>
                        <td style="width: 100px">
                            <asp:Label ID="Label13" runat="server" Text='<%# Eval("price") %>' CssClass="input"></asp:Label></td>
                        <td style="width: 113px">
                            <asp:Label ID="Label14" runat="server" Text='<%# Eval("qty") %>' CssClass="input"></asp:Label></td>
                        <td style="width: 110px">
                            <asp:Label ID="Label15" runat="server" Width="62px" Text='<%# Eval("totalprice") %>' CssClass="input" ></asp:Label></td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
                <br />
                <br />
            </ItemTemplate>
            <FooterTemplate>
                <%--<asp:Label ID="Label16" runat="server" Text="GRAND TOTAL"></asp:Label>--%>
                <%--<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>--%>
            </FooterTemplate>
        </asp:DataList><br />
        <table>
            <tr>
                <td style="width: 462px; height: 21px">
                    <asp:Label ID="Label16" runat="server" Style="left: 251px; position: relative; top: 0px"
                        Text="Grand Total "></asp:Label>
                    &nbsp;
                </td>
                <td style="width: 177px; height: 21px">
                    <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label></td>
            </tr>
        </table>
        <asp:Label ID="Label34" runat="server" Text="Label" Visible="False"></asp:Label><br />
        <br />
        <br />
        <table>
            <tr>
                <td style="width: 192px">
                    <asp:Label ID="Label1" runat="server" Text="Name :"></asp:Label></td>
                <td style="width: 295px">
                    &nbsp;
                    <asp:Label ID="Label4" runat="server" Text="Label" CssClass="input"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 192px">
                    <asp:Label ID="Label2" runat="server" Text="Contact no :"></asp:Label></td>
                <td style="width: 295px">
                    &nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="input"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 192px">
                    <asp:Label ID="Label3" runat="server" Text="Delivery Address :"></asp:Label></td>
                <td style="width: 295px">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" CssClass="input"></asp:TextBox><br />
                    <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Red" OnClick="LinkButton1_Click" Font-Bold="True">Want to change delivery address?</asp:LinkButton></td>
            </tr>
        </table>
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            <table>
                <tr>
                    <td style="width: 100px; height: 67px;">
                        <asp:Label ID="Label18" runat="server" Text="Address"></asp:Label></td>
                    <td style="width: 100px; height: 67px;">
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" CssClass="input"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 26px">
                        <asp:Label ID="Label19" runat="server" Text="City"></asp:Label></td>
                    <td style="width: 100px; height: 26px">
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="input"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        <asp:Label ID="Label20" runat="server" Text="Pincode"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="input"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        <asp:Label ID="Label21" runat="server" Text="State"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:TextBox ID="TextBox6" runat="server" CssClass="input"></asp:TextBox></td>
                </tr>
            </table>
            &nbsp;&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Style="left: 46px;
                position: relative; top: 4px" Text="DELIVER TO THIS ADDRESS" CssClass="button" ForeColor="#FFFFFF" Width="413px" />
                </asp:Panel>
    
 
        <br />
        <br />
        <br />
        <table align="center">
            <tr>
                <td colspan="2" style="height: 21px; text-align: center;">
                    &nbsp; &nbsp;&nbsp;
                    <asp:Label ID="Label23" runat="server" Text="Payment Details " CssClass="input" ></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 157px">
                    &nbsp;
                    <asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" Height="80px" ImageUrl="~/debit.jpg" Width="150px" /></td>
                <td style="width: 173px">
                    <asp:ImageButton ID="ImageButton2" runat="server" OnClick="ImageButton2_Click" Height="80px" ImageUrl="~/cod.jpg" Width="150px" /></td>
            </tr>
        </table>
        <br />
        <br />
        <table>
            <tr>
                <td colspan="3">
                    &nbsp;
                    <asp:Label ID="Label24" runat="server" Text="Email :" Font-Bold="True" Width="51px"></asp:Label>
                    &nbsp;
                    <asp:TextBox ID="TextBox11" runat="server" CssClass="input"></asp:TextBox>
                    <asp:Label ID="Label29" runat="server" Text="Label" Visible="False"></asp:Label></td>
            </tr>
            <tr>
                <td colspan="3" style="height: 21px">
                    &nbsp;<asp:Label ID="Label25" runat="server" Text="Card No :" Font-Bold="True"></asp:Label>&nbsp;
                    <asp:TextBox ID="TextBox12" runat="server" CssClass="input"></asp:TextBox>
                    <asp:Label ID="Label30" runat="server" Text="Label" Visible="False"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 53px">
                    <asp:Label ID="Label26" runat="server" Text="Expiry Date " Font-Bold="True"></asp:Label><br />
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="input" AutoPostBack="True">
                        <asp:ListItem>---select---</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList><br />
                    <asp:Label ID="Label32" runat="server" Text="Label" Visible="False"></asp:Label></td>
                <td style="width: 100px; height: 53px">
                    <asp:Label ID="Label27" runat="server" Text="Expiry Year :" Font-Bold="True"></asp:Label><br />
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" CssClass="input">
                        <asp:ListItem>---select---</asp:ListItem>
                        <asp:ListItem>2019</asp:ListItem>
                        <asp:ListItem>2020</asp:ListItem>
                        <asp:ListItem>2021</asp:ListItem>
                        <asp:ListItem>2022</asp:ListItem>
                        <asp:ListItem>2023</asp:ListItem>
                        <asp:ListItem>2024</asp:ListItem>
                        <asp:ListItem>2025</asp:ListItem>
                        <asp:ListItem>2026</asp:ListItem>
                        <asp:ListItem>2027</asp:ListItem>
                        <asp:ListItem>2028</asp:ListItem>
                        <asp:ListItem>2029</asp:ListItem>
                        <asp:ListItem>2030</asp:ListItem>
                        <asp:ListItem>2031</asp:ListItem>
                        <asp:ListItem>2032</asp:ListItem>
                        <asp:ListItem>2033</asp:ListItem>
                        <asp:ListItem>2034</asp:ListItem>
                        <asp:ListItem>2035</asp:ListItem>
                        <asp:ListItem>2036</asp:ListItem>
                        <asp:ListItem>2037</asp:ListItem>
                        <asp:ListItem>2038</asp:ListItem>
                        <asp:ListItem>2039</asp:ListItem>
                        <asp:ListItem>2040</asp:ListItem>
                        <asp:ListItem>2041</asp:ListItem>
                        <asp:ListItem>2042</asp:ListItem>
                        <asp:ListItem>2043</asp:ListItem>
                        <asp:ListItem>2044</asp:ListItem>
                        <asp:ListItem>2045</asp:ListItem>
                        <asp:ListItem>2046</asp:ListItem>
                        <asp:ListItem>2047</asp:ListItem>
                        <asp:ListItem>2048</asp:ListItem>
                        <asp:ListItem>2049</asp:ListItem>
                        <asp:ListItem>2050</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList><br />
                    <asp:Label ID="Label33" runat="server" Text="Label" Visible="False"></asp:Label></td>
                <td style="width: 149px; height: 53px">
                    <asp:Label ID="Label28" runat="server" Text="CVV :" Font-Bold="True"></asp:Label>
                    <asp:TextBox ID="TextBox13" runat="server" CssClass="input"></asp:TextBox><br />
                    <asp:Label ID="Label31" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="height: 24px">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Confirm " OnCheckedChanged="CheckBox1_CheckedChanged" CssClass="input" AutoPostBack="True" /></td>
            </tr>
        </table>
        &nbsp;
        <table style="left: 729px; width: 274px; position: relative; top: -268px; height: 136px">
            <tr>
                <td style="width: 100px; height: 21px">
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="Cash on delivery " CssClass="input" /></td>
            </tr>
        </table>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="left: 321px;
            position: relative; top: -85px" Text="Submit" CssClass="button" ForeColor="#FFFFFF" Width="234px" />&nbsp;<br />
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="PLACEORDER" style="left: 230px; position: relative; top: -68px" Height="72px" Width="444px" BackColor="Red" CssClass="button" ForeColor="#FFFFFF" /><br />
        &nbsp;<br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bgroup28ConnectionString %>"
            SelectCommand="SELECT * FROM [cart] WHERE ([cust_id] = @cust_id)">
            <SelectParameters>
                <asp:SessionParameter Name="cust_id" SessionField="cust_id" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:TextBox ID="TextBox7" runat="server" Visible="False" style="left: 529px; position: relative; top: -1223px"></asp:TextBox><br />
        <asp:TextBox ID="TextBox8" runat="server" Visible="False" style="left: 546px; position: relative; top: -1333px"></asp:TextBox><br />
        <asp:TextBox ID="TextBox9" runat="server" Visible="False" style="left: 540px; position: relative; top: -1333px"></asp:TextBox><br />
        <asp:TextBox ID="TextBox10" runat="server" Visible="False" style="left: 546px; position: relative; top: -1328px"></asp:TextBox><br />
        <asp:Image ID="Image2" runat="server" Visible="False" style="left: 767px; position: relative; top: -1383px" />
    </asp:Panel>
       </div>
    </form>
</body>
</html>
