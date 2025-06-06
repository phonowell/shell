# @ts-check

import 'include/head.ahk'
import '../source/index.ahk'
$ = $

main = ->

  $.beep()

  $.press 'w:down'
  $.sleep 4e3
  $.press 'w:up'

  $.press 'a:down'
  $.sleep 1e3
  $.press 'a:up'

  $.press 'w:down'
  $.sleep 1e3
  $.press 'w:up'

  $.press 't'
  $.sleep 10e3

  $.press 'g'
  $.sleep 200
  $.press 's'
  $.sleep 200
  $.press 'e'
  $.sleep 100
  $.press 'e'

  $.sleep 10e3
  main()

$.on 'f1', main
$.on 'f4', ->
  $.beep()
  $.exit()
$.on 'f5', ->
  $.beep()
  $.reload()