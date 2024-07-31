<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>E Commerce Authorize Users</title>
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
          <h2><span class="style4">View Ecommerce Users and Authorize</span></h2>
          <p>&nbsp;</p>
          <table width="913" align="center"  cellpadding="0" cellspacing="0" >
            <tr>
              <td width="51" height="37" valign="middle" bgcolor="#00FFFF" style="color: #2c83b0;"><div align="center" class="style27 style105 style65 style2"><em><strong>ID</strong></em></div></td>
              <td width="157" valign="middle" bgcolor="#00FFFF" style="color: #2c83b0;"><div align="center" class="style27 style105 style65 style2"><em><strong>User Image</strong></em></div></td>
              <td width="121" valign="middle" bgcolor="#00FFFF" style="color: #2c83b0;"><div align="center" class="style27 style105 style65 style2"><em><strong>User Name</strong></em></div></td>
              <td width="142" valign="middle" bgcolor="#00FFFF" style="color: #2c83b0;"><div align="center" class="style27 style105 style65 style2"><em><strong>Email</strong></em></div></td>
              <td width="135" valign="middle" bgcolor="#00FFFF" style="color: #2c83b0;"><div align="center" class="style27 style105 style65 style2"><em><strong>Mobile</strong></em></div></td>
              <td width="121" valign="middle" bgcolor="#00FFFF" style="color: #2c83b0;"><div align="center" class="style27 style105 style65 style2"><em><strong>Location</strong></em></div></td>
			  <td width="121" valign="middle" bgcolor="#00FFFF" style="color: #2c83b0;"><div align="center" class="style27 style105 style65 style2"><em><strong>E-Commerce Website</strong></em></div></td>
              <td width="108" valign="middle" bgcolor="#00FFFF" style="color: #2c83b0;"><div align="center" class="style27 style105 style65 style2"><em><strong>Status</strong></em></div></td>
			</tr>
            <%@ include file="connect.jsp" %>
            <%
					  
						String s1,s2,s3,s4,s5,s6,s7,s66;
						int i=0;
						try 
						{
						   	String query="select * from ecommerce"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s5=rs.getString(5);
								s3=rs.getString("location");
								s4=rs.getString(10);
								s6=rs.getString(9);
							    s66=rs.getString(12);
								
					%>
            <tr bgcolor="#99CCFF">
              <td height="122" align="center"  valign="middle" bgcolor="#FF0000"><div align="center" class="style57 style86 style55 style54 style37 style70 style71 style3"><strong>
                  <%out.println(i);%>
              </strong></div></td>
              <td  rowspan="1" align="center" valign="middle" bgcolor="#FF0000" ><div class="style57 style86 style55 style54 style37 style70 style71 style3" style="margin:10px 13px 10px 13px;" ><strong>
                  <input  name="image" type="image" src="images.jsp?id=<%=i%>" style="width:120px; height:100px;" />
              </strong></div></td>
              <td  align="center"  valign="middle" bgcolor="#FF0000"><div align="center" class="style57 style86 style55 style54 style37 style20 style70 style71 style3"><strong>
                  <%out.println(s1);%>
              </strong></div></td>
              <td  align="center"  valign="middle" bgcolor="#FF0000"><div align="center" class="style57 style86 style55 style54 style37 style20 style70 style71 style3"><strong>
                  <%out.println(s2);%>
              </strong></div></td>
              <td align="center"  valign="middle" bgcolor="#FF0000"><div align="center" class="style57 style86 style55 style54 style37 style20 style70 style71 style3"><strong>
                  <%out.println(s5);%>
              </strong></div></td>
			  <td  align="center"  valign="middle" bgcolor="#FF0000"><div align="center" class="style57 style86 style55 style54 style37 style20 style70 style71 style3"><strong>
                  <%out.println(s6);%>
              </strong></div></td>
			  <td  align="center"  valign="middle" bgcolor="#FF0000"><div align="center" class="style57 style86 style55 style54 style37 style20 style70 style71 style3"><strong>
                  <%out.println(s66);%>
              </strong></div></td>
			  
			  
               <%
						if(s4.equalsIgnoreCase("waiting"))
						{
						
						%>
              <td align="center" valign="middle" bgcolor="#FF0000"  style="color:#000000;"><div align="center" class="style20 style30 style37 style86 style70 style71 style3">
                  <div align="center"><a href="Authentication.jsp?value=<%="ecomstatus"%>&amp;id=<%=i%>" class="style6  style5">waiting</a></div>
              </div></td>
              <%
						}
						else
						{
						%>
              <td width="76" align="center"  valign="middle" bgcolor="#FF0000"><div align="center" class="style20 style37 style55 style30 style71 style72 style3">
                <%out.println(s4);%>
              </div></td>
              <%
						}
						
						%>
        </tr>
            <%
						}
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e);
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
