<%@ page import="java.sql.*;"%>
<%
	String user=request.getParameter("user_name").toLowerCase();
	String pass=request.getParameter("password").toLowerCase();
	String aemail=request.getParameter("alternate_email").toLowerCase();
	String sex=request.getParameter("sex").toLowerCase();
	String dy=request.getParameter("day").toLowerCase();
	String mth=request.getParameter("month").toLowerCase();
	String yr=request.getParameter("year").toLowerCase();
	String ordate=dy+"-"+mth+"-"+yr;
	String hqus=request.getParameter("hint_question").toLowerCase();
	String hans=request.getParameter("hint_answer").toLowerCase();
	String addr=request.getParameter("address").toLowerCase();
	String occ=request.getParameter("occupation").toLowerCase();
	String zod=request.getParameter("zodiac").toLowerCase();
 %>
<%	Connection con=null;
	PreparedStatement sst=null;
	Statement st=null;
	ResultSet rs=null;
	try{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		con=DriverManager.getConnection("jdbc:odbc:cyber","cyber","cyber");
		String cmd="INSERT INTO cyber_signup VALUES(?,?,?,?,?,?,?,?,?,?)";
		String data[]={user,pass,aemail,sex,ordate,hqus,hans,addr,occ,zod};
		sst=con.prepareStatement(cmd);
		for(int dt=0;dt<data.length;dt++) sst.setString((dt+1),data[dt]);
		int eff=sst.executeUpdate();
		if(eff>0) out.println("<link rel=stylesheet href='cyber.css'><body bgcolor=gray><h1>Your Account is Created Successfully</h1><br><br><center><a href=\"index.html\" target=\"_parent\">Home</a>");
		else out.println("<link rel=stylesheet href='cyber.css'><body bgcolor=gray><h1>Your Action Failed</h1><br><br><center><a href=\"javascript:history.back()\">Go Back</a>&nbsp;&nbsp;<a href=\"index.html\" target=\"_parent\">Home</a>");
		}catch(Exception e)	{
   		String msgs=" ";
		msgs=(e.getMessage().toLowerCase().indexOf("unique")!=-1)?"The User Name U Specified is Already Existed.<BR><BR>Please Choose Another Name":"UnKnown Exception Occured";
		out.println("<link rel=stylesheet href='cyber.css'><body bgcolor=ivory><h1>Error Occured! While Processing Ur Action</font></h1><P>"+msgs+"</p><br><br><center><a href=\"javascript:history.back()\">Continue</a>&nbsp;&nbsp;<a href=\"index.html\" target=\"_parent\">Home</a>");

			}
%>