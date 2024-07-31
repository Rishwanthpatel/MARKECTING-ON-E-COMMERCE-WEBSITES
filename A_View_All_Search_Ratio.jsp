<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Search Ratio Transactions</title>
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
.style3 {
	font-weight: bold;
	font-style: italic;
}
.style4 {color: #FFFF00}
.style5 {font-weight: bold}
.style6 {font-weight: bold}
.style7 {font-weight: bold}
.style8 {color: #FF0000}
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
          <li class="active"><a href="A_Login.jsp"><span>Admin</span></a></li>
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
          <h2><span class="style2">View All User's Product search Ratio </span></h2>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <table width="601" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr bgcolor="#99FF99">
              <td  width="47" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style4 style6 style7 style21 style15"><strong> SI NO </strong></div></td>
              <td  width="116" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style4 style7 style21 style15"><strong>Keyword</strong></div></td>
              <td  width="116" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style4 style21 style15"><strong>Found</strong></div></td>
			  <td  width="114" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style4 style21 style15"><strong>Total </strong></div></td>
			  <td  width="112" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style4 style21 style15"><strong>Searched Ratio </strong></div></td>
              <td  width="82" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style4 style21 style15"><strong> Searched Date and Time </strong></div></td>
          </tr>
            <%@ include file="connect.jsp" %>
            <%
					     
						String name=(String)application.getAttribute("uname");
						String s1="",s2="",s3="",s4="",s5="",s6="",s7="";
						int i=1;
						try 
						{
						   	String query="select * from searchratio "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
							    int p_id=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
								s4=rs.getString(5);
								s5=rs.getString(6);
								
							
						
					%>
            <tr>
              <td height="0"  valign="baseline" bgcolor="#FFFFFF"><p class="style22 style8">&nbsp;</p>
                  <div align="center" class="style22 style5 style8">
                   
                      <%out.println(i);%>
                    
                    <p>&nbsp; </p>
                  </div></td>
			 <td width="116" rowspan="1" bgcolor="#FFFFFF" ><div class="style22 style8" style="margin:10px 13px 10px 13px;" ><strong>  
			   <%out.println(s1);%> 
		      </strong></div></td>
			  
			  <td height="0"  valign="baseline" bgcolor="#FFFFFF"><p class="style22 style8">&nbsp;</p>
                  <div align="center" class="style22 style5 style8">
                    <%out.println(s2);%>
					<p>&nbsp; </p>
                </div></td>
				  <td height="0"  valign="baseline" bgcolor="#FFFFFF"><p class="style22 style8">&nbsp;</p>
                  <div align="center" class="style22 style5 style8">
                  
                      <%out.println(s3);%>
                   
                    <p>&nbsp; </p>
                  </div></td>
				  <td height="0"  valign="baseline" bgcolor="#FFFFFF"><p class="style22 style8">&nbsp;</p>
                  <div align="center" class="style22 style5 style8">
                  
                     <%out.println(s4);%>
                   
                    <p>&nbsp; </p>
                  </div></td>
				  <td height="0"  valign="baseline" bgcolor="#FFFFFF"><p class="style22 style8">&nbsp;</p>
                  <div align="center" class="style22 style5 style8">
                    
                      <%out.println(s5);%>
                  
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
          <p>&nbsp;</p>
          <p align="center"><a href="A_Main.jsp"><strong>Back</strong></a></p>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Admin</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu style3">
            <li><a href="A_Main.jsp">Home</a></li>
            <li><a href="A_Login.jsp"> LogOut</a></li>
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
