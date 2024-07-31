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
          <li class="active"><a href="A_Login.jsp"><span>e-commerce website </span></a></li>
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
          <table width="601" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr bgcolor="#99FF99">
              <td  width="47" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5"> SI NO </div></td>
              <td  width="116" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5">Product Image</div></td>
              <td  width="116" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5">Product Name</div></td>
			  <td  width="114" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5">Price</div></td>
			  <td  width="112" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5">Manufacturer</div></td>
              <td  width="82" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5">Rank</div></td>
			  <td  width="82" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5">Early Review Date</div></td>
			   <td  width="82" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5">Reviews</div></td>
          </tr>
            <%@ include file="connect.jsp" %>
            <%
					  String eweb=(String )application.getAttribute("eweb");
						String s1,s2,s3,s4,s5,s6;
						int i=1;
						try 
						{
						   	String query="select * from products where p_ecommerce='"+eweb+"' order by rank desc"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
								s4=rs.getString(10);
								s5=rs.getString(12);
							
							
							
						
					%>
            <tr>
              <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                  <div align="center" class="style22 style4 style5">
                   
                      <%out.println(i);%>
                    
                    <p>&nbsp; </p>
                  </div></td>
				  
              <td width="116" rowspan="1" ><div class="style22 style4 style5" style="margin:10px 13px 10px 13px;" > <a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="pimages.jsp?id=<%=i%>&value=<%="oimage"%>" style="width:90px; height:90px;"  />
              </a> </div></td>
			  <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                  <div align="center" class="style22 style4 style5">
                   
                      <span class="style8">
                      <a href="E_View_More_Details.jsp?name=<%=s1%>&id=<%=i%>">
                      <%out.println(s1);%>
                      </a></span>
                      <p>&nbsp; </p>
                </div></td>
				  <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                  <div align="center" class="style22 style4 style5">
                  
                      <%out.println(s2);%>
                   
                    <p>&nbsp; </p>
                  </div></td>
				  <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                  <div align="center" class="style22 style4 style5">
                    
                      <%out.println(s3+"/- Rs");%>
                  
                    <p>&nbsp; </p>
                  </div></td>
				  
				   <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                  <div align="center" class="style22 style4 style5">
                    
                      <span class="style8">
                      <%out.println(s4);%>
                      </span>
                      <p>&nbsp; </p>
                  </div></td>
				  
				  <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                  <div align="center" class="style22 style4 style5">
                    
                      <span class="style8">
                      <%out.println(s5);%>
                      </span>
                      <p>&nbsp; </p>
                  </div></td>
				  
				  
				  <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                  <div align="center" class="style22 style4 style5">
                    
                      <span class="style8">
                       <a href="E_Products_Reviews.jsp?name=<%=s1%>">View Reviews</a>
                      </span>
                      <p>&nbsp; </p>
                  </div></td>
    
          
           
            </tr>
            <%
					i=i+1;
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
