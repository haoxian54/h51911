"use strict";function magnifying(e){var t={size:2};Object.assign(t,e);var o=document.querySelector(t.wrap),f=o.querySelector(t.showarea),i=o.querySelector(t.main),h=o.querySelector(t.showimg),l=o.querySelector(t.mask);l.style.width=i.offsetWidth/t.size+"px",l.style.height=i.offsetHeight/t.size+"px",h.style.width=100*t.size+"%",h.style.height=100*t.size+"%",console.log,i.onmouseover=function(){l.style.display="block",f.style.display="block"},i.onmouseout=function(){l.style.display="none",f.style.display="none"},i.onmousemove=function(e){var t=e.pageX-o.offsetLeft-l.offsetWidth/2,s=e.pageY-o.offsetTop-l.offsetHeight/2;t<=0?t=0:t>=i.offsetWidth-l.offsetWidth&&(t=o.offsetWidth-l.offsetWidth),s<=0?s=0:s>=i.offsetHeight-l.offsetHeight&&(s=i.offsetHeight-l.offsetHeight),l.style.left=t+"px",l.style.top=s+"px",h.style.left=-t*(h.offsetWidth-f.offsetWidth)/(o.offsetWidth-l.offsetWidth)+"px",h.style.top=-s*(h.offsetHeight-f.offsetHeight)/(i.offsetHeight-l.offsetHeight)+"px"}}