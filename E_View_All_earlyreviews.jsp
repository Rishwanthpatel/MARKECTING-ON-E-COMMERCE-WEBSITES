<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View All Products Reviews</title>
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
.style4 {color: #FF00FF}
.style5 {color: #0000FF}
.style6 {color: #FF0000}
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
          <li class="active"><a href="A_Login.jsp"><span>E-commerce website </span></a></li>
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
          <h2><span class="style4">View All Early  Reviews on Products</span></h2>
          <p>&nbsp;</p>
          <table width="601" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr bgcolor="#99FF99">
              <td  width="47" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5"> SI NO </div></td>
              <td  width="116" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5">Product Image</div></td>
              <td  width="116" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5">Product Name</div></td>
			  <td  width="114" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5">Review </div></td>
			  <td  width="112" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5">Reviewed By</div></td>
              <td  width="82" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5"> Date and Time </div></td>
          </tr>
            <%@ include file="connect.jsp" %>
			<%@ page import="java.util.*"%>
            <%@ page import="java.text.*"%>
            <%@ page import="java.util.Date"%>
            <%
					      String eweb=(String )application.getAttribute("eweb");
						String name=request.getParameter("name");
						String s1="",s2,s3="",s4,s5,s6,s11,s22;
						int i=1;
						try 
						{
						
							Date now1 = new Date();
							SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/yyyy");
							String strCurrDate = sdf1.format(now1);
							Date date1 = new SimpleDateFormat("dd/MM/yyyy").parse(strCurrDate);
						
						
							String query1="select * from products where  p_ecommerce='"+eweb+"' and erdt>='"+strCurrDate+"' "; 
						   	Statement st1=connection.createStatement();
						   	ResultSet rs1=st1.executeQuery(query1);
						while ( rs1.next() )
					   		{

								s11=rs1.getString(2);
								s22=rs1.getString(12);
								
								
								
						
						   	String query="select * from pcomment where pname='"+s11+"' and p_commerce='"+eweb+"'  "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
							    int p_id=rs.getInt(6);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
								s4=rs.getString(5);
							
						
					%>
            <tr>
              <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                  <div align="center" class="style22 style4 style5">
                   
                      <%out.println(i);%>
                    
                    <p>&nbsp; </p>
                  </div></td>
			 <td width="116" rowspan="1" ><div class="style22 style4 style5" style="margin:10px 13px 10px 13px;" > <a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="pimages.jsp?id=<%=p_id%>&value=<%="oimage"%>" style="width:90px; height:90px;"  />
			   </a> </div></td>
			  
			  <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                  <div align="center" class="style22 style4 style5">
                    <%out.println(s1);%>
					<p>&nbsp; </p>
                </div></td>
				  <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                  <div align="center" class="style22 style4 style5">
                  
                      <%out.println(s2);%>
                   
                    <p>&nbsp; </p>
                  </div></td>
				  <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                  <div align="center" class="style22 style4 style5">
                  
                    <a href="A_UserProfile.jsp?value=<%=s3%>&name=<%=s3%>">  <%out.println(s3);%></a>
                   
                    <p>&nbsp; </p>
                  </div></td>
				  <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                  <div align="center" class="style22 style4 style5">
                    
                      <%out.println(s4);%>
                  
                    <p>&nbsp; </p>
                  </div></td>
    
          
           
            </tr>
            <%
					i=i+1;
						}
						}
					
				
						
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
            <tr>
              
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
			  <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
            </tr>
        </table>
		
		
		  <p>&nbsp;</p>
		  <h2><span class="style6">View All Lately  Reviews on Products</span></h2>
          <p>&nbsp;</p>
          <table width="601" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr bgcolor="#99FF99">
              <td  width="47" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5"> SI NO </div></td>
              <td  width="116" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5">Product Image</div></td>
              <td  width="116" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5">Product Name</div></td>
			  <td  width="114" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5">Review </div></td>
			  <td  width="112" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5">Reviewed By</div></td>
              <td  width="82" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5"> Date and Time </div></td>
          </tr>
           
            <%
					      String eweb1=(String )application.getAttribute("eweb");
						String name1=request.getParameter("name");
						String s111,s222,s333,s444,s555,s666,ss11,ss22;
						int i1=1;
						try 
						{
						
							Date now11 = new Date();
							SimpleDateFormat sdf11 = new SimpleDateFormat("dd/MM/yyyy");
							String strCurrDate1 = sdf11.format(now11);
							Date date11 = new SimpleDateFormat("dd/MM/yyyy").parse(strCurrDate1);
						
						
							String query1="select * from products where  p_ecommerce='"+eweb1+"' and erdt<='"+strCurrDate1+"' "; 
						   	Statement st1=connection.createStatement();
						   	ResultSet rs1=st1.executeQuery(query1);
						while ( rs1.next() )
					   		{

								ss11=rs1.getString(2);
								ss22=rs1.getString(12);
								
								
								
						
						   	String query="select * from pcomment where pname='"+ss11+"' and p_commerce='"+eweb1+"'  "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
							    int p_id1=rs.getInt(6);
								s111=rs.getString(2);
								s222=rs.getString(3);
								s333=rs.getString(4);
								s444=rs.getString(5);
							
						
					%>
            <tr>
              <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                  <div align="center" class="style22 style4 style5">
                   
                      <%out.println(i);%>
                    
                    <p>&nbsp; </p>
                  </div></td>
			 <td width="116" rowspan="1" ><div class="style22 style4 style5" style="margin:10px 13px 10px 13px;" > <a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="pimages.jsp?id=<%=p_id1%>&value=<%="oimage"%>" style="width:90px; height:90px;"  />
			   </a> </div></td>
			  
			  <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                  <div align="center" class="style22 style4 style5">
                    <%out.println(s111);%>
					<p>&nbsp; </p>
                </div></td>
				  <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                  <div align="center" class="style22 style4 style5">
                  
                      <%out.println(s222);%>
                   
                    <p>&nbsp; </p>
                  </div></td>
				  <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                  <div align="center" class="style22 style4 style5">
                  
                    <a href="A_UserProfile.jsp?value=<%=s333%>&name=<%=s333%>">  <%out.println(s333);%></a>
                   
                    <p>&nbsp; </p>
                  </div></td>
				  <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                  <div align="center" class="style22 style4 style5">
                    
                      <%out.println(s444);%>
                  
                    <p>&nbsp; </p>
                  </div></td>
    
          
           
            </tr>
            <%
					i1=i1+1;
						}
						}
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
            <tr>
              
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
			  <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
            </tr>
        </table>
		
		
	  <p align="right"><a href="E_Main.jsp">Back</a></p>
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
