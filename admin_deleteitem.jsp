<%@ page import="java.sql.*"%>
<%
    if(session.getValue("login")==null) response.sendRedirect("cyber.jsp?invalidsession");
    String table=request.getParameter("category");
	Connection con=null;
	PreparedStatement sst=null;
	Statement st=null;
	ResultSet rs=null;
 %>
 <script>
 function getValues(combo) {
 document.forms[0].description.value=combo.options[combo.selectedIndex].getAttribute('desc');
 document.forms[0].cost.value=combo.options[combo.selectedIndex].getAttribute('cost');
 }
 onload=function() {
	 try {
	 getValues(document.forms[0].name);
	 }catch(exception) { return true;}
 }
 </script>
<html xmlns=""><head>
<meta http-equiv="page-enter" content="blendTrans(duration=1)">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="expires" content="0">
<link class="catg" href="cyber.css" rel="stylesheet">
<title>Online Medical Booking Store</title>
</head><body><jsp:include page="admin_transactions.jsp" />
<BR>
<fieldset>
<legend>Delete Existing Product</legend><BR>
<table align=center cellspacing=1 cellpadding=3><form method=post action="admin_deleteitemchecked.jsp">
<tr><Td>Category:</td><TD><input readonly value="<%=table%>" name=category></td></tr></table>
<% 
    String head="";
	String buff="";
	try {
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	con=DriverManager.getConnection("jdbc:odbc:cyber","cyber","cyber");
    st=con.createStatement();
String cmd="Select * from product where CATEGORYNAME='"+table+"'";

System.out.println("----"+cmd);
    rs=st.executeQuery(cmd);
	head+="<table align=center width=600 cellspacing=1 cellpadding=2 bgcolor=lightslategray>";
	head+="<tr bgcolor=lightslategray><th style='color:aliceblue'>S.no</th><th style='color:aliceblue'>Item Name</th><th style='color:aliceblue'>Description</th><th style='color:aliceblue'>Price-Unit Cost</th></tr>";
	int count=0;
	while(rs.next()) {
		count++;
		String cat_name=rs.getString(2);
		String pname=rs.getString(3);
		String desc=rs.getString(4);
		float cost=rs.getFloat(5);


		buff+="<TR bgcolor=whitesmoke><TD>"+count+"</td><td><input name=item value='"+cat_name+"' type=checkbox class=check>"+cat_name+"</td><Td>"+desc+"<TD>"+cost+"</td></tr>";
	}
	if(buff.length()>0) out.println(head+buff+"</table>");
		else out.println("<link href='cyber.css' rel='stylesheet'><center><p>No Items Found.Items Terminal is Empty</p></center>");
   }   catch(Exception e) {
       System.out.println("---"+e);
	   out.println("<link href='cyber.css' rel='stylesheet'><center><p>No Items Found</p>");
       }
%>
<table align=center width=600>
<tr><Td align=center><button type=submit accesskey="P"><u>P</u>roceed</button>
&nbsp;&nbsp;<button type=submit accesskey="R"><u>R</u>eset</button>
</td></tr></table><BR></fieldset>
</body></html>
