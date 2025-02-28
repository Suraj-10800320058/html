<%if(session.getValue("login")==null) response.sendRedirect("cyber.jsp?invalidsession");%>
<html xmlns="">
<head>
<meta http-equiv="page-enter" content="blendTrans(duration=1)">
<meta http-equiv="Pragma" content="no-cahe">
<meta http-equiv="expires" content="0">
<link  href="cyber.css" rel="stylesheet">
<title>Cyber Shopping Terminal</title>
</head><body>
<jsp:include page="user_transactions.jsp" />
<p style="font-family:tahoma;color:gray;font-weight:bold;border:1px solid gray;font-size:12px;padding:5px">Shopping Bag is designed to make your shopping and browsing experience easy. Use the links below 
to guide yourself. You can navigate to any point in the warehouse, adding or removing things from your 
shopping bag.<BR>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;You can view your and change bag contents whenever you like. Here is a description of each Shopping Bag 
function<HR size=1 color=gray>
<TABLE BORDER=0 WIDTH=780 ALIGN=CENTER CELLSPACING=5 CELPADDING=5>
	<TR>
		<TD><B>Gimme One</B>
		</TD>
		<TD>Adds the product in view to your bag.
		</TD>
	</TR>
	<TR>
		<TD><B>View/Change Bag</B>
		</TD>
		<TD>Displays an itemized, modifiable list of your current selected products.
		</TD>
	</TR>
	<TR>
		<TD><B>Previous Category</B>
		</TD>
		<TD>Returns to the first product of the previous category. If you are 
		currently viewing products in the first category, the program moves to the last category.
		</TD>
	</TR>
	<TR>
		<TD><B>Previous Product
		</TD>
		<TD>Returns to the previous product. If you are currently viewing the first 
		product of a category, the program moves to the last product of the previous category.
		</TD>
	<TR>
	</TR>
		<TD><B>Next Product
		</TD>
		<TD>Advances to the next product. If you are currently viewing the last product of a category, 
		the program moves to the first product of the next category.
		</TD>
	</TR>
	<TR>
		<TD><B>Next Category</B>
		</TD>
		<TD>Advances to the first product of the next category. If you are currently viewing products 
		in the last category, the program moves to the first product in the first category.
		</TD>
	</TR>
	<TR>
		<TD><B>Show Catalog</B>
		</TD>
		<TD>Displays a linked list of all product categories.
		</TD>
	</TR>
	<TR>
		<TD><B>Product Search</B>
		</TD>
		<TD>Enables you to search all products by name, description, and price.
		</TD>
	</TR>
	<TR>
		<TD><B>Help</B>
		</TD>
		<TD>Loads this page.</TD>
	</TR>
</TABLE></p>
</BODY></HTML>

