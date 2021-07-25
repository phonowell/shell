import '../source/index.ahk'
$ = $

listA = [1, 2, 3]
listB = $.map listA, (item) -> return item - 1

$.alert listB