<link href="cyber.css" rel="stylesheet">
<%@ page import="java.sql.*"%>
<%
if(session.getValue("login")==null) response.sendRedirect("cyber.jsp?invalid");	
try	{
String user=request.getParameter("user").trim();
String exist=request.getParameter("exist").trim();
String newpass=request.getParameter("pass").trim();
String admin=(request.getParameter("admin")!=null)?request.getParameter("admin").toLowerCase():null;
String table=(admin!=null)?"cyber_admin":"cyber_signup";
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:cyber","cyber","cyber");
	Statement stmt=con.createStatement();
	ResultSet rs=stmt.executeQuery("select * from "+table+" where user_name='"+user+"' and password='"+exist+"'");
	if(rs.next()==false) {
			out.println("<center><h2>Incorrect password</h2>");
			out.println("<center><h4><a href=\"javascript:history.back()\">Continue</a></h4>");
			return;
	} else {
	stmt.close();
	stmt=con.createStatement();
	int result=stmt.executeUpdate("update "+table+" set password='"+newpass+"' where user_name='"+user+"'");
	out.println("<center><h2><h2>The operation was completed successfully</h2>");
    }	
		}
		catch(Exception e)
		{
			out.println("<center><h2>Failed To change Password Due to The Error "+e);
		}
%>
<center><h4><a href="javascript:history.back()">Continue</a></h4>

