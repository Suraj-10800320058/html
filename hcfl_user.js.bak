 seffect="height:22px;width:130px;background:#002050;color:aliceblue;cursor:pointer;font-size:12px;font-weight:bold;border:1px solid gray;-moz-border-radius:20px"; 
 document.write('<table width=780 align=center><tr><td align=center>')
 document.write('<button style='+seffect+' oncontextmenu="return false" onfocus=this.blur(); onmouseover=bgfade(this); onmouseout=stopFade(this); onclick=\'location="admin.jsp"\'>Home</button>&nbsp;&nbsp;&nbsp;')
 document.write('<button style='+seffect+' oncontextmenu="return false" onfocus=this.blur(); onmouseover=bgfade(this); onmouseout=stopFade(this); onclick=\'location="change.htm"\'>Change Password</button>&nbsp;&nbsp;&nbsp;')
 document.write('<button style='+seffect+' oncontextmenu="return false" onfocus=this.blur(); onmouseover=bgfade(this); onmouseout=stopFade(this); onclick=\'location="logout.jsp"\'>Logout</button>')
 document.write('</td></tr></table>')
 var ini=0,fader;
 var fcolor=new Array( "eeeeff", "ddddff", "ccccff", "bbbbff", "aaaaff","eeffee","ddffdd","ccffcc", "bbffbb", "aaffaa","ffeeee", "ffdddd", "ffcccc", "ffbbbb", "ffaaaa","aaaaaa","bbbbbb","cccccc","dddddd","eeeeee");      
 function bgfade(obj) {
 objt=eval(obj);
 ini++;
 objt.style.backgroundColor=fcolor[ini];
 if(ini==fcolor.length) ini=1;
 fader=setTimeout("bgfade(objt)",50);
 }
 function stopFade(obj) {clearTimeout(fader);
 obj.style.background="#002050"}
