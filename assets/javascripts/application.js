jQuery(function(){var e=!!("createElementNS"in document&&document.createElementNS("http://www.w3.org/2000/svg","svg").createSVGRect);e?jQuery("body").addClass("svg"):(jQuery("body").addClass("no-svg"),jQuery("img").each(function(){var e=jQuery(this),t=e.attr("src").split("."),a=t.pop();"svg"==a.toLowerCase()&&(void 0!==e.attr("data-svg-fallback")?(e.attr("src",e.attr("data-svg-fallback")),e.removeAttr("data-svg-fallback")):e.attr("src",t.join(".")+".png"))}))}),function(e){"use strict";e.picturefill=function(){for(var t=e.document.getElementsByTagName("span"),a=0,n=t.length;n>a;a++)if(null!==t[a].getAttribute("data-picture")){for(var i=t[a].getElementsByTagName("span"),r=[],d=0,l=i.length;l>d;d++){var o=i[d].getAttribute("data-media");(!o||e.matchMedia&&e.matchMedia(o).matches)&&r.push(i[d])}var c=t[a].getElementsByTagName("img")[0];if(r.length){var s=r.pop();if(c&&"NOSCRIPT"!==c.parentNode.nodeName){if(s===c.parentNode)continue}else c=e.document.createElement("img"),c.alt=t[a].getAttribute("data-alt");c.src=s.getAttribute("data-src"),s.appendChild(c),c.removeAttribute("width"),c.removeAttribute("height")}else c&&c.parentNode.removeChild(c)}},e.addEventListener?(e.addEventListener("resize",e.picturefill,!1),e.addEventListener("DOMContentLoaded",function(){e.picturefill(),e.removeEventListener("load",e.picturefill,!1)},!1),e.addEventListener("load",e.picturefill,!1)):e.attachEvent&&e.attachEvent("onload",e.picturefill)}(this),$(document).ready(function(){$(".menu-toggle").click(function(){$("body").toggleClass("menu-open")})});