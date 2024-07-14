<%@ page import="java.sql.*"%>

<jsp:useBean id="cat" class="bean.CategoryInsert" scope="request"></jsp:useBean>
<%@ page import="java.util.*"%>
<%!
String status=null;
%>

<%if(session.getValue("login")==null) response.sendRedirect("cyber.jsp?invalidsession");
//String status=request.getAttribute("status").toString();
//System.out.println("----------"+status);


status=request.getParameter("status");

System.out.println(status+"------"+status);

Vector v=cat.categoryDetails();

%>
<html xmlns=""><head>
<meta http-equiv="page-enter" content="blendTrans(duration=1)">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="expires" content="0">
<link class="catg" href="cyber.css" rel="stylesheet">
<title>Online Medical Booking Store</title>
<body>
<form action="./Category" >
<center>

<table width=780 cellspacing=0 cellpadding=0 border=0 align=center> 
<tr><td><table width="780" cellspacing="0" cellpadding="0" border="0" align="center">
  <tr>
    <td><h1><font color="yellow">
      <center>
       Online Medical Booking Store
      </center>
    </font></h1></td>
  </tr>
</table></td></tr></table>
<Script src="hcfl.js"></script><BR>
<TABLE ALIGN=CENTER BORDER=0 align=center width=780 oncontextmenu="return false" cellspacing=0 cellpadding=0>
	<TR>
		<TD nowrap align=center>
<A class="catg" href="Category.jsp">AddCategory<A>
<A class="catg" href="CategoryUPDEL.jsp">UpdateCategory<A>
		<A class="catg" href="addproduct.jsp">Add<A>
		<A class="catg" href="modifyproduct.jsp">Modify<A>
		<A class="catg" href="deleteproduct.jsp">Delete<A>
		<!--<A class="catg" href="films.jsp">Films</A>-->
		<A class="catg" href="reports.jsp">Reports<A>
		<A class="catg" href="deleteuser.jsp">Delete User<A>
		<A class="catg" href="admin_inbox.jsp">Inbox<A>
		<A class="catg" href="admin_message.jsp">Reply<A>
		</td>
	</TR>
</TABLE>

<table>
<tr>
<th>
<%
if(status!=null)
out.println(status);
%>
</th>
</table>
<table>
<tr>
<th></th>
</tr>

</table>
<table>
<tr>
<th><br><br><br></th>
</tr>
<tr>
<th>SelectCategory</th>
<td>
<select  name="category">
<option>--</option>
<%
for(int i=0;i<v.size();i++)
{
%>
<option><%=v.get(i)%></option>

<%
}	
%>
</select>
</td>
</tr>
<tr>
<th>CategoryName</th>
<td>
<input type="text" name="upcategory" >
</td>
</tr>

<tr>
<th><br><br></th>
<td></td>
</tr>
<tr>
<th colspan=2>
<input type="submit" name="add" value="Update">
<input type="reset" value="Clear">
</th>
</tr>
</table>
</center>

</form>
</body>
</html>