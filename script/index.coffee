import '../source/index.ahk'

$.on 'alt + n', ->
  $.alert $.reverse [1, 2, 3]