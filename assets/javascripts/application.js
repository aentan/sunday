jQuery(function(){var t=!!("createElementNS"in document&&document.createElementNS("http://www.w3.org/2000/svg","svg").createSVGRect);t?jQuery("body").addClass("svg"):(jQuery("body").addClass("no-svg"),jQuery("img").each(function(){var t=jQuery(this),e=t.attr("src").split("."),a=e.pop();"svg"==a.toLowerCase()&&(void 0!==t.attr("data-svg-fallback")?(t.attr("src",t.attr("data-svg-fallback")),t.removeAttr("data-svg-fallback")):t.attr("src",e.join(".")+".png"))}))}),function(t){"use strict";t.picturefill=function(){for(var e=t.document.getElementsByTagName("span"),a=0,r=e.length;r>a;a++)if(null!==e[a].getAttribute("data-picture")){for(var n=e[a].getElementsByTagName("span"),i=[],s=0,o=n.length;o>s;s++){var c=n[s].getAttribute("data-media");(!c||t.matchMedia&&t.matchMedia(c).matches)&&i.push(n[s])}var d=e[a].getElementsByTagName("img")[0];if(i.length){var l=i.pop();if(d&&"NOSCRIPT"!==d.parentNode.nodeName){if(l===d.parentNode)continue}else d=t.document.createElement("img"),d.alt=e[a].getAttribute("data-alt");d.src=l.getAttribute("data-src"),l.appendChild(d),d.removeAttribute("width"),d.removeAttribute("height")}else d&&d.parentNode.removeChild(d)}},t.addEventListener?(t.addEventListener("resize",t.picturefill,!1),t.addEventListener("DOMContentLoaded",function(){t.picturefill(),t.removeEventListener("load",t.picturefill,!1)},!1),t.addEventListener("load",t.picturefill,!1)):t.attachEvent&&t.attachEvent("onload",t.picturefill)}(this),$(document).ready(function(){$(".menu-toggle").click(function(){$("body").toggleClass("menu-open")})});