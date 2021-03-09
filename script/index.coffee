import '../source/index.ahk'
$ = $

$.on '1', ->

  listA = [1, 2, 3]
  listB = [4, 5, 6]

  listC = $.concat listA, listB
  $.push listC, 7, 8, 9

  $.alert $.nth ($.reverse $.clone listC), 2