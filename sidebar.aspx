<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sidebar.aspx.cs"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link rel="Stylesheet" href="profile.css" />
</head>
<body>
    <form id="form1" runat="server">
   <div>
    <asp:Image ID="Image1" runat="server" ImageUrl="~/logo.jpg" Height="20px" Width="20px"></asp:Image>
   
    <div class="area"></div><nav class="main-menu">
            <ul>
                <li>
                    <a href="mainpage.aspx">
                        <i class="fa fa-home fa-2x"></i>
                        <span class="nav-text">
                            Home
                        </span>
                    </a>
                  
                </li>
                <li class="has-subnav">
                    <a href="#">
                        <i class="fa fa-laptop fa-2x"></i>
                        <span class="nav-text">
                            Stars Components
                        </span>
                    </a>
                    </li>
                     <li class="has-subnav">
                    <a href="#">
                        <i class="fa fa-user fa-2x"></i>
                        <span class="nav-text">
                            Stars Components
                        </span>
                    </a>
                </li>
                 <li class="has-subnav">
                    <a href="#">
                        <i class="fa fa-shopping-cart fa-2x"></i>
                        <span class="nav-text">
                            Stars Components
                        </span>
                    </a>
                </li>
                 <li class="has-subnav">
                    <a href="#">
                        <i class="fa fa-vcard fa-2x"></i>
                        <span class="nav-text">
                            Stars Components
                        </span>
                    </a>
                </li>
                 <li class="has-subnav">
                    <a href="#">
                        <i class="fa fa-address-book fa-2x"></i>
                        <span class="nav-text">
                           Info
                        </span>
                    </a>
                </li>
                <li class="has-subnav">
                    <a href="#">
                       <i class="fa fa-list fa-2x"></i>
                        <span class="nav-text">
                            Forms
                        </span>
                    </a>
                    
                </li>
                <li class="has-subnav">
                    <a href="#">
                       <i class="fa fa-folder-open fa-2x"></i>
                        <span class="nav-text">
                            Pages
                        </span>
                    </a>
                   
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-bar-chart-o fa-2x"></i>
                        <span class="nav-text">
                            Graphs and Statistics
                        </span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-font fa-2x"></i>
                        <span class="nav-text">
                           Quotes
                        </span>
                    </a>
                </li>
                <li>
                   <a href="#">
                       <i class="fa fa-table fa-2x"></i>
                        <span class="nav-text">
                            Tables
                        </span>
                    </a>
                </li>
                <li>
                   <a href="#">
                        <i class="fa fa-map-marker fa-2x"></i>
                        <span class="nav-text">
                            Maps
                        </span>
                    </a>
                </li>
                <li>
                    <a href="#">
                       <i class="fa fa-info fa-2x"></i>
                        <span class="nav-text">
                            Documentation
                        </span>
                    </a>
                </li>
            </ul>

            <ul class="logout">
                <li>
                   <a href="#">
                         <i class="fa fa-power-off fa-2x"></i>
                        <span class="nav-text">
                            Logout
                        </span>
                    </a>
                </li>  
            </ul>
        </nav>
        <li></li><a href="#"></a><i class="fa fa-bar-chart-o fa-2x">
            </i></li>
</div>
      </form>
</body>
</html>
