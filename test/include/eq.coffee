do ->

  a = 1
  b = 1

  unless $.eq a, b
    throw 0

  c = 2

  if $.eq a, c
    throw 1

do ->

  stringA = 'hello'
  stringB = 'hello'

  unless $.eq stringA, stringB
    throw 0

  stringC = 'aloha'

  if $.eq stringA, stringC
    throw 1

do ->

  listA = [1, 2]
  listB = [1, 2]

  unless $.eq listA, listB
    throw 0

  listC = [1, 2, 3]

  if $.eq listA, listC
    throw 1

do ->

  mapA = a: 1, b: 2
  mapB = a: 1, b: 2

  unless $.eq mapA, mapB
    throw 0

  mapC = a: 1, b: 2, c: 3
  if $.eq mapA, mapC
    throw 1