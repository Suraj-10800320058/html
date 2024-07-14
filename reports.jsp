<%@ page import="java.sql.*"%>
<%
    if(session.getValue("login")==null) response.sendRedirect("cyber.jsp?invalidsession");
 %>
<html xmlns=""><head>
<meta http-equiv="page-enter" content="blendTrans(duration=1)">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="expires" content="0">
<link class="catg" href="cyber.css" rel="stylesheet">
<title>Online Medical Booking Store</title>
</head><body><jsp:include page="admin_transactions.jsp" />
<Script>
   function getDays() {
   var cdl="<select name='day'>"
   cdl+="<option selected value='0'>Day</option>";
   for(day=1;day<32;day++)
   cdl+="<option value='"+day+"'>"+day+"</option>";
   cdl+="</select>";
   mtext="<input name=date>&nbsp;&nbsp;DD-MMM-YYYY Format";
   return (mtext);
   }
   function getYears() {
   var cyl="<select name='year'>";
   for(year=2001;year<=2030;year++) {
       yr=""+year+"";app=yr.substring(2);
   cyl+="<option value='"+app+"'>"+year+"</option>";
   }
   cyl+="</select>";
   return (cyl);
   }
   function getMonths() {
   months=["jan","feb","mar","apr","may","jun","jul","aug","sep","oct","nov","dec"];
   var cyl="<select name='month'>";
   for(month=0;month<months.length;month++)
   cyl+="<option value='"+months[month]+"'>"+months[month]+"</option>";
   cyl+="</select>";
   return (cyl);
   }
   function getCombo(obj) {
   var type=obj.options[obj.selectedIndex].value;
   var tgt=document.getElementById('base');
   var lable=document.getElementById('lable');
   if(type=='month') { lable.innerHTML="Month:"; tgt.innerHTML=getMonths();}
   else if(type=='year') {lable.innerHTML="Year:"; tgt.innerHTML=getYears();}
   else if(type=='date') {lable.innerHTML="Date:"; tgt.innerHTML=getDays();}
   else {lable.innerHTML=""; tgt.innerHTML=""; return}
   }
   function checkSubmit() {
   if(document.forms[0].based.options[document.forms[0].based.selectedIndex].value=="") {
	   alert("Select  Reports Basis");
       document.forms[0].based.focus();
	   return false;
   }  return true;
   }
   onload=function() {document.forms[0].based.options[0].selected=true;}
</script>
<BR>
<fieldset>
<legend>Reports Terminal</legend><BR>
<table cellspacing=0 cellpadding=5 align=center border=0><form action="getreports.jsp" onsubmit="return checkSubmit()">
<Tr><td align=right>Reports Based On:</td><td><select name=based onchange="getCombo(this)">
<option value="">Select Reports</option>
<option value="daily">Daily Sales Reports</option>
<option value="date">Based On Date</option>
<option value="month">Based On Month</option>
<option value="year">Based On Year</option></select></td></tr>
<tr><TD align=right id=lable align=right><Td align=right id=base></td></tr>
<Tr><TD align=right>View Reports in:</td><Td><select name=format>
<option value="excel">Microsoft Excel
<option value="html">HTML Format</select></td></tr>
<tr><Td align=center colspan=2><BR><button type=submit accesskey="P"><u>P</u>roceed</button>
&nbsp;&nbsp;<button type=submit accesskey="R"><u>R</u>eset</button>
</td></tr></form></table><BR></fieldset>
</body></html>
