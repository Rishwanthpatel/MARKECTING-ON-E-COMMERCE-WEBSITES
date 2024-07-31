<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>E-Commerce Website Login Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-chunkfive.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script language="javascript" type="text/javascript">      
function valid()
{
var na3=document.s.username.value;
if(na3=="")

{
alert("Please Enter User Name");
document.s.username.focus();
return false;
}
else
{

}
var na4=document.s.password.value;
if(na4=="")

{
alert("Please Enter Password");
document.s.password.focus();
return false;
}


}
</script>
<style type="text/css">
<!--
.style1 {color: #FF00FF}
.style2 {font-size: 36px}
.style3 {font-size: 14px}
.style4 {font-size: 14px; color: #FF00FF; }
.style6 {font-size: 14px; color: #FF00FF; font-weight: bold; }
.style8 {color: #FF00FF; font-weight: bold; }
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="A_Login.jsp"><span>Admin</span></a></li>
          <li class="active"><a href="E_Login.jsp"><span>E-Commerce website </span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="logo">
        <h1><a href="index.html" class="style2">Characterizing and Predicting Early Reviewers for Effective Product Marketing on E-Commerce Websites</span></a></h1>
      </div>
      <div class="searchform"></div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /><span><big>Characterizing and Predicting Early Reviewers for Effective Product Marketing on E-Commerce Websites</big></span></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /><span><big>Characterizing and Predicting Early Reviewers for Effective Product Marketing on E-Commerce Websites</big></span></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /><span><big>Characterizing and Predicting Early Reviewers for Effective Product Marketing on E-Commerce Websites</big></span></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
         <h2><span class="style1">Welcome to E-Commerce Website Login</span></h2>
         <p align="center"><img src="images/Login.png" width="243" height="126" /></p>
         <form name="s" action="Authentication.jsp?value=<%="ecommercelogin"%>" method="post" onSubmit="return valid()"  ons target="_top">
		 <table width="660" align="left">
                  <tr>
                    <td width="204" height="35"><span class="style6 style3 style1">User Name (required)</span></td>
                    <td width="444"><input id="name" name="username" class="text" /></td>
                  </tr>
                  <tr>
                    <td height="38"><span class="style6 style3 style1">Password (required)</span></td>
                    <td><input type="password" id="password" name="password" class="text" /></td>
                  </tr>
				 
          <tr><td><span class="style6">Select E-Commerce Website :</span></td>
          <td><p>
                   <select name="ECommerce">
                     <option>Flip Cart</option>
                     <option>Infibeam</option>
                     <option>Ebay</option>
                     <option>Futurebazaar</option>
                     <option>Yebhi</option>
                   </select>
                 </p>
                </td>
		    </tr>
             
              </p>
                <p>&nbsp;</p>
				<tr><td><span class="style1"></span></td>
				<td><input name="imageField" type="submit"  class="style3" id="imageField" value="Login" />
                  <input name="Reset" type="reset" class="style3" value="Reset" /></td>
				</tr>
				<tr>
				  <td>&nbsp;</td>
				  <td><tr>
	<td>
	  <div align="right" class="style4 style2"></div></td>
	<td><span class="style8">New User ??</span> <a href="E_Register.jsp">Click Here To Register</a></td>
	</tr></td>
			  </tr>
		  </table>
        </form>
          <div class="clr"></div>
        </div>
        <p class="pages">&nbsp;</p>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="index.html">Home</a></li>
            <li><a href="A_Login.jsp">Admin</a></li>
            <li><a href="U_Login.jsp">User</a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
