<%@ page import="java.sql.*"%>

<%@ page import="java.util.*"%>

<%if(session.getValue("login")==null) response.sendRedirect("cyber.jsp?invalidsession");%>
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
<table align=center cellspacing=1 cellpadding=3><form method=post action="admin_modifyitem.jsp">
<TR><TD align=right>Category:</td><td><select name=category>
<option>--</option>
<%
for(int i=0;i<v.size();i++)
{
%>
<option><%=v.get(i)%></option>

<%
}	
%>

<!--<option value="appliances">Appliances
<option value="buildings">Building
<option value="books">Books
<option value="clothing">Clothing
<option value="electronics">Electronics
<option value="food">Food
<option value="Hardware">HardWare
<option value="Music">Music
-->
</select></td></tr>
<tr><Td colspan=2 align=center><button type=submit accesskey="P"><u>P</u>roceed</button>
&nbsp;&nbsp;<button type=submit accesskey="R"><u>R</u>eset</button>
</td></tr></table><BR></fieldset>
</body></html>
