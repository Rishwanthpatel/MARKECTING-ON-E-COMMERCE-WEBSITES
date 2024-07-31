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
.style2 {color: #FF00FF}
.style4 {color: #FFFF00}
.style5 {color: #FF0000}
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
          <h2><span class="style2">Search Products </span></h2>
          <p class="infopost">&nbsp;</p>
          <p class="infopost">&nbsp;</p>
          <table width="500" >
       
		<%
		String name=request.getParameter("name");
		//int id=Integer.parseInt(request.getParameter("id")); 
		
						String s1="",s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s88="";
						int i=0;
						String id = request.getParameter("id");
						try 
						{	
						    						
							ArrayList al=new ArrayList();
							
						   	String sql="select * from products where id='"+id+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(sql);
					   		if(rs.next())
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(9);
								s3=rs.getString(10);
								s4=rs.getString(3);
								s5=rs.getString(4);
								s6=rs.getString(5);
								s7=rs.getString(6);
								s8=rs.getString(7);
								s88=rs.getString(9); // ecom
								int rank=rs.getInt(10);
								 s9=rs.getString(11);
								
								
					%>
					<tr>
					<td colspan="3">
					
				<img src="pimages.jsp?id=<%=i%>&value=<%="oimage"%>" width="130" height="100" align="middle" />				</td>
				</tr>
				<tr>
				  <td width="120" height="0" bgcolor="#FF0000"> <h4 class="style26 style4" >Name:</h4></td>
				  <td width="498" class="style28 style5" > <%=s1%></td>
				</tr>
				
				<tr>
				  <td height="0" bgcolor="#FF0000"><h4 class="style28 style4" >Price:</h4></td>
					<td class="style28 style5" > <%=s4%>/- Rs</td>
				    </td>
				</tr>
				<tr>
				  <td height="0" bgcolor="#FF0000"> <h4 class="style28 style4" >Manufacturer:</h4></td>
					<td class="style28 style5" > <%=s5%></td>
				</tr>
				<tr>
				  <td height="0" bgcolor="#FF0000"> <h4 class="style28 style4" >Model:</h4></td>
					<td class="style28 style5" > <%=s6%></td>
				</tr>
				<tr>
				  <td height="0" bgcolor="#FF0000"> <h4 class="style28 style4" >Color:</h4></td>
					<td class="style28 style5" > <%=s7%></td>
				</tr>
				<tr>
				  <td height="0" bgcolor="#FF0000"> <h4 class="style28 style4" >Description:</h4></td>
					<td class="style28 style5" > <%=s8%></td>
				</tr>
				<tr>
				  <td height="0" bgcolor="#FF0000"> <h4 class="style28 style4" >Rank:</h4></td>
					<td class="style28" >  <p class="style5"><%=rank%> </p></td>
				</tr>
				<tr>
			      <td height="0" bgcolor="#FF0000"> <h4 class="style28 style4" >Rating</h4></td>
                    <td>
                      <span class="style5">
                      <%
					 
    if(rank==3)
    {
    	%>
    	              <input  name="image" type="image" src="Gallery/1.png" width="30" height="30" >
    	              <%
    }
    if(rank>3 && rank<=6)
    {
    	%>
    	              <input  name="image" type="image" src="Gallery/2.png" width="80" height="30" >
    	              <%
    }
    if(rank>6 && rank<=9)
    {
    	%>
    	              <input  name="image" type="image" src="Gallery/3.png" width="100" height="30" >
    	              <%
    }
    if(rank>9 && rank<=12)
    {
    	%>
    	              <input  name="image" type="image" src="Gallery/4.png" width="120" height="30" >
    	              <%
    }
    if(rank>12 && rank<=15)
    {
    	%>
    	              <input  name="image" type="image" src="Gallery/5.png" width="140" height="30" >
    	              <%
    }
    if(rank>15)
    {
    	%>
    	              <input  name="image" type="image" src="Gallery/6.png" width="170" height="30" >
    	              <%
    }
    %>
            </span></td></tr>
				
		
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
	 
	 
	 	 <table align="left">
<tr>
  <td><a href="U_Make_Review.jsp?id=<%=id%>&name=<%=s1%>"> MAKE REVIEW </a></td>
</tr>
</table>
 <table align="left">
<tr>
 <td><a href="U_Buy_Products.jsp?name=<%=s1%>&id=<%=id%>&ecom=<%=s88%>"> BUY </a></td>
</tr>
</table>

<h2 align="right">&nbsp;</h2>
			<% String type=request.getParameter("type");
			if(type.equalsIgnoreCase("topk")){%>
            <h2 align="right"><a href="U_Search.jsp" class="style4">Back</a></h2>
			<%}else if(type.equalsIgnoreCase("search")){%>
            <h2 align="right"><a href="U_Search.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("comment"))
			{%>
            <h2 align="right"><a href="U_Main.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("allproducts"))
			{%>
            <h2 align="right"><a href="U_AllProducts.jsp" class="style4">Back</a></h2>
			<%}

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
