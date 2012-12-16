$ = jQuery

$.hashURLs = (options) ->

  settings =
    list: $('.section-list a')
    content: $('.content-section')

  settings = $.extend settings, options

  if window.location.hash
    hash = window.location.hash
  else
    hash = $(@).first().attr('href')

  settings.content.not(hash).hide()
  $("[data-hash=#{hash}]").addClass('active')

  $.each settings.list, () ->
    el = $(@)
    el.on 'click', (e) ->
      e.preventDefault()
      hash = el.attr('href')
      window.location.hash = hash

      settings.list.removeClass('active')
      settings.content.hide()

      el.addClass('active')
      $(hash).show()
