"use strict";var _createClass=function(){function n(t,e){for(var i=0;i<e.length;i++){var n=e[i];n.enumerable=n.enumerable||!1,n.configurable=!0,"value"in n&&(n.writable=!0),Object.defineProperty(t,n.key,n)}}return function(t,e,i){return e&&n(t.prototype,e),i&&n(t,i),t}}();function _classCallCheck(t,e){if(!(t instanceof e))throw new TypeError("Cannot call a class as a function")}var Lunbo=function(){function e(t){_classCallCheck(this,e),this.defaultOpt={speed:2,btnHide:!1},this.now=0,Object.assign(this.defaultOpt,t)}return _createClass(e,[{key:"init",value:function(){var e=this;this.box=document.querySelector(this.defaultOpt.ele),this.imglist=this.box.querySelector("#imglist"),this.page=this.box.querySelector("#page"),this.nextbtn=this.box.querySelector("#nextbtn"),this.prevbtn=this.box.querySelector("#prevbtn"),this.btn=this.box.querySelector("#btn"),this.timer=null,this.temp=0,this.creat(),this.move(),this.stop(),this.nextbtn.onclick=function(){e.next()},this.prevbtn.onclick=function(){e.prev()},this.page.onclick=function(t){e.change(t.target)},this.defaultOpt.btnHide&&this.hide()}},{key:"creat",value:function(){var i="",n="";this.defaultOpt.imglist.forEach(function(t,e){i+='<li style="background-image: url('+t+')";></li>',n+='<li index="'+e+'"></li>'}),this.imglist.innerHTML=i,this.page.innerHTML=n,this.imglist.children[0].className="active",this.page.children[0].className="active"}},{key:"move",value:function(){var t=this;this.timer=setInterval(function(){t.next()},1e3*this.defaultOpt.speed)}},{key:"stop",value:function(){var t=this;this.box.onmouseover=function(){clearInterval(t.timer)},this.box.onmouseout=function(){clearInterval(t.timer),t.move()}}},{key:"next",value:function(){this.temp=this.now,this.now++,this.show()}},{key:"prev",value:function(){this.temp=this.now,this.now--,this.show()}},{key:"show",value:function(){this.now>=this.imglist.children.length&&(this.now=0),this.now<0&&(this.now=this.imglist.children.length-1),this.imglist.children[this.temp].className="",this.imglist.children[this.now].className="active",this.follow()}},{key:"follow",value:function(){var t=!0,e=!1,i=void 0;try{for(var n,s=this.page.children[Symbol.iterator]();!(t=(n=s.next()).done);t=!0){n.value.className=""}}catch(t){e=!0,i=t}finally{try{!t&&s.return&&s.return()}finally{if(e)throw i}}this.page.children[this.now].className="active"}},{key:"change",value:function(t){"LI"==t.tagName&&(this.temp=this.now,this.now=t.getAttribute("index"),console.log(this.now),this.show())}},{key:"hide",value:function(){var i=this;this.btn.onmousemove=function(t){var e=t.pageX-i.btn.offsetLeft+i.btn.offsetWidth/2;e<=80?i.prevbtn.style.opacity="1":1116<=e?i.nextbtn.style.opacity="1":(i.prevbtn.style.opacity="",i.nextbtn.style.opacity="")},this.btn.onmouseout=function(){i.prevbtn.style.opacity="",i.nextbtn.style.opacity=""}}}]),e}();