<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>E-Commerce Website  Add Product</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-chunkfive.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<script language="javascript" type="text/javascript">      <!--Start Reg Validation Jai Siddalinga-->
function valid()
{
var na3=document.s.categorie.value;
if(na3=="--Select--")

{
alert("Please Choose Categorie");
document.s.categorie.focus();
return false;
}
else
{

}
var na4=document.s.name.value;
if(na4=="")

{
alert("Please Enter Mobile name");
document.s.name.focus();
return false;
}

var na5=document.s.price.value;
if(na5=="")

{
alert("Please Enter Price");
document.s.price.focus();
return false;
}

var na6=document.s.size.value;
if(na6=="")

{
alert("Please Enter Description");
document.s.size.focus();
return false;
}
var na7=document.s.image.value;
if(na7=="")

{
alert("Please Enter Image");
document.s.image.focus();
return false;
}
var na8=document.s.subcategorie.value;
if(na8=="--Select--")

{
alert("Please Enter sub-categorie");
document.s.subcategorie.focus();
return false;
}
var na9=document.s.color.value;
if(na9=="")

{
alert("Please Enter color");
document.s.color.focus();
return false;
}
var na10=document.s.os.value;
if(na10=="")

{
alert("Please Enter OS");
document.s.os.focus();
return false;
}
var na11=document.s.im.value;
if(na11=="")

{
alert("Please Enter Internal Memory");
document.s.im.focus();
return false;
}
var na12=document.s.em.value;
if(na12=="")

{
alert("Please Enter External Memory");
document.s.em.focus();
return false;
}

}
</script> 



<!--
.style1 {font-size: 36px}
.style2 {color: #FF00FF}
.style3 {
	font-style: italic;
	color: #000000;
}
.style5 {
	color: #000000;
	font-weight: bold;
}
.style8 {color: #FFFF00; }
.style9 {color: #FFFF00; font-weight: bold; }
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
          <li class="active"><a href="U_Login.jsp"><span>Ecommerce website </span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="logo">
        <h1><a href="index.html" class="style1">Characterizing and Predicting Early Reviewers for Effective Product Marketing on E-Commerce Websites</span></a></h1>
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
          <h2><span class="style2">Add Products </span></h2>
          <p class="infopost">&nbsp;</p>
         <%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
				
<% 

String ename=(String)application.getAttribute("eweb");

%>


<form name="s" method="post" enctype="multipart/form-data" action="E_AddProduct1.jsp" onSubmit="return valid()"  ons target="_top">
 
  <table width="443" border="0" align="center">
	 
    <tr>
      <td width="165" height="36" bgcolor="#FF0000"><div align="center" class="style8"><em><strong> Product Name </strong></em> </div></td>
      <td width="268"><label>
        <input type="text" id="t1" name="name">
      </label></td>
    </tr>
	
	 <tr>
      <td height="35" bgcolor="#FF0000"><div align="center" class="style8"><em><strong>Price </strong></em></div></td>
      <td><label>
        <input type="text" id="t3" name="price">
      </label></td>
    </tr>
    <tr>
      <td height="51" bgcolor="#FF0000"><div align="center" class="style8"><em><strong> Manufacturer </strong></em></div></td>
      <td><label>
        <input type="text" id="t3" name="manu">
      </label></td>
    </tr>
   <tr>
      <td height="51" bgcolor="#FF0000"><div align="center" class="style8"><em><strong> Model </strong></em></div></td>
      <td><label>
        <input type="text" id="t3" name="model">
      </label></td>
    </tr>
	<tr>
      <td height="51" bgcolor="#FF0000"><div align="center" class="style8"><em><strong> Color </strong></em></div></td>
      <td><label>
        <input type="text" id="t3" name="color">
      </label></td>
    </tr>
	<tr>
      <td height="51" bgcolor="#FF0000"><div align="center" class="style8"><em><strong> Description </strong></em></div></td>
      <td><label>
        <textarea name="desc" id="t2"></textarea>
      </label></td>
    </tr>
    <tr>
      <td height="38" bgcolor="#FF0000"><div align="center" class="style8"><em><strong>  Image </strong></em></div></td>
      <td><input type="file" id="userImage" name="image" style="width:100%"  ></td>
    </tr>
    <tr>
      <td bgcolor="#FF0000"> <div align="center" class="style9">Ecommerce Website </div></td>
      <td><input type="text" value="<%=ename%>" name="eweb" /></td>
    </tr>
    <tr>
      <td height="26" bgcolor="#FF0000">
        <div align="center" class="style9">Enter Early Review Date </div></td>
      <td><input type="text"  name="dt"/>
        <span class="style5">(DD/MM/YYYY)</span></td>
    </tr>
    <tr>
      <td height="26">&nbsp;</td>
      <td><input type="submit" name="Submit" value="Add Post" /></td>
    </tr>
  </table>
</form>

          <p class="infopost">&nbsp;</p>
          <p class="infopost">&nbsp;</p>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Ecommerce</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu style3">
            <strong></strong>
            <li><strong><a href="E_Main.jsp">Home</a></strong></li>
            <li><strong><a href="E_Login.jsp">LogOut</a></strong></li>
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
