jQuery(document).on 'turbolinks:load', ->
  opening_hours = $('#opening_hours')

  recount = -> count.text opening_hours.find('.nested-fields').size()

  opening_hours.on 'cocoon:before-insert', (e, el_to_add) ->
    el_to_add.fadeIn(1000)

  opening_hours.on 'cocoon:after-insert', (e, added_el) ->
    added_el.effect('highlight', {}, 500)

  opening_hours.on 'cocoon:before-remove', (e, el_to_remove) ->
    $(this).data('remove-timeout', 1000)
    el_to_remove.fadeOut(1000)