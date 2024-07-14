<%@ page import="java.sql.*"%>

<%@ page import="java.util.*"%>
<jsp:useBean id="cat" class="bean.CategoryInsert" scope="request"></jsp:useBean>
<%
Vector v=cat.categoryDetails();
%>
<%if(session.getValue("login")==null) response.sendRedirect("cyber.jsp?invalidsession");%>
<html xmlns=""><head>
<meta http-equiv="page-enter" content="blendTrans(duration=1)">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="expires" content="0">
<link class="catg" href="cyber.css" rel="stylesheet">
<title>Online Medical Booking Store</title>
</head><body><jsp:include page="user_transactions.jsp" />
<Script>
onload=function() {
document.sessionform.table.options[5].selected=true;
}
</script>
<table align=center cellspacing=0 cellpadding=0>
<form name=sessionform action="setsession.jsp" method=post>
<Tr><Td>Category:</td><TD><select name=table>
<%
for(int i=0;i<v.size();i++)
{
%>%>
<option><%=v.get(i)%></option>

<%
}	
%>
<!--
<option value='appliances'>Appliances
<option value='buildings'>Buildings
<option value='clothing'>Clothing
<option value='electronics'>Electronics
<option value='hardware'>Hardware
<option value='food'>Food
<option value='books'>Books
-->
</select>&nbsp;&nbsp;<button type=submit>Get Products</button></td></tr></form></table><BR>
<%
    String buff="";
	String head="";
	String list="";
	String buff2="";
    Connection con=null;
	PreparedStatement sst=null;
	Statement st=null;
	ResultSet rs=null;
	try{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		con=DriverManager.getConnection("jdbc:odbc:cyber","cyber","cyber");
String catg=(session.getValue("table")).toString();
	
//!=null)?session.getValue("table").toString():"appliances";
String query="select * from product where CATEGORYNAME='"+catg+"'";
System.out.println("--------"+query);
		String added="select * from cart";
		st=con.createStatement();
        rs=st.executeQuery(added);
        list+="<table cellspacing=1 cellpadding=2 border=0 align=left style='border:1px solid gray' width=150><caption><font face=tahoma color=gray size=1>Items Added in Cart</font></caption><form method=post action='deletecart.jsp'>";
		while(rs.next()) {
		String iname=rs.getString("CATEGORY");
        buff2+="<Tr><td><input class=check type=checkbox name=item value='"+iname+"'>"+iname+"</td></tr>";
		} if(buff2.length()>0) out.println(list+buff2+"<Tr><td colspan=5 align=center><BR><button type=submit>Delete</button></td></tr></form></table>");
        else out.println("<link href='cyber.css' rel='stylesheet'><table width=150 align=left style='border:1px solid gray'><Tr><td align=center>No Items in the cart</td></tr></table>");
		System.out.println("-zxcvzx--"+query);
		rs=st.executeQuery(query);
		int count=0;
		head+="<table cellspacing=1 cellpadding=2 border=0 align=center width=600><form method=post action='addtocart.jsp'>";
        head+="<tr><Td>Sno</td><td>Category</td><td>Item Name</td><td>Description</td><td>Price /Unitcost</td><TD>Quantity</td></tr>";
		while(rs.next()) {
		count++;
		System.out.println(count+"-cvczxcvzx--"+query);
		String iname=rs.getString("CATEGORYNAME");
        String desc=rs.getString("PRODUCT_DESC");
		float cost=rs.getFloat("PROD_PRICE");
        buff+="<Tr><TD>"+count+"</td><TD><input type=hidden value='"+catg+"' name=table>"+catg+"</td>";
		buff+="<td><input checked class=check type=checkbox style='display:none' name=item value='"+iname+"'>"+iname+"</td>";
		buff+="<td><input checked class=check name=desc type=checkbox style='display:none' value='"+desc+"'>"+desc+"</td>";
		buff+="<TD><input checked class=check name=cost type=checkbox style='display:none' value='"+cost+"'>"+cost+"</td>";
		buff+="<Td><select name='qty' style='width:50px'>";
		buff+="<option value='0' selected>0<option value='1'>1<option value='2'>2<option value='3'>3<option value='4'>4<option value='5'>5<option value='6'>6<option value='7'>7<option value='8'>8<option value='9'>9<option value='10'>10</select></tr>";
		} if(buff.length()>0) out.println(head+buff+"<Tr><td colspan=5 align=center><BR><button type=submit>Proceed</button>&nbsp;&nbsp;<button type=reset>Refresh</button></td></tr></form></table>");
        else out.println("<link href='cyber.css' rel='stylesheet'><table width=600 align=center style='border:1px solid gray'><Tr><td align=center>No Items in the <font color=maroon>"+catg+"</font> Category</td></tr></table>");
     } catch(Exception e) { 
System.out.println("-----"+e);
		 out.println("<p>No Items Found "+e+"</p>"); }
	%>		
</body></html>
