<%@ Page Language="C#" AutoEventWireup="true" CodeFile="additem.aspx.cs" Inherits="additem" %>

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
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
        &nbsp; &nbsp;
                    <br />
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="50px" ImageUrl="~/admhme.jpg"
                        OnClick="ImageButton1_Click" Style="left: 216px; position: relative; top: -37px"
                        Width="50px" /><br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <br />
        <br />
        <table style="position: relative; top: -52px; height: 414px; width: 501px;">
            <tr>
                <td style="width: 214px">
                    <span style="color: #ffffff">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<span style="font-size: 1.2em; font-family: Constantia"><strong> 
                        <span style="color: yellow">Item Id&nbsp; :</span></strong></span></span></td>
                <td style="width: 264px">
                    <asp:TextBox ID="TextBox1" runat="server" Width="193px" CssClass="input"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 214px">
                    &nbsp; &nbsp; &nbsp;<span style="color: #ffffff"> &nbsp; &nbsp; &nbsp; <span style="color: yellow">
                        &nbsp; &nbsp;<span
                        style="font-size: 1.2em; font-family: Constantia"><strong>Item Name :</strong></span></span></span></td>
                <td style="width: 264px">
                    <asp:TextBox ID="TextBox2" runat="server" Width="196px" CssClass="input"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 214px">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style="color: #ffffff"> &nbsp;&nbsp; <span
                        style="font-size: 1.2em; font-family: Constantia; color: yellow;"><strong>&nbsp;&nbsp; Category&nbsp; :</strong></span></span></td>
                <td style="width: 264px">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1"
                        DataTextField="category_name" DataValueField="category_name" CssClass="input" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" OnDataBound="DropDownList1_DataBound">
                   
                   <asp:ListItem Value ="0">---select---</asp:ListItem> </asp:DropDownList><br />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bgroup28ConnectionString %>"
                        SelectCommand="SELECT DISTINCT [category_name] FROM [category]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="width: 214px">
                    <br />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <asp:Label ID="Label1" runat="server" ForeColor="Yellow" Text="SubCategory :" Width="114px" Font-Names="Constantia" Font-Size="1.2em"></asp:Label><br />
                </td>
                <td style="width: 264px">
                    &nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2"
                        DataTextField="subcategory" DataValueField="subcategory" OnDataBound="DropDownList3_DataBound"
                        OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" Width="203px" CssClass="input">
                        <asp:ListItem>---select---</asp:ListItem>
                    </asp:DropDownList><br />
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:bgroup28ConnectionString %>"
                        SelectCommand="SELECT [subcategory] FROM [category] WHERE ([category_name] = @category_name)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="category_name" PropertyName="SelectedValue"
                                Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="width: 214px">
                    &nbsp; &nbsp; &nbsp; <span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span
                        style="color: yellow"> &nbsp; <span style="font-size: 1.2em; font-family: Constantia"><strong>Price :</strong></span></span></span></td>
                <td style="width: 264px">
                    <asp:TextBox ID="TextBox3" runat="server" Width="196px" CssClass="input"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 214px; height: 23px">
                    &nbsp; &nbsp;<span style="color: #ffffff"> &nbsp; &nbsp; &nbsp;<span style="font-size: 1.2em;
                        font-family: Constantia"><strong> &nbsp; <span style="color: yellow">&nbsp;Descripition :</span></strong></span></span></td>
                <td style="width: 264px; height: 23px">
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Width="196px" MaxLength="100" CssClass="input"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 214px">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style="color: #ffffff"> &nbsp;<span
                        style="font-size: 1.2em; font-family: Constantia"><strong>&nbsp; <span style="color: yellow">
                            Quantity :</span></strong></span></span></td>
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
                    &nbsp; &nbsp; <span style="color: #ffffff">&nbsp; &nbsp; &nbsp;&nbsp;<span style="font-size: 1.2em;
                        font-family: Constantia"><strong> &nbsp;<span style="color: yellow"> Item Image :</span></strong></span></span></td>
                <td style="width: 264px" >
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="input" ForeColor="Yellow" /></td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Style="left: 58px;
                        position: relative; top: 10px" Text="Add " Width="120px" CssClass="button" Font-Bold="True" Font-Names="Constantia" Font-Size="1.3em" BackColor="Yellow" ForeColor="Red" />
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Style="left: 281px;
                        position: relative; top: -56px" Text="Clear" Width="120px" CssClass="button" Height="66px" Font-Bold="True" Font-Names="Constantia" Font-Size="1.3em" BackColor="Yellow" ForeColor="Red"/>&nbsp;
                    <br />
                    <asp:Button ID="Button3" runat="server" Text="VIEW DETAIL>>>" CssClass ="button" style="left: 112px; position: relative; top: -21px" Font-Bold="True" Font-Names="Constantia" Font-Size="1.3em" Height="50px" OnClick="Button3_Click" Width="222px" BackColor="Yellow" ForeColor="Red"/> 
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
