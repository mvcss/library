window.App = {

  #-------------------------------------
  #  Setup
  #-------------------------------------

  setup: ->
    # ...

  #-------------------------------------
  # Tabs
  #-------------------------------------
  #
  # @tab - The tab
  # @content - The tab content
  #
  #-------------------------------------

  tabs: (options) ->
    options.tab.on 'click', (e) ->
      e.preventDefault()
      el = $(@)
      show = el.attr('href')

      options.tab.removeClass 'is-active'
      el.addClass 'is-active'

      options.content.removeClass 'is-visible'
      $(show).addClass 'is-visible'
}

#-------------------------------------
#  Document Ready
#-------------------------------------

jQuery ($) ->

  App.setup()

  App.tabs({
    tab: $('.tab a'),
    content: $('.tabs-content')
  })
