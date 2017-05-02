# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#= require cocoon
#= require chosen.jquery
$ ->
  $("a.add_fields").
    data("association-insertion-method", 'append')
    .data("association-insertion-traversal", 'closest')

  $('.profile-genre-form').on 'cocoon:after-insert', (e, insertedItem) ->
    $('.jquery-chosen').chosen({width: "100%"})
    return

  $('.jquery-chosen').chosen({width: "100%"})
  return
$(document).on 'change', '.genre-id', (e) ->
  thisObj = $(this)
  url = '/genre_sub_genre/' + $(this).val()
  $.get url
  .done (data) ->
    subGenreObj = thisObj.closest('div.row').find('select.sub-genre-id')
    subGenreObj.html(data)
    subGenreObj.trigger("chosen:updated");