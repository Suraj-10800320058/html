<%@ page import="java.sql.*"%>
<%if(session.getValue("login")==null) response.sendRedirect("cyber.jsp?invalidsession");%>
<html xmlns=""><head>
<meta http-equiv="page-enter" content="blendTrans(duration=1)">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="expires" content="0">
<link class="catg" href="cyber.css" rel="stylesheet">
<title>Cyber Shopping Terminal</title>
</head><body><jsp:include page="admin_transactions.jsp" />
<%
    Connection con=null;
	PreparedStatement stmt=null;
	Statement st=null;
	ResultSet rs=null;
	try{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		con=DriverManager.getConnection("jdbc:odbc:cyber","cyber","cyber");
		String banner=request.getParameter("banner");
		String fname=request.getParameter("filmname");
		if(banner.length()<1||fname.length()<1) {
		out.println("<center><p>You r trying to enter the empty data which is not allowed</p></center>");
		return;}
		String language=request.getParameter("language");
    	stmt=con.prepareStatement("insert into films values(?,?,?)");
		stmt.setString(1,banner);
		stmt.setString(2,fname);
		stmt.setString(3,language);
		int rss=stmt.executeUpdate();
		response.sendRedirect("films.jsp"); 
	} catch(Exception e) { out.println("<p>Error Occured<BR>"+e);}  
%>