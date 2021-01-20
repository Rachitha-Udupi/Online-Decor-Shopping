var i=0;
var flag=0;
var pos=0;
var pos1=0;
var pos2=0;
function Confirm()
{
    if(confirm('Are you sure You Want to cancel this order?'))
    {
        return true;
    }
    else
    {
        return false;
    }
}
function r(i,w){
    $("#"+i+"").width(w);
 }
function rate(w)
    {
        $(".stars").width(w);
    }
function msgbox()
{
    document.getElementById("msg").style.height=$(document).height()+"px";
}
function message(msg)
{
   document.getElementById("msg").style.display="block";
   $("#msg").append("<div class='msgbox'></div>");
   $(".msgbox").css({'margin-top':$(window).height()/2+'px'});
   $(".msgbox").append("<div class='msgbtndiv'></div>");
   $(".msgbtndiv").append("<input type='button' onclick='msgbtnclick()' value='X' class='msgbtn'>");
   $(".msgbox").append("<div class='msgcontent'></div>");
   $(".msgcontent").append("<div class='warndiv'></div>");
   $(".warndiv").append("<div class='warndivicon'></div>");
   $(".msgcontent").append("<p>"+msg+"</p>");
   var h=$(".msgcontent").height()/2;
   $(".warndiv").css({'height':h*2+'px'});
    $(".warndivicon").css({'margin-top':(h-15)+'px'});
}
function msgbtnclick()
{
    $("#msg").css({'transition':'2s','height':'0','opacity':'0'})
    $(".msgbox").css({'margin-top':'-600px','opacity':'0'});
}
function gohome()
{
    document.getElementById("homelink").click();
}
function imgswitch(img)
{
    document.getElementById("img2").style.borderWidth="1px";
    document.getElementById("img4").style.borderWidth="1px";
    document.getElementById("img3").style.borderWidth="1px";
    s=document.getElementById(img.getAttribute('id')).src;
    document.getElementById(img.getAttribute('id')).style.borderWidth="3px";
   document.getElementById("img1").src=s;
   $(".imgzoom").css({'background-image':'url('+s+')'});
   
}
function removeclass()
{
    document.getElementById("body").className="";
    pos=-200;
    document.getElementById("navbtn1").click();
    pos2=-200;
    document.getElementById("navbtn5").click();
}
function f()
{
	var z=document.getElementsByName("controls");
	z[i].checked=true;
	if(flag==0)
	{
	    i++;
	}
	else
	{
	    i--;
	}
	if(i>4)
	{
	   flag=1;
	    i--;
	}
    if(i<0)
    {
        flag=0;
        i++;
    }
}
setInterval(f,3000);
$(document).ready(function(){
    $(".divbtn").click(function(){
       if( $(this).text()=="+")
       {
            $(this).text('-');
             $(".revdiv").css({'height':'auto','margin-bottom':'30px','opacity':'1','max-height':'1000px','transition':'max-height 10s ease'});
             $(".revdiv1").css({'height':'auto','margin-bottom':'5px','opacity':'1','max-height':'1000px','transition':'max-height 10s ease'});
          
       }
       else
       {
             $(this).text('+');
             $(".revdiv").css({'height':'0','margin-bottom':'30px','opacity':'0','max-height':'0','transition':'height 50s ease'});
              $(".revdiv1").css({'height':'0','margin-bottom':'5px','opacity':'0','max-height':'0','transition':'height 50s ease'});
       }
    });
 });
function slideleft1()
{
    if(pos>-250)
    {
    pos-=50;
    document.getElementById("contentul1").style.left=pos+"%";
    }
}
function slideright1()
{
    if(pos<0)
    {
    pos+=50;
    document.getElementById("contentul1").style.left=pos+"%";
    }
}    
function slideleft2()
{
    if(pos1>-250)
    {
    pos1-=50;
    document.getElementById("contentul2").style.left=pos1+"%";
    }
}
function slideright2()
{
    if(pos1<0)
    {
    pos1+=50;
    document.getElementById("contentul2").style.left=pos1+"%";
    }
}    
function slideleft3()
{
    if(pos2>-250)
    {
    pos2-=50;
    document.getElementById("contentul3").style.left=pos2+"%";
    }
}
function slideright3()
{
    if(pos2<0)
    {
    pos2+=50;
    document.getElementById("contentul3").style.left=pos2+"%";
    }
}    
function tolog()
{
     document.getElementById("register").style.opacity="0";
     document.getElementById("login").style.opacity="1";
     document.getElementById("register").style.zIndex="-1";
     document.getElementById("login").style.zIndex="1";
     document.getElementById("btnsign").style.background="#757575";
     document.getElementById("btnlog").style.background="#1ab188";
}
function toreg()
{
    document.getElementById("register").style.opacity="1";
    document.getElementById("login").style.opacity="0";
    document.getElementById("register").style.zIndex="1";
    document.getElementById("login").style.zIndex="-1";
    document.getElementById("btnsign").style.background="#1ab188";
    document.getElementById("btnlog").style.background="#757575";
}
function tolog1()
{
     document.getElementById("register1").style.opacity="0";
     document.getElementById("login1").style.opacity="1";
     document.getElementById("register1").style.zIndex="-1";
     document.getElementById("login1").style.zIndex="1";
     document.getElementById("btnsign1").style.background="transparent";
     document.getElementById("btnlog1").style.background="#555";
      document.getElementById("btnsign1").style.color="#000";
         document.getElementById("btnlog1").style.color="#fff";
}
function toreg1()
{
    document.getElementById("register1").style.opacity="1";
    document.getElementById("login1").style.opacity="0";
    document.getElementById("register1").style.zIndex="1";
    document.getElementById("login1").style.zIndex="-1";
    document.getElementById("btnsign1").style.background="#555";
    document.getElementById("btnlog1").style.background="transparent";
     document.getElementById("btnsign1").style.color="#fff";
     document.getElementById("btnlog1").style.color="#000";
}
/*function logout()
{
    document.getElementById("btnlogout").click();
}*/