<link href="cyber.css" rel="stylesheet">
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%
String[] items=request.getParameterValues("item");
if(session.getValue("login")==null) response.sendRedirect("cyber.jsp?invalid");	
try	{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:cyber","cyber","cyber");
	Statement stmt=con.createStatement();
	for(int i=0;i<items.length;i++)
	{
String str="delete from cart where CATEGORY='"+items[i]+"'";
System.out.println("<<<<<<>>>>>>"+str);
	stmt.executeUpdate(str);
	}
	response.sendRedirect("addcart.jsp");
} catch(Exception e) {
		out.println("<center><h2>Failed To Delete Items Due to The Error <BR>"+e);
}
%>
<center><h4><a href="user.jsp">Back To Home</a></h4>

