"use strict";$(function(){gotop({ele:".gotop"}),$(".login").on("click",function(){"none"==$("#indexlogin").css("display")?$("#indexlogin").css("display","block"):$("#indexlogin").css("display","none")}),$("#closebox").on("click",function(){$("#indexlogin").css("display","none")}),$("#loginbtn").on("click",function(){$("#uname").val()&&$("#psw").val()&&$("#checkcode").val()==$("#checkcon").html().toLowerCase()?ajax({type:"post",url:"api/login.php",data:{username:$("#uname").val(),password:$("#psw").val()},success:function(o){o?(alert("登录成功"),setCookie("username",$("#username").val(),""),location.href="1ndex.html"):alert("登录失败")}}):alert("未知错误")}),$(".shopcar").on("click",function(){location.href="shoppingcar.html"});var o=!0;$(".hidden").on("click",function(){o=(o?($(".shopcar").css("left","100px"),$(".gotop").css("left","100px"),$(".login").css("left","100px")):($(".shopcar").css("left","0"),$(".gotop").css("left","0"),$(".login").css("left","0")),!o)})});