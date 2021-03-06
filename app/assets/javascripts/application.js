// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery/dist/jquery
//= require turbolinks
//= require_tree .

document.addEventListener("turbolinks:before-render", function() {
  path = document.URL.split('/')[3]
  if (path == 'battles') {
  }
})

document.addEventListener("turbolinks:load", function() {
  path = document.URL.split('/')[3]
  if (path) {
    $(".navbar-nav>li.active").removeClass("active");
    $(".navbar-nav>li#" + path).addClass("active");
  }
  if (path == 'battles') {

    $(document).ready(function() {
      $("html, body").animate({ scrollTop: 220 }, 500, function (x, t, b, c, d) {
        if ((t/=d/2) < 1) return c/2*t*t*t + b;
        return c/2*((t-=2)*t*t + 2) + b;})}
    );
  } else {
    // $(".favorite-works").css("top", '0px');
  }
});

var scrollPosition = window.scrollY;

window.onscroll = function(){
  newScrollPosition = window.scrollY * 0.4;
  scrollPosition = window.scrollY;
  if (newScrollPosition > 85) newScrollPosition = 85;

  $(".favorite-works").css("top", newScrollPosition + 'px');
}
