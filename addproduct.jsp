<%if(session.getValue("login")==null) response.sendRedirect("cyber.jsp?invalidsession");%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>

<jsp:useBean id="cat" class="bean.CategoryInsert" scope="request"></jsp:useBean>
<%
Vector v=cat.categoryDetails();
%>

<html xmlns=""><head>
<meta http-equiv="page-enter" content="blendTrans(duration=1)">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="expires" content="0">
<link class="catg" href="cyber.css" rel="stylesheet">
<title>Online Medical Booking Store</title>
</head><body><jsp:include page="admin_transactions.jsp" />
<BR>
<fieldset>
<legend>Add New Product</legend><BR>
<table align=center cellspacing=1 cellpadding=3><form method=post action="admin_additem.jsp">
<TR><TD align=right>Category:</td><td><select name=category>
<option>--Select Category--</option>
<%
for(int i=0;i<v.size();i++)
{
%>%>
<option><%=v.get(i)%></option>

<%
}	
%></select></td></tr>
<tr><Td align=right>Product Name:</td><TD><input name="name"></td></tr>
<tr><Td align=right>Description:</td><TD><input name="desc"></td></tr>
<tr><Td align=right>Price/Unit Cost:</td><TD><input name="cost"></td></tr>
<tr><Td colspan=2 align=center><button type=submit accesskey="P"><u>P</u>roceed</button>
&nbsp;&nbsp;<button type=submit accesskey="R"><u>R</u>eset</button>
</td></tr></table><BR></fieldset>
</body></html>
