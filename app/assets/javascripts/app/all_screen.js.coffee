resizeStrata = ->
  allScreen('.all-screen')

allScreen = (element) ->
  height = $(window).height()
  $(element).each ->
    el = $(this)
    el.height((height - 51) + "px")

resizeDiv = ->
  meetScreen('.meet-screen', '.line-height-match')

meetScreen = (element, line) ->
  height = $(window).height()
  $(element).each ->
    el = $(this)
    el.height((height - 51) / 5)
    lineHeight = $(el).height()
    $(line).each ->
      $(this).css('line-height', lineHeight + "px")

$ ->
  resizeStrata()
  resizeDiv()
  $(window).resize(resizeStrata)
  $(window).resize(resizeDiv)