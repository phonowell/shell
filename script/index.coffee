import '../source/index.ahk'
$ = $

main = ->

  $.on 'f2', -> $.alert 'f2'
  $.on 'f2.text', -> $.alert 'f2.text'
  $.trigger 'f2.text'

  $.setTimeout ->
    $.beep()
    $.off 'f2.text'
    $.trigger 'f2'
  , 1e3

$.on 'f1', main
$.on 'f4', ->
  $.beep()
  $.exit()
$.on 'f5', ->
  $.beep()
  $.reload()