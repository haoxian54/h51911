"use strict";var _createClass=function(){function c(e,t){for(var n=0;n<t.length;n++){var c=t[n];c.enumerable=c.enumerable||!1,c.configurable=!0,"value"in c&&(c.writable=!0),Object.defineProperty(e,c.key,c)}}return function(e,t,n){return t&&c(e.prototype,t),n&&c(e,n),e}}();function _classCallCheck(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}var CheckCode=function(){function t(e){_classCallCheck(this,t),this.defaultOpt={},Object.assign(this.defaultOpt,e)}return _createClass(t,[{key:"init",value:function(){var e=this;this.box=document.querySelector(this.defaultOpt.ele),this.input=this.box.querySelector("input"),this.checkcontent=this.box.querySelector(this.defaultOpt.ele2),this.change=this.box.querySelector(this.defaultOpt.change),this.getcode(),this.change.onclick=function(){e.getcode()}}},{key:"getcode",value:function(){for(var e="",t=0;t<this.defaultOpt.num;t++)e+="0123456789zxcvbnmasdfghjklqwertyuiopZXCVBNMASDFGHJKLQWERTYUIOP"[parseInt(62*Math.random())];this.checkcontent.innerHTML=e}}]),t}();