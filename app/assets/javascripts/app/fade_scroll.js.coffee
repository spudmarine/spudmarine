fadeObject = (fadeStart, fadeUntil) ->

  toFade = $('.js-fade-object')

  $(window).bind 'scroll', ->
    offset = $(document).scrollTop()
    objOpacity = 0

    if offset <= fadeStart
      objOpacity = 0
    else objOpacity = (1 - offset / fadeUntil) if offset <= fadeUntil

    toFade.css 'opacity', objOpacity

addEventListeners = ->
  $('.js-fade-object').each ->
    fadeStart = $(this).data('fade-start')
    fadeUntil = $(this).offset().top + $(this).height() - 77

    fadeObject(fadeStart, fadeUntil)

$(window).bind 'page:change', ->
  addEventListeners()
