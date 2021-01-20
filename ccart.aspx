<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ccart.aspx.cs" Inherits="ccart" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
     <link rel="Stylesheet" href="btn.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label22" runat="server" Text="Label" Visible="False"></asp:Label><br />
        <br />
        <asp:DataList ID="DataList1" runat="server" DataKeyField="item_id" DataSourceID="SqlDataSource1" >
            <ItemTemplate>
                <table>
                    <tr>
                        <td style="width: 100px; height: 21px">
                            &nbsp;
                            <asp:Label ID="Label1" runat="server" Text="Item ID" CssClass="input" ForeColor="MediumBlue"></asp:Label></td>
                        <td style="width: 100px; height: 21px">
                            &nbsp;
                            <asp:Label ID="Label2" runat="server" Text="Name" CssClass=" input" ForeColor="MediumBlue"></asp:Label></td>
                        <td style="width: 100px; height: 21px">
                            &nbsp;
                            <asp:Label ID="Label3" runat="server" Text="Image" CssClass ="input" ForeColor="MediumBlue"></asp:Label></td>
                        <td style="width: 100px; height: 21px">
                            &nbsp;&nbsp;
                            <asp:Label ID="Label4" runat="server" Text="Price" CssClass ="input" ForeColor="MediumBlue"></asp:Label></td>
                        <td style="width: 100px; height: 21px">
                            &nbsp;
                            <asp:Label ID="Label5" runat="server" Text="Quantity" CssClass="input" ForeColor="MediumBlue"></asp:Label></td>
                        <td style="width: 100px; height: 21px">
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            <asp:Label ID="Label6" runat="server"
                                Text="Total Price" ForeColor="MediumBlue" CssClass ="input"></asp:Label>
                            &nbsp; &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            &nbsp;&nbsp;
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("item_id") %>' CssClass="input"></asp:Label></td>
                        <td style="width: 100px">
                            &nbsp;&nbsp;
                            <asp:Label ID="Label8" runat="server" Style="position: relative; left: 0px; top: 3px;" Text='<%# Eval("item_name") %>' CssClass="input"></asp:Label></td>
                        <td style="width: 100px">
                            &nbsp;&nbsp;
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' Height="100px" Width="100px" /></td>
                        <td style="width: 100px">
                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("price") %>' CssClass="input"></asp:Label></td>
                        <td style="width: 100px">
                            &nbsp;&nbsp;
                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("qty") %>' CssClass="input"></asp:Label></td>
                        <td style="width: 100px">
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label11" runat="server" Text='<%# Eval("totalprice") %>' CssClass ="input"></asp:Label></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        &nbsp;
        &nbsp; &nbsp;
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bgroup28ConnectionString %>"
            SelectCommand="SELECT * FROM [buynow] WHERE ([cust_id] = @cust_id)">
            <SelectParameters>
                <asp:SessionParameter Name="cust_id" SessionField="cust_id" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <table>
            <tr>
                <td style="width: 462px; height: 21px">
                    <asp:Label ID="Label16" runat="server" Style="left: 68px; position: relative; top: 6px"
                        Text="Grand Total " CssClass="input"></asp:Label></td>
                <td style="width: 177px; height: 21px">
                    <asp:Label ID="Label17" runat="server" Text="Label" CssClass="input"></asp:Label></td>
            </tr>
        </table>
        <br />
        <br />
        <asp:Label ID="Label34" runat="server" Text="Label" Visible="False"></asp:Label><br />
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
                    <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Red" OnClick="LinkButton1_Click" Font-Bold="True" Font-Size="1.1em">Want to change delivery address?</asp:LinkButton></td>
            </tr>
        </table>
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            <table>
                <tr>
                    <td style="width: 100px">
                        <asp:Label ID="Label18" runat="server" Text="Address"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" CssClass="input"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 26px">
                        <asp:Label ID="Label19" runat="server" Text="City"></asp:Label></td>
                    <td style="width: 100px; height: 26px">
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="input" Height="1px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        <asp:Label ID="Label20" runat="server" Text="Pincode"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="input" Height="1px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        <asp:Label ID="Label21" runat="server" Text="State"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:TextBox ID="TextBox6" runat="server" CssClass="input" Height="1px"></asp:TextBox></td>
                </tr>
            </table>
            &nbsp;&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Style="left: 8px;
                position: relative; top: 0px" Text="DELIVER TO THIS ADDRESS" CssClass="button" ForeColor="#FFFFFF" Width="296px" /></asp:Panel>
    
    </div>
        <br />
        <br />
        <br />
        <table align="center">
            <tr>
                <td colspan="2" style="height: 21px">
                    &nbsp; &nbsp;&nbsp;
                    <asp:Label ID="Label23" runat="server" Text="Payment Details " ></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 157px">
                    &nbsp;
                    <asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" /></td>
                <td style="width: 173px">
                    <asp:ImageButton ID="ImageButton2" runat="server" OnClick="ImageButton2_Click" /></td>
            </tr>
        </table>
        <br />
        <br />
        <table>
            <tr>
                <td colspan="3">
                    &nbsp;
                    <asp:Label ID="Label24" runat="server" Text="Email :"></asp:Label>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox11" runat="server" style="left: 80px; position: relative; top: -20px" CssClass="input" Height="1px"></asp:TextBox>
                    <asp:Label ID="Label29" runat="server" Text="Label" Visible="False"></asp:Label></td>
            
            </tr>
            <tr>
                <td colspan="3" style="height: 21px">
                    &nbsp;<asp:Label ID="Label25" runat="server" Text="Card No :"></asp:Label>&nbsp;
                    <asp:TextBox ID="TextBox12" runat="server" style="left: 96px; position: relative; top: -17px" CssClass="input" Height="1px"></asp:TextBox>
                    <asp:Label ID="Label30" runat="server" Text="Label" Visible="False"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 53px">
                    <asp:Label ID="Label26" runat="server" Text="Expiry Date "></asp:Label><br />
                   <asp:DropDownList ID="DropDownList1" runat="server" CssClass="input">
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
                    <asp:Label ID="Label32" runat="server" Text="Label" Visible="False"></asp:Label><br />
                </td>
                <td style="width: 100px; height: 53px">
                    <asp:Label ID="Label27" runat="server" Text="Expiry Year :"></asp:Label><br />
                     <asp:DropDownList ID="DropDownList2" runat="server" CssClass="input">
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
                <td style="width: 100px; height: 53px">
                    <asp:Label ID="Label28" runat="server" Text="CVV :"></asp:Label><br />
                    <asp:TextBox ID="TextBox13" runat="server" CssClass="input " Height="1px"></asp:TextBox>
                      <asp:Label ID="Label31" runat="server" Text="Label" Visible="False"></asp:Label></td>
            </tr>
            <tr>
                <td colspan="3" style="height: 24px">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Confirm " /></td>
            </tr>
        </table>
        &nbsp;
        <table style="left: 692px; width: 203px; position: relative; top: -79px; height: 76px">
            <tr>
                <td style="width: 100px; height: 21px">
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="Cash on delivery " /></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    </td>
            </tr>
        </table>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="left: 321px;
            position: relative; top: -85px" Text="Submit" CssClass="button" ForeColor="#FFFFFF" />&nbsp;<br />
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="PLACEORDER" style="left: 57px; position: relative; top: -89px" Height="75px" Width="444px" BackColor="Red" CssClass="button" ForeColor="White" /><br />
        &nbsp;<br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:bgroup28ConnectionString %>"
            SelectCommand="SELECT * FROM [cart] WHERE ([cust_id] = @cust_id)">
            <SelectParameters>
                <asp:SessionParameter Name="cust_id" SessionField="cust_id" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:TextBox ID="TextBox7" runat="server" Visible="False" style="left: 348px; position: relative; top: -707px"></asp:TextBox><br />
        <asp:TextBox ID="TextBox8" runat="server" Visible="False" style="left: 353px; position: relative; top: -691px"></asp:TextBox><br />
        <asp:TextBox ID="TextBox9" runat="server" Visible="False" style="left: 360px; position: relative; top: -684px"></asp:TextBox><br />
        <asp:TextBox ID="TextBox10" runat="server" Visible="False" style="left: 357px; position: relative; top: -678px"></asp:TextBox><br />
        <asp:Image ID="Image2" runat="server" Visible="False" style="left: 525px; position: relative; top: -725px" />
    </form>
   
</body>
</html>
