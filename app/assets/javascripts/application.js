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
//= require jquery-ui
//= require dataTables/jquery.dataTables
//= require bootstrap.file-input
//= require jquery_nested_form
//= require bootstrap-sprockets
//= require turbolinks
//= require ckeditor/init
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

$(document).on('turbolinks:load',function() {
  $(".myTable").DataTable();
  $('select').select2();
  $('input[type=file]').bootstrapFileInput();
  $('a[data-toggle="tab"]').on('show.bs.tab', function(e) {
        localStorage.setItem('activeTab', $(e.target).attr('href'));
    });
    var activeTab = localStorage.getItem('activeTab');
    if(activeTab){
        $('#myTabs a[href="' + activeTab + '"]').tab('show');
    }
    
    $(".alert").fadeTo(4000, 1000).slideUp(1000, function(){
    $(".alert").slideUp(1000);
  });
});

jQuery(function() {
  return $("[data-behavior='delete']").on("click", function(e) {
    e.preventDefault();
    return swal({
      title: 'Are you sure?',
      text: 'You will not be able to recover this record!',
      type: 'warning',
      showCancelButton: true,
      confirmButtonColor: '#DD6B55',
      confirmButtonText: 'Yes, delete it!',
      cancelButtonText: 'No, cancel please!',
      closeOnConfirm: false,
      closeOnCancel: false
    }, (function(_this) {
      return function(confirmed) {
        if (confirmed) {
          $.ajax({
            url: $(_this).attr("href"),
            dataType: "JSON",
            method: "DELETE",
            success: function() {
              return location.reload();
            }
          });
        } else {
          swal('Cancelled', 'Record is safe :)', 'error');
        }
      };
    })(this));
  });
});