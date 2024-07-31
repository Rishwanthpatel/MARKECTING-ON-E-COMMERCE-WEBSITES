<%@ include file="connect.jsp" %>
            <%@ page import="java.util.*"%>
            <%@ page import="java.text.*"%>
            <%@ page import="java.util.Date"%>
            <%@ page import="java.sql.*"%>
            <%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
            <%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Search</title>
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
.style2 {
	color: #FF0000;
	font-weight: bold;
}
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
          <h2>&nbsp;</h2>
          <h2>&nbsp;</h2>
          <h2>&nbsp;</h2>
          <h2><span class="style2"><%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>



<body>
<%
try {
    
            SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			Date now = new Date();
			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt = strDate + "   " + strTime;
			
			
			
String user=(String)application.getAttribute("uname");
String eweb=request.getParameter("eweb");
String mname=request.getParameter("pname");
int id=Integer.parseInt(request.getParameter("id"));

String review=request.getParameter("com");
PreparedStatement pst=connection.prepareStatement("insert into pcomment(pname,comment,c_name,dt,p_id,p_commerce) values(?,?,?,?,?,?)");
            
			pst.setString(1,mname);
            pst.setString(2,review);
            pst.setString(3,user);
			pst.setString(4,dt);
            pst.setInt(5,id);
			  pst.setString(6,eweb);

			
			 int x=pst.executeUpdate();
			
		
					if(x>0)
			{
					 
					 String sql="select * from products where p_name='"+mname+"' and p_ecommerce='"+eweb+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(sql);
					   		if(rs.next())
					   		{
								int rank1=rs.getInt(10);
					
					 int rank=rank1+1;
					 
					 Statement st32 = connection.createStatement();
					 String query32 ="update products set rank="+rank+" where p_name='"+mname+"' and p_ecommerce='"+eweb+"' ";
					 st32.executeUpdate (query32);
                    }
                          %> 
<span class="style2"> Review Added Successfull.						</span>
		                        <p align="center"><a href="U_Search.jsp?id=<%=id%>&name=<%=mname%>" class="style47">Back</a></p>
                          <%
			
								
								
			}
			else
			{
						%> 
  </h2>
  <div align="center"><br />
						    <b>Review is Not Successfull, Please try agian!!.						</b>          </div>
        </div>
						  <p align="center"><a href="U_Main.jsp" class="style47">Back</a></p>
						<div align="center">
						  <%
			}
			
		} 
		catch (Exception e) {
		e.printStackTrace();
		}	
			
			

%>

	 
	 
	 <div class="style11">
                  <div align="right"><a href="U_Main.jsp">Home</a></div>
                  <p class="infopost">&nbsp;</p>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          <div class="clr"></div>
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
