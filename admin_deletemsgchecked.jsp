<link href="cyber.css" rel="stylesheet">
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%
String[] msgs=request.getParameterValues("from");
if(session.getValue("login")==null) response.sendRedirect("cyber.jsp?invalid");	
try	{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:cyber","cyber","cyber");
	Statement stmt=con.createStatement();
	for(int i=0;i<msgs.length;i++) stmt.executeUpdate("delete from admin_inbox where mid='"+msgs[i]+"'");
	response.sendRedirect("admin_inbox.jsp");
} catch(Exception e) {
		out.println("<center><h2>Failed To Delete Items Due to The Error <BR>"+e);
}
%>
<center><h4><a href="admin_inbox.jsp">Back To Inbox</a></h4>

