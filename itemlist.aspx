<%@ Page Language="C#" AutoEventWireup="true" CodeFile="itemlist.aspx.cs" Inherits="itemlist" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
<script language="javascript" type="text/javascript">
// <!CDATA[

function TABLE1_onclick() {

}

// ]]>
</script>
</head>
<body bgcolor="#ffcccc" background="back.jpg">
    <form id="form1" runat="server">
    <div>
    <div class="container">
    <h1 class="wow fadeIn" data-wow-offset="50" data-wow-delay=""0.3s">
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/HTMLPage.htm">login</asp:HyperLink>
        &nbsp;
        <asp:HyperLink
            ID="HyperLink3" runat="server" NavigateUrl="~/loginform.aspx">registration</asp:HyperLink></h1>
        
    
    </div>
        &nbsp;&nbsp;<br />
        &nbsp;<br />
        &nbsp;<br />
        &nbsp; &nbsp; &nbsp;
        <asp:Panel ID="Panel1" runat="server" Height="999px" Style="z-index: 101; left: 211px;
            position: absolute; top: 85px" Width="600px" BackColor="black"  >
            <br />
            <br />
            <br />
            &nbsp;
            <table>
                <tr>
                    <td style="width: 200px; height: 254px;">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#FFFFFF" Height="29px"
                            Style="left: 0px; position: relative; top: 230px" Text="Label" Width="196px"></asp:Label>
                        <asp:ImageButton ID="ImageButton1" runat="server" Width="199px" style="left: 0px; position: relative; top: -25px" Height="227px" /></td>
                    <td style="width: 200px; height: 254px;">
                        &nbsp;
                        <asp:ImageButton ID="ImageButton2" runat="server" Height="227px" Width="199px" style="left: 0px; position: relative; top: -24px" /></td>
                    <td style="width: 185px; height: 254px;">
                        &nbsp;<asp:ImageButton ID="ImageButton3" runat="server" Height="227px" Width="199px" style="left: 1px; position: relative; top: -26px" /></td>
                </tr>
                <tr>
                    <td style="width: 200px; height: 130px;">
                        <asp:ImageButton ID="ImageButton4" runat="server" Height="122px" Width="100px" />
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#FFFFFF" Height="23px"
                            Style="left: 207px; position: relative; top: -156px" Text="Label" Width="194px"></asp:Label></td>
                    <td style="width: 200px; height: 130px;">
                        <asp:ImageButton ID="ImageButton5" runat="server" Height="116px" Width="100px" />
                        <asp:Label ID="Label3" runat="server" Style="left: 209px; position: relative; top: -154px"
                            Text="Label" Width="196px"></asp:Label>
                    </td>
                    <td style="width: 185px; height: 130px;">
                        <asp:ImageButton ID="ImageButton6" runat="server" Height="118px" Width="100px" /></td>
                </tr>
                <tr>
                    <td style="width: 200px">
                        <asp:ImageButton ID="ImageButton7" runat="server" Height="125px" Width="100px" /></td>
                    <td style="width: 200px">
                        <asp:ImageButton ID="ImageButton8" runat="server" Height="121px" Width="100px" /></td>
                    <td style="width: 185px">
                        <asp:ImageButton ID="ImageButton9" runat="server" Height="122px" Width="99px" /></td>
                </tr>
                <tr>
                    <td style="width: 200px">
                        <asp:ImageButton ID="ImageButton10" runat="server" Height="124px" Width="97px" /></td>
                    <td style="width: 200px">
                        <asp:ImageButton ID="ImageButton11" runat="server" Height="124px" Width="100px" /></td>
                    <td style="width: 185px">
                        <asp:ImageButton ID="ImageButton12" runat="server" Height="127px" Width="98px" /></td>
                </tr>
                <tr>
                    <td style="width: 200px; height: 128px;">
                        <asp:ImageButton ID="ImageButton13" runat="server" Height="122px" Width="101px" /></td>
                    <td style="width: 200px; height: 128px;">
                        <asp:ImageButton ID="ImageButton14" runat="server" Height="121px" Width="100px" /></td>
                    <td style="width: 185px; height: 128px;">
                        <asp:ImageButton ID="ImageButton15" runat="server" Height="126px" Width="100px" /></td>
                </tr>
            </table>
            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#FF0033" NavigateUrl="~/itemlist.aspx" style="z-index: 100; left: 252px; position: absolute; top: 791px">Back to item list</asp:HyperLink></asp:Panel>
        &nbsp;<br />
        <asp:Panel ID="Panel2" runat="server" Height="755px" Width="188px">
            <br />
            &nbsp;
            <br />
            <table style="width: 185px">
                <tr>
                    <td style="width: 100px; text-align: center">
                        <strong><span style="font-family: Bookman Old Style">
                            <asp:LinkButton ID="LinkButton22" runat="server" Font-Size="1.2em" ForeColor="#FF0000"
                                OnClick="LinkButton22_Click" Width="103px">CURTAINS↓</asp:LinkButton></span></strong></td>
                </tr>
                <tr>
                    <td style="width: 100px; text-align: center; height: 34px;">
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Font-Bold="True" Font-Names="Bookman Old Style" Font-Size="0.8em">SINGLE ROD CURTAIN</asp:LinkButton></td>
                </tr>
                <tr>
                    <td style="width: 100px; text-align: center">
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" Font-Bold="True" Font-Names="Bookman Old Style" Font-Size="0.8em">DOUBLE ROD CURTAIN</asp:LinkButton></td>
                </tr>
                <tr>
                    <td style="width: 100px; text-align: center">
                        <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" Font-Names="Bookman Old Style"
                            Font-Size="0.8em" OnClick="LinkButton3_Click">TRIPLE ROD CURTAIN</asp:LinkButton></td>
                </tr>
                <tr>
                    <td style="width: 100px; text-align: center">
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px; text-align: center">
                        <span style="font-family: Bookman Old Style">
                            <asp:LinkButton ID="LinkButton23" runat="server" Font-Bold="True" Font-Size="1.2em"
                                ForeColor="#FF0000" OnClick="LinkButton23_Click">BLINDS↓</asp:LinkButton></span></td>
                </tr>
                <tr>
                    <td style="width: 100px; text-align: center">
                        <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="True" Font-Names="Bookman Old Style"
                            Font-Size="0.8em" OnClick="LinkButton4_Click">VERTICAL BLINDS</asp:LinkButton></td>
                </tr>
                <tr>
                    <td style="width: 100px; text-align: center">
                        <asp:LinkButton ID="LinkButton5" runat="server" Font-Bold="True" Font-Names="Bookman Old Style"
                            Font-Size="0.8em" OnClick="LinkButton5_Click">ROLLER BLINDS</asp:LinkButton></td>
                </tr>
                <tr>
                    <td style="width: 100px; text-align: center">
                        <asp:LinkButton ID="LinkButton6" runat="server" Font-Bold="True" Font-Names="Bookman Old Style"
                            Font-Size="0.8em" OnClick="LinkButton6_Click">ROMAN BLINDS</asp:LinkButton></td>
                </tr>
                <tr>
                    <td style="width: 100px; text-align: center">
                        <asp:LinkButton ID="LinkButton7" runat="server" Font-Bold="True" Font-Names="Bookman Old Style"
                            Font-Size="0.8em" OnClick="LinkButton7_Click">VENETIAN & WOOD VENETIAN BLINDS</asp:LinkButton></td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 21px; text-align: center">
                        <asp:LinkButton ID="LinkButton8" runat="server" Font-Bold="True" Font-Names="Bookman Old Style"
                            Font-Size="0.8em" OnClick="LinkButton8_Click">BAMBOO & WOVEN WOOD BLINDS</asp:LinkButton></td>
                </tr>
                <tr>
                    <td style="width: 100px; text-align: center">
                        <asp:LinkButton ID="LinkButton9" runat="server" Font-Bold="True" Font-Names="Bookman Old Style"
                            Font-Size="0.8em" OnClick="LinkButton9_Click">TWILIGHT SHADE BLINDS</asp:LinkButton></td>
                </tr>
                <tr>
                    <td style="width: 100px; text-align: center">
                        <asp:LinkButton ID="LinkButton10" runat="server" Font-Bold="True" Font-Names="Bookman Old Style"
                            Font-Size="0.8em" OnClick="LinkButton10_Click">PVC EXTERIOR BLINDS</asp:LinkButton></td>
                </tr>
                <tr>
                    <td style="width: 100px; text-align: center">
                        <asp:LinkButton ID="LinkButton11" runat="server" Font-Bold="True" Font-Names="Bookman Old Style"
                            Font-Size="0.8em" OnClick="LinkButton11_Click">MONSOON BLINDS</asp:LinkButton></td>
                </tr>
                <tr>
                    <td style="width: 100px; text-align: center">
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px; text-align: center; height: 21px;">
                        <strong><span style="font-family: Bookman Old Style">
                            <asp:LinkButton ID="LinkButton24" runat="server" Font-Size="1.2em" ForeColor="Red"
                                OnClick="LinkButton24_Click">CARPET & MAT↓</asp:LinkButton></span></strong></td>
                </tr>
                <tr>
                    <td style="width: 100px; text-align: center">
                        <asp:LinkButton ID="LinkButton16" runat="server" Font-Bold="True" Font-Names="Bookman Old Style"
                            Font-Size="0.8em" OnClick="LinkButton16_Click">COIR MAT & MATTINGS</asp:LinkButton></td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 21px; text-align: center">
                        <asp:LinkButton ID="LinkButton17" runat="server" Font-Bold="True" Font-Names="Bookman Old Style"
                            Font-Size="0.8em" OnClick="LinkButton17_Click">VINYLE CARPET</asp:LinkButton></td>
                </tr>
                <tr>
                    <td style="width: 100px; text-align: center; height: 18px;">
                        <asp:LinkButton ID="LinkButton18" runat="server" Font-Bold="True" Font-Names="Bookman Old Style"
                            Font-Size="0.8em" OnClick="LinkButton18_Click">COTTON MATTS</asp:LinkButton></td>
                </tr>
                <tr>
                    <td style="width: 100px; text-align: center">
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px; text-align: center">
                        <strong><span style="font-family: Bookman Old Style; color: #ff0000;">
                            <asp:LinkButton ID="LinkButton25" runat="server" ForeColor="#FF0000" OnClick="LinkButton25_Click">WALLPAPER↓</asp:LinkButton></span></strong></td>
                </tr>
                <tr>
                    <td style="width: 100px; text-align: center">
                        <asp:LinkButton ID="LinkButton19" runat="server" Font-Bold="True" Font-Names="Bookman Old Style"
                            Font-Size="0.8em" OnClick="LinkButton19_Click">WALLPAPER COVERINGS</asp:LinkButton></td>
                </tr>
                <tr>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        <table style="width: 185px">
                            <tr>
                                <td style="width: 100px; text-align: center">
                                    <strong><span style="font-size: 1em; font-family: Bookman Old Style">
                                        <asp:LinkButton ID="LinkButton26" runat="server" ForeColor="#FF0000" OnClick="LinkButton26_Click">LIGHTINGS↓</asp:LinkButton></span></strong></td>
                            </tr>
                            <tr>
                                <td style="width: 100px; text-align: center">
                                    <asp:LinkButton ID="LinkButton12" runat="server" Font-Bold="True" Font-Names="Bookman Old Style"
                                        Font-Size="0.8em" OnClick="LinkButton12_Click">HANGING LIGHTS</asp:LinkButton></td>
                            </tr>
                            <tr>
                                <td style="width: 100px; height: 21px; text-align: center">
                                    <asp:LinkButton ID="LinkButton13" runat="server" Font-Bold="True" Font-Names="Bookman Old Style"
                                        Font-Size="0.8em" OnClick="LinkButton13_Click">WALL LIGHTS</asp:LinkButton></td>
                            </tr>
                            <tr>
                                <td style="width: 100px; height: 21px; text-align: center">
                                    <asp:LinkButton ID="LinkButton14" runat="server" Font-Bold="True" Font-Names="Bookman Old Style"
                                        Font-Size="0.8em" OnClick="LinkButton14_Click">SURFACE LIGHTS</asp:LinkButton></td>
                            </tr>
                            <tr>
                                <td style="width: 100px; height: 18px; text-align: center">
                                    <asp:LinkButton ID="LinkButton15" runat="server" Font-Bold="True" Font-Names="Bookman Old Style"
                                        Font-Size="0.8em" OnClick="LinkButton15_Click">GATE LIGHTS</asp:LinkButton></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px; text-align: center">
                        <strong><span style="font-family: Bookman Old Style">
                                <b style="mso-bidi-font-weight: normal"><span style="font-size: 12pt; line-height: 115%;
                                    font-family: Calibri">
                                    <asp:LinkButton ID="LinkButton27" runat="server" Font-Names="Bookman Old Style" ForeColor="#FF0000"
                                        OnClick="LinkButton27_Click">DECORATIVE ITEMS↓</asp:LinkButton></span></b><b style="mso-bidi-font-weight: normal"><span style="font-size: 12pt;
                                        line-height: 115%; font-family: 'Cambria','serif'; mso-ascii-theme-font: major-latin;
                                        mso-hansi-theme-font: major-latin"><o:p></o:p></span></b></span></strong></td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 21px; text-align: center">
                        <asp:LinkButton ID="LinkButton20" runat="server" Font-Bold="True" Font-Names="Bookman Old Style"
                            Font-Size="0.8em" OnClick="LinkButton20_Click">VASE</asp:LinkButton></td>
                </tr>
                <tr>
                    <td style="width: 100px; text-align: center">
                        <asp:LinkButton ID="LinkButton21" runat="server" Font-Bold="True" Font-Names="Bookman Old Style"
                            Font-Size="0.8em" OnClick="LinkButton21_Click">SHOWCASE</asp:LinkButton></td>
                </tr>
                <tr>
                    <td style="width: 100px">
                    </td>
                </tr>
            </table>
        </asp:Panel>
        &nbsp;<br />
        <br />
        &nbsp; &nbsp;&nbsp;
        <br />
        <br />
        &nbsp;&nbsp; &nbsp;
        <br />
    </div>
    </form>
</body>
</html>
