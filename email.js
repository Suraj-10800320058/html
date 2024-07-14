   function dayList() {
   var cdl="<select name='day'>"
   cdl+="<option selected value='null'>Day</option>";
   for(day=1;day<32;day++)
   cdl+="<option value='"+day+"'>"+day+"</option>";
   cdl+="</select>";
   return (cdl);
   }
   function yearList() {
   var cyl="<select name='year'>";
   cyl+="<option selected value='null'>Year</option>";  
   for(year=1900;year<2005;year++)
   cyl+="<option value='"+year+"'>"+year+"</option>";
   cyl+="</select>";
   return (cyl);
   }
 function ValidateForm(frm1) {
 var user=frm1.user_name
 var pwd=frm1.password
 var cpwd=frm1.Confirm_Password
 var email=frm1.alternate_email
 var dobd=frm1.day
 var dobm=frm1.month
 var doby=frm1.year
 var hqo=frm1.hint_question
 var occp=frm1.occupation
 var hqa=frm1.hint_answer;
 var addr=frm1.address;
 var zodiac=frm1.zodiac;
 if(check(user) && check(pwd) && check(cpwd) && isPasswordMatch(frm1) && check(email) && isValidSymbol(frm1) && isValidDomain(frm1) && MenuSelected(dobd) && MenuSelected(dobm) && MenuSelected(doby) && MenuSelected(hqo) && check(hqa) && MenuSelected(occp) && check(addr) && check(zodiac)) return true;
 return false;
 }

 function check(cmd) {
 if(cmd.value=="") {
 alert(cmd.name.replace('_',' ')+" "+"Field Missed");
 cmd.focus();
 return false;}
 return true;
 }
 
 function MenuSelected(cmd) {
 if(cmd.selectedIndex=='0') {
 alert("Select "+cmd.name+" "+"Field");
 cmd.focus();
 return false;
            }
 return true;
        }
 function  isPasswordMatch(frm) {
 if(frm.password.value!=frm.Confirm_Password.value) {
 alert("Confirm Password Not Matched with Above Password");
 frm.Confirm_Password.focus();
 return false;
           }
 return true;
         }
 function isValidDomain(frm1) {
 var domains=new Array("co.in","com","edu","org","net","mil")
 var amail=frm1.alternate_email;
 var cond=amail.value.substring(amail.value.lastIndexOf(".")+1);
 for(i=0;i<domains.length;i++) {
 if(domains[i]==cond)  return true }
 alert("Invalid Domain Name");
 amail.focus();
 return false;
          }

 function isValidSymbol(frm1) {      
 var amail=frm1.alternate_email;
 if(amail.value.indexOf("@")==-1||amail.value.indexOf(".")==-1) {
 alert("Invalid Email-Id");
 amail.focus();
 return false;
 }
 return true;
 }

