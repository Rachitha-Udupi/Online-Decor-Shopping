<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editnew.aspx.cs" Inherits="editnew" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
         <link rel="stylesheet" href="admn.css" />           
<script language="javascript" type="text/javascript">
// <!CDATA[

function DIV1_onclick() {

}

// ]]>
</script>
</head>
<body>
    <form id="form1" runat="server">
      <div>
    <div class="login-wrap" style="left: 0px; top: 0px" id="DIV1" onclick="return DIV1_onclick()">
    <div class="login-form">
			<div class="sign-in-htm">
				<div class="group">
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
        &nbsp; &nbsp;
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3"
                        DataTextField="category_name" DataValueField="category_name" Style="left: 181px; position: relative;
                        top: -16px" OnDataBound="DropDownList3_DataBound" CssClass="input" Width="231px">
                    </asp:DropDownList>&nbsp;<br />
                    &nbsp;<asp:Label ID="Label1" runat="server" ForeColor="White" Style="left: 55px;
                        position: relative; top: -56px" Text="Category :"></asp:Label>
                    <asp:Label ID="Label3" runat="server" ForeColor="White" Style="left: -12px; position: relative;
                        top: -8px" Text="Sub Category" Width="94px"></asp:Label>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:DropDownList ID="DropDownList5" runat="server"
                        DataSourceID="SqlDataSource5" DataTextField="sub_category" DataValueField="sub_category"
                        Style="left: -23px; position: relative; top: -12px" Width="230px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged" OnDataBound="DropDownList5_DataBound">
                    </asp:DropDownList>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<asp:DropDownList ID="DropDownList4"
                        runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="item_id"
                        DataValueField="item_id" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged"
                        Style="left: 182px; position: relative; top: 21px" OnDataBound="DropDownList4_DataBound" CssClass="input" Width="234px" >
                    </asp:DropDownList>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:ImageButton ID="ImageButton1" runat="server"
                        Height="50px" ImageUrl="~/ahome.png" OnClick="ImageButton1_Click" Style="left: 826px;
                        position: relative; top: -100px" Width="50px" />
                    <asp:Label ID="Label2" runat="server" ForeColor="White" Text="Item id :" style="left: -33px; position: relative; top: -36px"></asp:Label>&nbsp; 
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server"
                        ConnectionString="<%$ ConnectionStrings:bgroup28ConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [addCategory]">
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:bgroup28ConnectionString %>"
                        SelectCommand="SELECT * FROM [item_details] WHERE ([sub_category] = @sub_category)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList5" Name="sub_category" PropertyName="SelectedValue"
                                Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:bgroup28ConnectionString %>"
                        SelectCommand="SELECT * FROM [addCategory] WHERE ([category_name] = @category_name)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList3" Name="category_name" PropertyName="SelectedValue"
                                Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <br />
        <br />
        <table style="position: relative; top: -50px; height: 414px; width: 501px; left: 0px;">
            <tr>
                <td style="width: 214px; height: 20px;">
                    <span style="color: #ffffff">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; Item Id&nbsp; :</span></td>
                <td style="width: 264px; height: 20px;">
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server" Height="38px" Width="233px" CssClass="input" style="left: 0px; position: relative; top: -11px"></asp:TextBox>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 214px">
                    &nbsp; &nbsp; &nbsp;<span style="color: #ffffff"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Item Name :</span></td>
                <td style="width: 264px">
                    <asp:TextBox ID="TextBox2" runat="server" Width="196px" CssClass="input"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 214px">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style="color: #ffffff"> &nbsp;&nbsp; &nbsp;&nbsp; Category&nbsp; :</span></td>
                <td style="width: 264px">
                    &nbsp;
                    <asp:TextBox ID="TextBox5" runat="server" Style="left: 0px; position: relative;
                        top: -4px" Width="272px"></asp:TextBox><br />
                    &nbsp;</td>
            </tr>
             <tr>
                <td style="width: 214px">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style="color: #ffffff">Sub Category&nbsp; :</span></td>
                <td style="width: 264px">
                    &nbsp;
                    <asp:TextBox ID="TextBox6" runat="server" Style="left: 1px; position: relative;
                        top: -3px" Width="272px"></asp:TextBox><br />
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 214px">
                    &nbsp; &nbsp; &nbsp; <span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Price :</span></td>
                <td style="width: 264px">
                    <asp:TextBox ID="TextBox3" runat="server" Width="196px" CssClass="input"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 214px; height: 23px">
                    &nbsp; &nbsp;<span style="color: #ffffff"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Descripition :</span></td>
                <td style="width: 264px; height: 23px">
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Width="196px" MaxLength="100" CssClass="input"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 214px">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style="color: #ffffff"> &nbsp;&nbsp; Quantity :</span></td>
                <td style="width: 264px">
                    <asp:DropDownList ID="DropDownList2" runat="server" Width="161px" CssClass="input">
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
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem>24</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>26</asp:ListItem>
                        <asp:ListItem Value="27">27</asp:ListItem>
                        <asp:ListItem>28</asp:ListItem>
                        <asp:ListItem>29</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>31</asp:ListItem>
                        <asp:ListItem>32</asp:ListItem>
                        <asp:ListItem>33</asp:ListItem>
                        <asp:ListItem>34</asp:ListItem>
                        <asp:ListItem>35</asp:ListItem>
                        <asp:ListItem>36</asp:ListItem>
                        <asp:ListItem>37</asp:ListItem>
                        <asp:ListItem>38</asp:ListItem>
                        <asp:ListItem>39</asp:ListItem>
                        <asp:ListItem>40</asp:ListItem>
                        <asp:ListItem>41</asp:ListItem>
                        <asp:ListItem>42</asp:ListItem>
                        <asp:ListItem>43</asp:ListItem>
                        <asp:ListItem>44</asp:ListItem>
                        <asp:ListItem>45</asp:ListItem>
                        <asp:ListItem>46</asp:ListItem>
                        <asp:ListItem>47</asp:ListItem>
                        <asp:ListItem>48</asp:ListItem>
                        <asp:ListItem>49</asp:ListItem>
                        <asp:ListItem>50</asp:ListItem>
                        <asp:ListItem>51</asp:ListItem>
                        <asp:ListItem>52</asp:ListItem>
                        <asp:ListItem>53</asp:ListItem>
                        <asp:ListItem>54</asp:ListItem>
                        <asp:ListItem>55</asp:ListItem>
                        <asp:ListItem>56</asp:ListItem>
                        <asp:ListItem>57</asp:ListItem>
                        <asp:ListItem>58</asp:ListItem>
                        <asp:ListItem>59</asp:ListItem>
                        <asp:ListItem>60</asp:ListItem>
                        <asp:ListItem>61</asp:ListItem>
                        <asp:ListItem>62</asp:ListItem>
                        <asp:ListItem>63</asp:ListItem>
                        <asp:ListItem>64</asp:ListItem>
                        <asp:ListItem>65</asp:ListItem>
                        <asp:ListItem>66</asp:ListItem>
                        <asp:ListItem>67</asp:ListItem>
                        <asp:ListItem>68</asp:ListItem>
                        <asp:ListItem>69</asp:ListItem>
                        <asp:ListItem>70</asp:ListItem>
                        <asp:ListItem>71</asp:ListItem>
                        <asp:ListItem>72</asp:ListItem>
                        <asp:ListItem>73</asp:ListItem>
                        <asp:ListItem>74</asp:ListItem>
                        <asp:ListItem>75</asp:ListItem>
                        <asp:ListItem Value="76">76</asp:ListItem>
                        <asp:ListItem>77</asp:ListItem>
                        <asp:ListItem>78</asp:ListItem>
                        <asp:ListItem>79</asp:ListItem>
                        <asp:ListItem>80</asp:ListItem>
                        <asp:ListItem>81</asp:ListItem>
                        <asp:ListItem>82</asp:ListItem>
                        <asp:ListItem>83</asp:ListItem>
                        <asp:ListItem>84</asp:ListItem>
                        <asp:ListItem>85</asp:ListItem>
                        <asp:ListItem>86</asp:ListItem>
                        <asp:ListItem>87</asp:ListItem>
                        <asp:ListItem>88</asp:ListItem>
                        <asp:ListItem>89</asp:ListItem>
                        <asp:ListItem>90</asp:ListItem>
                        <asp:ListItem>91</asp:ListItem>
                        <asp:ListItem>92</asp:ListItem>
                        <asp:ListItem>93</asp:ListItem>
                        <asp:ListItem>94</asp:ListItem>
                        <asp:ListItem>95</asp:ListItem>
                        <asp:ListItem>96</asp:ListItem>
                        <asp:ListItem>97</asp:ListItem>
                        <asp:ListItem>98</asp:ListItem>
                        <asp:ListItem>99</asp:ListItem>
                        <asp:ListItem>100</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td style="width: 214px">
                    &nbsp; &nbsp; <span style="color: #ffffff">&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; Item Image :</span></td>
                <td style="width: 264px">
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="input" /><br />
                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2"
                        RepeatColumns="3" RepeatDirection="Horizontal">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="116px" ImageUrl='<%# Eval("image") %>' />
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:bgroup28ConnectionString %>"
                        SelectCommand="SELECT * FROM [item_details] WHERE ([item_id] = @item_id)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList4" Name="item_id" PropertyName="SelectedValue"
                                Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Style="left: 287px;
                        position: relative; top: 9px" Text="Clear" Width="142px" CssClass="button" Height="50px"/>
                    <asp:Button ID="Button3" runat="server" Style="left: 52px; position: relative; top: -40px"
                        Text="SUBMIT" CssClass="button" Width="153px" OnClick="Button3_Click" /><br />
             <br />
              <asp:Button ID="Button1" runat="server" Text="VIEW DETAIL>>>" CssClass ="button" style="left: 152px; position: relative; top: -18px" Font-Bold="True" Font-Names="Constantia" Font-Size="1em" Height="50px" Width="170px" OnClick="Button1_Click"/> 
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <div style="text-align: center">
            <div style="text-align: center">
                &nbsp;</div>
        </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </form>
</body>
</html>