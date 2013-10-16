pageScroll = (link, target) ->
  $(link).click ->
    $('html, body').animate({scrollTop: $(target).offset().top - 50 }, 1000)


$ ->
  $('.page-jump').each ->
    link = $(this)
    target = $('.jump-anchor')

    pageScroll(link, target)