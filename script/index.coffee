import '../source/index.ahk'
$ = $

$.on 'alt + 1', ->
  a = [3, 2, 10, 1, 4, 2]
  $.alert $.uniq a