<%@ page import="java.sql.*"%>
<%if(session.getValue("login")==null) response.sendRedirect("cyber.jsp?invalidsession");
String table=request.getParameter("table");
session.putValue("table",table);
response.sendRedirect("addcart.jsp");
%>