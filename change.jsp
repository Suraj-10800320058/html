<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>

<jsp:useBean id="cat" class="bean.CategoryInsert" scope="request"></jsp:useBean>
<%
Vector v=cat.categoryDetails();
%>
<html xmlns="">
<head>
<meta http-equiv="page-enter" content="blendTrans(duration=1)">
<meta http-equiv="Pragma" content="no-cahe">
<meta http-equiv="expires" content="0">
<link href="cyber.css" rel="stylesheet">
<title>Online Medical Booking Store</title>
</head><body>
<table width=780 cellspacing=0 cellpadding=0 border=0 align=center> 
<tr><td><h1><font color=yellow><center>Online Medical Booking Store</center></font></h1></td></tr></table>
<script src="cyber.js"></script><BR>
<TABLE ALIGN=CENTER BORDER=0 oncontextmenu="return false"  cellspacing=0 cellpadding=0>
<form action="search_products.jsp"><TR><TD>Search Products To Buy&nbsp;:&nbsp;<input name=search>&nbsp;&nbsp;in
&nbsp;&nbsp;<select name=category>
<option>--Select Category--</option>
<%
for(int i=0;i<v.size();i++)
{
%>%>
<option><%=v.get(i)%></option>

<%
}	
%>
<!--
<option value='appliances'>Appliances
<option value='buildings'>Buildings
<option value='clothing'>Clothing
<option value='electronics'>Electronics
<option value='hardware'>Hardware
<option value='food'>Food
<option value='books'>Books
-->
</select>&nbsp;&nbsp;<button type=submit>Proceed</button>
</TR></form></TABLE>
<fieldset><legend>Login</legend><BR>
<table width=600 align=center><form method=post action=changepassword.jsp>
<tr><Td align=right>User Name:</td><Td><input name=user></td><td rowspan=5><img src="addcart.jpg" width=300 height=140 border=0></tR>
<tr><Td align=right>Existing Password:</td><Td><input name=exist type=password>
<tr><Td align=right>New Password:</td><Td><input name=pass type=password></td></tR>
<tr><Td align=right>Retype Password:</td><Td><input name=repass type=password></td></tR>
<tr><Td colspan=2 align=center><input class=check type=checkbox name=admin value=admin>Change As an Administrator
<tr><td colspan=2 align=center><button type=submit accesskey="C"><u>C</u>hange</button>&nbsp;&nbsp;
<button type=reset accesskey="R"><u>R</u>efresh</button></td></tr>
</form></table><BR></fieldset><BR><BR>
<li><b>Welcome to the Online Medical Booking Store.<b/>
<li>Here we pride ourselves in delivering medicines with prime commitment and with an honest, open and trustworthy approach.
<li>We desire to achieve customer fulfillment and satisfaction through their pleasant experience. 
<li>Our motto is to serve and satisfy our customers to the utmost by providing right medical aid when they need it most.
</body></html>
