# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $(document).on 'change', '#facultiy_names_select', (evt) ->
    $.ajax 'unm_dash/update_specialities',
      type: 'GET'
      dataType: 'script'
      data: {
        faculty_name_id: $("#facultiy_names_select option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")
      success: (data, textStatus, jqXHR) ->
        console.log("Dynamic faculty name select OK!")