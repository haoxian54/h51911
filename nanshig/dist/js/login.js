"use strict";$(function(){$("#foot").load("footer_area.html");var e=decodeURI(location.search.slice(1));$("#username").val(e),$("h1").on("click",function(){location.href="../index.html"}),new CheckCode({ele:".verification",ele2:"#checkcon",num:4,change:"#checkcon"}).init(),$("#login").on("click",function(){$("#username").val()&&$("#psw").val()&&$("#checkcode").val()==$("#checkcon").html().toLowerCase()?ajax({type:"post",url:"../api/login.php",data:{username:$("#username").val(),password:$("#psw").val()},success:function(e){if(e){alert("登录成功");var a="";1==$("#autologin").prop("checked")&&(a=7),setCookie("username",$("#username").val(),a),location.href="../index.html?"+$("#username").val()}else alert("登录失败")}}):alert("未知错误")})});