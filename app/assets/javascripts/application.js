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

document.addEventListener("turbolinks:load", function() {
  path = document.URL.split('/')[3]
  if (path) {
    $(".navbar-nav>li.active").removeClass("active");
    $(".navbar-nav>li#" + path).addClass("active");
  }
  if (path != 'battles') {
    $(".favorite-works").css("top", '0px');
    window.onscroll = null;
  } else {
    var scrollPosition = document.body.scrollTop;

    window.onscroll = function(){
      var newScrollPosition = document.body.scrollTop,
      delta = newScrollPosition - scrollPosition;
      scrollPosition = document.body.scrollTop;

      if (delta > 0) {
        r = "+=" + delta / 2.8
      } else {
        r = "-=" + -delta / 2.8
      }
      $(".favorite-works").css("top", r + 'px');
    }
  }
});
