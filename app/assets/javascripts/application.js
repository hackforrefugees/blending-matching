// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require selectize
//= require_tree .

$(document).on('page:change', function() {
  $('.select-box').selectize({});

  $('.tag-box').selectize({
    delimiter: ',',
    persist: false,
    create: function(input) {
      return {
        value: input,
        text: input
      };
    }
  });

  $(".js-close").on("click", function() {
    $(this).parent().parent().fadeOut(200);
  })

  setTimeout(function(){
    $('.flash').fadeOut(200);
  }, 2000);
});
