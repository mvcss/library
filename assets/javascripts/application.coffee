jQuery ($) ->
  if window.location.hash
    hash = window.location.hash
  else
    hash = $('.section-list a').first().attr('href')
  $('.content-section').not(hash).hide()
  $("[data-hash=#{hash}]").addClass('active')

  $('.section-list a').click (e) ->
    e.preventDefault()
    hash = $(@).attr('href')
    window.location.hash = hash

    $('.section-list a').removeClass('active')
    $('.content-section').hide()

    $(@).addClass('active')
    $(hash).show()
