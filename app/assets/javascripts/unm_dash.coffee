# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $(document).on 'change', '#country_name_select', (evt) ->
    $.ajax 'unm_dash/update_cities',
      type: 'GET'
      dataType: 'script'
      data: {
        country_id: $("#country_name_select option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")
      success: (data, textStatus, jqXHR) ->
        console.log("Dynamic faculty name select OK!")

  $(document).on 'change', '#facultiy_names_select', (evt) ->
    $.ajax 'unm_dash/update_faculties',
      type: 'GET'
      dataType: 'script'
      data: {
        faculty_name_id: $("#facultiy_names_select option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")
      success: (data, textStatus, jqXHR) ->
        console.log("Dynamic faculty name select OK!")

  $(document).on 'change', '#facultiy_names_select1', (evt) ->
    $.ajax 'unm_dash/update_faculties1',
      type: 'GET'
      dataType: 'script'
      data: {
        faculty_name_id: $("#facultiy_names_select1 option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")
      success: (data, textStatus, jqXHR) ->
        console.log("Dynamic faculty name select OK!")

  $(document).on 'change', '#facultiy_names_select2', (evt) ->
    $.ajax 'unm_dash/update_faculties2',
      type: 'GET'
      dataType: 'script'
      data: {
        faculty_name_id: $("#facultiy_names_select2 option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")
      success: (data, textStatus, jqXHR) ->
        console.log("Dynamic faculty name select OK!")

  $(document).on 'change', '#facultiy_names_select3', (evt) ->
    $.ajax 'unm_dash/update_faculties3',
      type: 'GET'
      dataType: 'script'
      data: {
        faculty_name_id: $("#facultiy_names_select3 option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")
      success: (data, textStatus, jqXHR) ->
        console.log("Dynamic faculty name select OK!")