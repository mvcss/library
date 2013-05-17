class HashURLs
  constructor: (options) ->
    @setup(options)

  setup: (options) ->
    @list = options.list
    @content = options.content
    @getOrSetHash()
    @showContent()

    that = this
    @list.on 'click', (e) ->
      e.preventDefault()
      elem = $(@)
      hash = elem.attr('href')
      window.location.hash = hash

      that.list.removeClass('is-active')
      that.content.removeClass('is-active')

      elem.addClass('is-active')
      $(hash).addClass('is-active')

  getOrSetHash: ->
    if window.location.hash
      @hash = window.location.hash
    else
      @hash = @list.first().attr('href')

  showContent: ->
    @content.not(@hash).removeClass('is-active')
    $("[data-hash=#{@hash}], #{@hash}").addClass('is-active')

window.HashURLs = HashURLs
