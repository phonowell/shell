import '../source/index.ahk'
$ = $

$.on '1', ->
  $.defer ->
    $.alert 'hello'