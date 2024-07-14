<link href="cyber.css" rel="stylesheet">
<%@ page import="java.sql.*;"%>
<%
	String user=request.getParameter("userid").toLowerCase();
	String pass=request.getParameter("pass").toLowerCase();
	String admin=(request.getParameter("admin")!=null)?request.getParameter("admin").toLowerCase():null;
	String table=(admin!=null)?"cyber_admin":"cyber_signup";
 %>
<%	Connection con=null;
	PreparedStatement sst=null;
	Statement st=null;
	ResultSet rs=null;
	try{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		con=DriverManager.getConnection("jdbc:odbc:cyber","cyber","cyber");
		String cmd="Select * from "+table+" where user_name='"+user+"' and password='"+pass+"'";
    	st=con.createStatement();
        rs=st.executeQuery(cmd);
		out.println("<center><h1>Un Authorized User Found</font></h1></center>");
		session.putValue("login",user);
		if(rs.next()) response.sendRedirect((admin!=null)?"admin.jsp":"user.jsp");
		else out.println("<link rel=stylesheet href='cyber.css'><body bgcolor=gray><p><font face=tahoma color=maroon><BR>Please Check The User Name and Password u supplied is Correct or Not</h1><br><br><center><a href=\"javascript:history.back()\">Continue</a>&nbsp;&nbsp;<a href=\"javascript:parent.close()\">Skip From This Page</a>");
		}catch(Exception e)	{
		out.println("<link rel=stylesheet href='cyber.css'><body bgcolor=ivory><h1>Error Occured! While Processing Ur Transaction</font></h1><br><br><center><a href=\"javascript:history.back()\">Continue</a>&nbsp;&nbsp;<a href=\"javascript:parent.close()\">Skip From This Page</a>");

			}
%>