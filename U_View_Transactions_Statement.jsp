<%@ include file="connect.jsp" %>
 <%@ page import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>


<title>Create Account</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-chunkfive.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 36px}
.style3 {
	font-style: italic;
	color: #000000;
}
.style8 {color: #FFFF00}
.style9 {color: #FF0000}
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
          <li class="active"><a href="U_Login.jsp"><span>User</span></a></li>
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
         <h2 class="style3">User :<span class="style21 style9"> <%=(String)application.getAttribute("uname")%>'s</span> Account Transactions </h2>
         <p class="style3">&nbsp; </p>
         <table width="545" border="1" style="border-collapse:collapse" cellpadding="0" cellspacing="0"  align="center">
            <tr bgcolor="#00FF33">
              <td width="108" height="30" bgcolor="#FF0000"><div align="center" class="style8 style25 style21"><strong>id</strong></div></td>
              <td width="171" bgcolor="#FF0000"><div align="center" class="style8 style26"><strong>product Name</strong></div></td>
		      <td width="171" bgcolor="#FF0000"><div align="center" class="style8 style26"><strong>Date</strong></div></td>
		      <td width="171" bgcolor="#FF0000"><div align="center" class="style8 style26"><strong>Price</strong></div></td>
			   <td width="171" bgcolor="#FF0000"><div align="center" class="style8 style26"><strong>E-Commerce Website</strong></div></td>
              <%	  
			  
			  String user=(String)application.getAttribute("uname");
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;
      	try 
	{
	
      		String query="select * from buy where user='"+user+"'"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s1=rs.getString(2);
		s2=rs.getString(6);
		s3=rs.getString(5);
		s4=rs.getString(8);
		
		%>
            </tr>
            <tr>
              <td height="28" bgcolor="#FFFF00"><div align="center" class="style25 style9"><strong><%=i%></strong></div></td>
              <td height="28" bgcolor="#FFFF00"><div align="center" class="style25 style9"><strong><%=s1%></strong></div></td>
			   <td height="28" bgcolor="#FFFF00"><div align="center" class="style25 style9"><strong><%=s3%></strong></div></td>
			   <td height="28" bgcolor="#FFFF00"><div align="center" class="style25 style9"><strong><%=s2+"/-RS"%></strong></div></td>
			   <td height="28" bgcolor="#FFFF00"><div align="center" class="style25 style9"><strong><%=s4%></strong></div></td>
		    </tr>
			 
			   <%	
			   
			
	  }

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
        </table>
          <p class="infopost">&nbsp;</p>
          <p align="center" class="infopost"><a href="U_Main.jsp">Back</a></p>
          <div class="clr"></div>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>User</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu style3">
		    <li><strong><a href="U_Profile.jsp">My Profile</a></strong></li>
			<li><strong><a href="U_Login.jsp">LogOut</a></strong></li>
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
