<%if(session.getValue("login")==null) response.sendRedirect("cyber.jsp?invalidsession");%>
<html>
<head>
<link class="catg" href="cyber.css" rel="stylesheet">
<title>Online Medical Booking Store</title>
</head>
<body>
<jsp:include page="user_transactions.jsp" />
<TABLE  cellSpacing=3 cellPadding=3 width=600 align="left" border=0 >
<TBODY>
<TR>
	<TD noWrap align=left >Ayurvedic</TD>
	<TD noWrap align=left>Ayurveda is an ancient Indian system of medicine</TD>
</TR>
<TR>
	<TD noWrap align=left>Baby Care</TD>
	<TD noWrap align=left>Baby food and baby care products</TD>
</TR>
<TR>
	<TD noWrap align=left>Body Care</TD>
	<TD noWrap align=left>All you need for your personal body care</TD>
</TR>
<TR>
	<TD noWrap align=left>Eye Care</TD>
	<TD noWrap align=left>Eye Care products for beautiful and glowing eyes</TD>
</TR>
<TR>
<TD noWrap align=left>Hair&Skin Care</TD>
<TD noWrap align=left>Professional hair and skin care products available</TD></TR>
<TR>
<TD noWrap align=left>Health Care</TD>
<TD noWrap align=left>All kinds of medicine for your health care </TD></TR>
<TR>
<TD noWrap align=left>Nutrition</TD>
<TD noWrap align=left>safe and nutritious food supply for ur good health</TD></TR>
<TR>
<TD noWrap align=left>Over the Counter(OTC)</TD>
<TD noWrap align=left>You can buy without a prescription from a healthcare professional.</TD></TR>
</TBODY>
</TABLE>
</body></html>

