import '../source/index.ahk'
$ = $

$.on '1', ->
  a = $.range 4
  $.reverse a
  $.alert a