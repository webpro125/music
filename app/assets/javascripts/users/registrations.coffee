$ ->
  $('select#user_region_id').on 'change', (e) ->
    url = '/region_province/' + $(this).val()
    $.get url
    .done (data) ->
      $('select#user_province_id').html(data)
    return

# ---
# generated by js2coffee 2.2.0