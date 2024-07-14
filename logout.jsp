<link href="cyber.css" rel="stylesheet">
<%
if(session.getValue("login")==null) {
out.println("<html xmlns=\"\"><head>");
out.println("<meta http-equiv=\"page-enter\" content=\"blendTrans(duration=1)\">");
out.println("<meta http-equiv=\"Pragma\" content=\"no-cache\">");
out.println("<meta http-equiv=\"expires\" content=\"0\">");
out.println("<link href=\"cyber.css\" rel=\"stylesheet\">");
out.println("<title>Shop-street Terminal</title>");
out.println("</head><body>");
out.println("<table width=780 cellspacing=0 cellpadding=0 border=0 align=center>"); 
out.println("<tr><td></td></tr></table>");
out.println("<BR><BR><BR><BR><Center><p>Invalid Session. Please Re-Login</p><br><a href=\"cyber.jsp\">Please Relogin Here</a>");
return;
}
session.invalidate();
response.sendRedirect("cyber.jsp");
%>
