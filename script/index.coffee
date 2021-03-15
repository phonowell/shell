import '../source/index.ahk'
$ = $

$.on '1', ->
  $.each [2, 3, 4], (n) ->
    $.alert n