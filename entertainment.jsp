<%@ page import="java.sql.*"%>
<%
    if(session.getValue("login")==null) response.sendRedirect("cyber.jsp?invalidsession");
 %>
<html xmlns=""><head>
<meta http-equiv="page-enter" content="blendTrans(duration=1)">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="expires" content="0">
<link class="catg" href="cyber.css" rel="stylesheet">
<title>Cyber Shopping Terminal</title>
</head><body><jsp:include page="user_transactions.jsp" />
<Script>
   function getCombo(obj) {
   var type=obj.options[obj.selectedIndex].value;
   var tgt=document.getElementById('base');
   var lable=document.getElementById('lable');
   if(type=='search') { lable.innerHTML="Film Name:"; tgt.innerHTML="<input name=search>"; }
   else {lable.innerHTML=""; tgt.innerHTML=""; return}
   }
   function checkSubmit() {
   if(document.forms[1].based.options[document.forms[1].based.selectedIndex].value=="") {
	   alert("Select  Film Operation");
       document.forms[1].based.focus();
	   return false;
   }  return true;
   }
   onload=function() {document.forms[1].based.options[0].selected=true;}
</script>
<BR>
<fieldset>
<legend>Entertainment Terminal</legend><BR>
<table cellspacing=0 cellpadding=5 align=center border=0><form action="filmoperation.jsp" onsubmit="return checkSubmit()">
<Tr><td align=right>View:</td><td><select name=based onchange="getCombo(this)">
<option value="">Film Operation</option>
<option value="top">View Top Films</option>
<option value="search">Search Films</option>
<option value="vote">Vote For Favorite Films</option></select></td></tr>
<tr><TD align=right id=lable align=right></td><Td id=base></td></tr>
<tr><Td align=center colspan=2><BR><button type=submit accesskey="P"><u>P</u>roceed</button>
&nbsp;&nbsp;<button type=submit accesskey="R"><u>R</u>eset</button>
</td></tr></form></table><BR></fieldset>
</body></html>
