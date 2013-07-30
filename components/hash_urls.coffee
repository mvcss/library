class @HashURLs
  constructor: (@options) ->
    @setup(@options)

  setup: (@options) ->
    @getOrSetHash()
    @showContent()

    @options.list.on 'click', (e) =>
      e.preventDefault()
      elem = $(e.currentTarget)
      hash = elem.attr('href')
      window.location.hash = hash

      @options.list.removeClass('is-active')
      @options.content.removeClass('is-active')

      elem.addClass('is-active')
      $(hash).addClass('is-active')

  getOrSetHash: ->
    if window.location.hash
      @hash = @sanitizeHash(window.location.hash)
    else
      @hash = @options.list.first().attr('href')

  sanitizeHash: (str) ->
    str.replace(/(<([^>]+)>)/ig,"")

  showContent: ->
    @options.content.not(@hash).removeClass('is-active')
    $("[data-hash=#{@hash}], #{@hash}").addClass('is-active')

