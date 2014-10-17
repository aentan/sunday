//= require 'svg_fallback.jquery'
//= require 'picturefill'

$(document).ready(function() {
  
  $('.menu-toggle').click(function() {
    $('body').removeClass('contact-open').toggleClass('menu-open');
  });
  
  $('.contact-toggle').click(function() {
    $('body').removeClass('menu-open').toggleClass('contact-open');
  });
  
});