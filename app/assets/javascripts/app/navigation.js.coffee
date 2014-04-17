pageScroll = (link, target) ->
  $(link).click ->
    $('html, body').animate({scrollTop: $(target).offset().top - 60 }, 1000)


$(window).bind 'page:change', ->
  $('.page-jump').each ->
    link = $(this)
    target = $('.jump-anchor')

    pageScroll(link, target)
