# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
    $('select').select2()
    $('input[type=file]').bootstrapFileInput()
    $('.file-inputs').bootstrapFileInput()
    $('#extraCert').hide()
    $('#certLang').hide()
    $('#st_certificates').hide()
    $('#st_ba_file_st_ba_cer_extra_yes').click ->
      $('#extraCert').show()
      return
    $('#st_ba_file_st_ba_cer_extra_no').click ->
      $('#extraCert').hide()
      return
    $('#st_ba_file_st_ba_cer_lang_yes').click ->
      $('#certLang').show()
      return
    $('#st_ba_file_st_ba_cer_lang_no').click ->
      $('#certLang').hide()
      return
    $('#addStCertificates').click ->
      $('#st_certificates').show()
      return
    return