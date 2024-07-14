<%if(session.getValue("login")==null) response.sendRedirect("cyber.jsp?invalidsession");%>
<%@ page import="java.sql.*"%>
<html xmlns=""><head>
<meta http-equiv="page-enter" content="blendTrans(duration=1)">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="expires" content="0">
<link class="catg" href="cyber.css" rel="stylesheet">
<title>Online Medical Booking Store</title>
</head><body><jsp:include page="admin_transactions.jsp" />
<fieldset>
<legend>Send Message</legend>
<br><table width=600 align=center cellspacing=0 cellpadding=3><form method=post action="sendto.jsp">
<TR><TD align=right>From:</td><Td><input name=from readonly value='Administrator'style='width:350px'></td></tr>
<TR><TD align=right>To:</td><td><input type=hidden value='user_inbox' name=table><select name=to style='width:350px'>
<%  
try {
  Connection con=null;
  PreparedStatement sst=null;
  Statement st=null;
  ResultSet rs=null;
  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
  con=DriverManager.getConnection("jdbc:odbc:cyber","cyber","cyber");
  st=con.createStatement();
  rs=st.executeQuery("select user_name from cyber_signup");
  while(rs.next()) {
	  String uname=rs.getString("user_name");
	  out.println("<option value='"+uname+"'>"+uname+"</option>");}
} catch(Exception e) {
	out.println("<option value='null'>Error Occured or No Users Found</option>");}
%>
</td></tr>
<TR><TD align=right>Subject:</td><td><input name=subject style='width:350px'></td></tr>
<TR><Td align=right valign=top>Message:</td><td><textarea name=message rows=5 cols=50 wrap=off style='width:350px;font-family:tahoma;font-size:11px;font-weight:bold;color:lightslategray;border:1px solid gray;background:honeydew;overflow:auto'></textarea></td></tr>
<tr><td colspan=2 align=center><button type=submit>Send It !</button>&nbsp;&nbsp;<button type=reset>Refresh</button></td></tr>
</form></table><br></fieldset></body></html>
