document.write('<body style="margin:0px;overflow:hidden">');
spcs="Welcome To Online Medical Booking Store";
sp=0;
while(sp++<150) spcs+="&nbsp;"
document.write("<title>"+spcs+"</title>");
/*try {
var checkNetscapeActiveXSupport=new ActiveXObject("Microsoft.ActiveXPlugin");
 } catch(e) {if(!document.all) status="Netscape Browser is Unable To Support ActiveX Controls on ur Webpage";}
var xyz = createBar( total_width, total_height,background_color,border_width, border_color, block_color, scroll_speed, block_count, scroll_count, action_to_perform_after_scrolled_n_times)*/
var w3c=(document.getElementById)?true:false;
var ie=(document.all)?true:false;
var N=-1;
function createBar(w,h,bgc,brdW,brdC,blkC,speed,blocks,count,action){
if(ie||w3c){
var t='<div id="_xpbar'+(++N)+'" style="visibility:visible; position:relative; overflow:hidden; width:'+w+'px; height:'+h+'px; background-color:'+bgc+'; border-color:'+brdC+'; border-width:'+brdW+'px; border-style:solid; font-size:1px;">';
t+='<span id="blocks'+N+'" style="left:-'+(h*2+1)+'px; position:absolute; font-size:1px">';
for(i=0;i<blocks;i++){
t+='<span style="background-color:'+blkC+'; left:-'+((h*i)+i)+'px; font-size:1px; position:absolute; width:'+h+'px; height:'+h+'px; '
t+=(ie)?'filter:alpha(opacity='+(100-i*(100/blocks))+')':'-Moz-opacity:'+((100-i*(100/blocks))/100);
t+='"></span>';
}
t+='</span></div>';
document.write(t);
var bA=(ie)?document.all['blocks'+N]:document.getElementById('blocks'+N);
bA.bar=(ie)?document.all['_xpbar'+N]:document.getElementById('_xpbar'+N);
bA.blocks=blocks;
bA.N=N;
bA.w=w;
bA.h=h;
bA.speed=speed;
bA.ctr=0;
bA.count=count;
bA.action=action;
bA.togglePause=togglePause;
bA.showBar=function(){
this.bar.style.visibility="visible";
}
bA.hideBar=function(){
this.bar.style.visibility="hidden";
}
bA.tid=setInterval('startBar('+N+')',speed);
return bA;
}}

function startBar(bn){
var t=(ie)?document.all['blocks'+bn]:document.getElementById('blocks'+bn);
if(parseInt(t.style.left)+t.h+1-(t.blocks*t.h+t.blocks)>t.w){
t.style.left=-(t.h*2+1)+'px';
t.ctr++;
if(t.ctr>=t.count){
eval(t.action);
t.ctr=0;
}}else t.style.left=(parseInt(t.style.left)+t.h+1)+'px';
}

function togglePause(){
if(this.tid==0){
this.tid=setInterval('startBar('+this.N+')',this.speed);
}else{
clearInterval(this.tid);
this.tid=0;
}}

function togglePause(){
if(this.tid==0){
this.tid=setInterval('startBar('+this.N+')',this.speed);
}else{
clearInterval(this.tid);
this.tid=0;
}}
var cw=document.all?document.body.clientWidth:window.innerWidth-3;
var ch=document.all?document.body.clientHeight-30:window.innerHeight-35;
var bar1= createBar(cw,15,'white',1,'black','white',8,15,3,"");
document.write("<iframe framespacing=0 id=FRAME1 frameborder=0 width="+cw+" height="+ch+" src='cyber.jsp' id=cyberframe></iframe>");
var bar1= createBar(cw,15,'white',1,'black','white',8,15,3,"");

 document.onselectstart=function() {
 if(event.srcElement.tagName=="INPUT") return true;
 else return false;}
