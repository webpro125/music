# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#= require cocoon
#= require chosen.jquery
$ ->
  $("a.add_fields").
  data("association-insertion-method", 'append')
  .data("association-insertion-traversal", 'closest')

  $('.professional-profile-form').on 'cocoon:after-insert', (e, insertedItem) ->
    $('.jquery-chosen').chosen({width: "100%"})
    if insertedItem.hasClass('sub-profile-wrap') && insertedItem.closest('div.profile-wrap').find('select.profile-id').val() != ''
      insertedItem.closest('div.profile-wrap').find('select.profile-id').trigger('change')
    return

  $('.jquery-chosen').chosen({width: "100%"})
  return
$(document).on 'change', '.profile-id', (e) ->
  thisObj = $(this)
  url = '/profile_sub_profile/' + $(this).val()
  $.get url
  .done (data) ->
    subProfileObj = thisObj.closest('div.row').find('select.sub-profile-id')
    subProfileObj.html(data)
    subProfileObj.trigger("chosen:updated");