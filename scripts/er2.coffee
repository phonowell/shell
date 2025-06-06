# @ts-check

import 'include/head.ahk'
import '../source/index.ahk'
$ = $

$.on 'w', ->
  $.press 'w:down'
  $.press 'space:down'

$.on 'w:up', ->
  $.press 'x'
  $.press 'w:up'
  $.press 'space:up'
  $.press 's:down'
  $.sleep 300
  $.press 's:up'

$.on 'f4', ->
  $.beep()
  $.exit()
$.on 'f5', ->
  $.beep()
  $.reload()