<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View All Products</title>
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
.style2 {font-size: 16px}
.style3 {color: #FFFFFF}
.style4 {color: #FF00FF}
.style5 {color: #0000FF}
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
          <li class="active"><a href="A_Login.jsp"><span>Admin </span></a></li>
          <li><a href="U_Login.jsp"><span>User</span></a></li>
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
          <h2><span class="style4">View All Products </span></h2>
          <p>&nbsp;</p>
          <table width="500" >
        <%@ include file="connect.jsp" %>
	<%@ page import="java.util.Date,java.lang.*" %>
<%@ page import="java.text.SimpleDateFormat, java.util.Date"%>
		<%
		String name=request.getParameter("name");
		//int id=Integer.parseInt(request.getParameter("id")); 
		
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s88,s99;
						int i=0;
						try 
						{	
						    						
							ArrayList al=new ArrayList();
							String id = request.getParameter("id");
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
								s88=rs.getString(9);
								int rank=rs.getInt(10);
								 s9=rs.getString(11);
								 s99=rs.getString(12);
								
								
					%>
					<tr>
					<td colspan="3">
					
				<img src="pimages.jsp?id=<%=i%>&value=<%="oimage"%>" width="130" height="100" align="middle" />				</td>
				</tr>
				<tr>
				  <td width="144" height="0"> <h4 class="style26" >Name:</h4></td>
				  <td width="340" class="style28" > <%=s1%></td>
				</tr>
				
				
				<tr>
				  <td height="0"><h4 class="style28" >Price:</h4></td>
					<td class="style28" > <%=s4%>/- Rs </td>
				    <td width="0"></td>
				</tr>
				
				<tr>
				  <td height="0"> <h4 class="style28" >Manufacturer:</h4></td>
					<td class="style28" > <%=s5%></td>
				</tr>
				<tr>
				  <td height="0"> <h4 class="style28" >Model:</h4></td>
					<td class="style28" > <%=s6%></td>
				</tr>
				<tr>
				  <td height="0"> <h4 class="style28" >Color:</h4></td>
					<td class="style28" > <%=s7%></td>
				</tr>
				
				<tr>
					<td height="0"> <h4 class="style28" >Product Descrition:</h4></td>
					<td class="style28" > <%=s8%></td>
				</tr>
				<tr>
					<td height="0"> <h4 class="style28" >ECommerce Website:</h4></td>
					<td class="style28" >  <p><%=s88%> </p></td>
				</tr>
				
				<tr>
					<td height="0"> <h4 class="style28" >Rank:</h4></td>
					<td class="style28" >  <p><%=rank%> </p></td>
				</tr>
				
				<tr>
					<td height="0"> <h4 class="style28" >Published Date:</h4></td>
					<td class="style28" >  <p><%=s9%> </p></td>
				</tr>
				
				<tr>
					<td height="0"> <h4 class="style28" >Early Review Date:</h4></td>
					<td class="style28" >  <p><%=s99%> </p></td>
				</tr>
				
				<tr>
				    <td height="0"> <h4 class="style28" >Rating</h4></td>
                    <td>
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
    %></td></tr>
				
		
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
	  <p align="right"><a href="A_Main.jsp">Back</a></p>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
