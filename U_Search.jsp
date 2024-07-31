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
.style4 {color: #FF0000}
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
           <form name="s" action="U_Search.jsp" method="post" onSubmit="return valid()"  ons target="_top">   
                <DIV STYLE="width:600px;">
                  <TABLE ALIGN="center" STYLE="margin:0 0 0 30px;">
                    <TR>
                      <TD width="174"><div align="center" class="header">
                        <div align="right" class="style12">
                          <div align="center">Enter  Keyword</div>
                        </div>
                      </div></TD>
                      <TD width="152">
                      <div align="left"><INPUT TYPE="text" name="keyword" /></div></TD>
					  <TD width="155"><INPUT name="submit" TYPE="submit" STYLE="width:50px; height:25px;" VALUE="GO"/></TD>
                    </TR>
                    <TR>
                      <TD COLSPAN="3"><div class="style2"><div align="center" class="style13">( searching content Based on Post Description)</div></div></TD>
                    </TR>
                  </TABLE>
               </DIV>
                <P>&nbsp; </P>
          </FORM>
			
                <p>
				
				<%
	  
	  try
							{
							String user=(String)application.getAttribute("uname");
								String s10="",keyword="",s20="",s30="",s50="",s60="";
								String strDate="",strTime="",dt="";
								int rank=0,i=0;
								double found=0,total=0,ratio=0;
								
							    String	input= request.getParameter("keyword");	
								keyword = input.toLowerCase();
								
								SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
								SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

								Date now = new Date();
						
								strDate = sdfDate.format(now);
								strTime = sdfTime.format(now);
								dt = strDate + "   " + strTime;
								
				
								String sql8="select * from products ";
								Statement st8=connection.createStatement();
								ResultSet rs8=st8.executeQuery(sql8);
								while(rs8.next())
										{
									i=rs8.getInt(1);
								    s10 = rs8.getString(2);
									s20 = rs8.getString(9);
									s30 = rs8.getString(7);    
									int s40 = rs8.getInt(10);
								      total++;
									   String des=s30.toLowerCase();
					
										if ((des.contains(keyword)))
										{
										 found++ ;
								String sql12="select * from search_history where result='"+s10+"' and keyword='"+keyword+"' and user='"+user+"' ";
								Statement st12=connection.createStatement();
								ResultSet rs12=st12.executeQuery(sql12);
								if(rs12.next())
										{
								connection.createStatement().executeUpdate("update search_history set rank=rank+1 where result='"+s10+"'   ");
										}  
										else
										{
									   int s_rank=0;
									   String sql6="insert into search_history(user,keyword,type,result,dt,p_id,rank) values('"+user+"','"+keyword+"','"+s20+"','"+s10+"','"+dt+"','"+i+"','"+s_rank+"')";
						Statement st6=connection.createStatement();
						st6.executeUpdate(sql6);
									   
									  }
										
									%>
                </P>
 </p>
              <td width="86">
			<div align="center" class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
			 <input  name="image" type="image" src="pimages.jsp?id=<%=i%>&value=<%="oimage"%>" style="width:50px; height:50px;"  />
			 </a></div>	</td>
               <p> <div align="center" class="style11"><span class="style4">Product Name : </span><span class="style15"> <%=s10%></span></div></p>
                <p><div align="center" class="style11"><span class="style4">Product Rank : </span> <span class="style15"> <%=s40%></span></div></p>
                <p><div align="center" class="style5 style14"><span class="style11">View <a href="U_View_Search_Details.jsp?id=<%=i%>&name=<%=s10%>&type=<%="search"%>">Details</a></span></div></p>
                <p></p>
				<div>
				  <div align="center">--------------------------------------------------------</div>
				</div>
				 <p></p>
				<%
				
						  	}
							
						 }
						 ratio=(found*100)/total;
					
					String sql12="select * from searchratio where keyword='"+keyword+"' ";
								Statement st12=connection.createStatement();
								ResultSet rs12=st12.executeQuery(sql12);
								if(rs12.next())
										{
										String strQuery2 = "update searchratio set ratio='"+ratio+"' where keyword='"+keyword+"' ";
								connection.createStatement().executeUpdate(strQuery2);
					}
					else{
  String sql1="insert into searchratio(keyword,found,total,ratio,dt)values('"+keyword+"','"+(int)found+"','"+(int)total+"','"+ratio+"','"+dt+"')";
				Statement st1=connection.createStatement();
			st1.executeUpdate(sql1);	
					}
			%>	
			
			<h2 align="right"><span class="style4">search ratio=<%=(int)found%>:<%=(int)total%></span></h2>
			<p>&nbsp;</p>
						
				<%
						
					}
					
					catch(Exception e)
					{						  
						e.printStackTrace();
					}
					%>	 
                <div class="style11">
                  <div align="right"><a href="U_Main.jsp">Back</a></div>
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
