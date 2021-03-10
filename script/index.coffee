import '../source/index.ahk'
$ = $

$.on '1', ->
  a = [3, 2, 10, 1, 4, 2]
  b = ['a', 'c', 'd', 'b', 2]
  $.alert $.uniq a