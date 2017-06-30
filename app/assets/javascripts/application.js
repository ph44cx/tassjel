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
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .

(function() {
  $(document).on('click', '.toggle-window', function(e) {
    e.preventDefault();
    var panel = $(this).parent().parent();
    var messages_list = panel.find('.messages-list');
 
    panel.find('.panel-body').toggle();
    panel.attr('class', 'panel panel-default');
 
    if (panel.find('.panel-body').is(':visible')) {
      var height = messages_list[0].scrollHeight;
      messages_list.scrollTop(height);
    }
  });
})();

$(document).ajaxSend(function(e, xhr, options) {
  var token = $("meta[name='csrf-token']").attr("content");
 
});

function showMessage(msg, className) {
    alertMsg = '<div class="alert alert-' + className + '"><a href="#" class="close right" onclick="closeAlertMsg(event)">×</a><strong>' + msg + '</strong>  </div><script>dismiss_success_message();</script>';
    $('#show_message').html(alertMsg).show();
    $('body').animate({scrollTop: 0}, 500);
}

function showMessagecustom(msg, className, id) {
    alertMsg = '<div class="alert alert-' + className + '"><a href="#" class="close right" onclick="closeAlertMsg(event)">×</a><strong>' + msg + '</strong>  </div><script>dismiss_success_message();</script>';
    $('#show_message'+id).html(alertMsg).show();
    $('body').animate({scrollTop: 0}, 500);
}

function dismiss_success_message() {
    setTimeout(
        $('.alert-success').delay(2000).fadeOut(5000)
    )
}
function dismiss_error_message() {
    setTimeout(
        $('.alert-danger').delay(2000).fadeOut(5000)
    )
}
function closeAlertMsg(event) {
    that = event.currentTarget;
    $(that).closest('#show_message').fadeOut(5000);
}