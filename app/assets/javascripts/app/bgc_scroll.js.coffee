colorObject = (colorStart, colorUntil) ->

  toColor = $('.nav--home')

  offset = $(document).scrollTop()
  objOpacity = 1

  if offset >= colorStart
    objOpacity = 1
  else objOpacity = (1 - offset / colorUntil) if offset <= colorUntil

    toColor.css 'background-color', ('rgba(0,0,0,' + objOpacity + ')')

  $(window).bind 'scroll', ->
    offset = $(document).scrollTop()
    objOpacity = 1

    if offset <= colorStart
      objOpacity = 0
    else objOpacity = (0 + offset / colorUntil) if offset <= colorUntil

    toColor.css 'background-color', ('rgba(0,0,0,' + objOpacity + ')')

addEventListeners = ->

  $('.nav--home').each ->

    colorStart = 0
    colorUntil = 0 + $('.hero').height()

    colorObject(colorStart, colorUntil)

$(document).ready ->
  addEventListeners()