do ->

  mapA = {
    a: 1
  }
  mapB = {
    b: 2
  }
  mapC = {
    c: 3
  }

  $.mixin mapA, mapB, mapC

  result = $.join $.keys mapA
  unless result == 'a,b,c'
    throw 1

  result = $.join $.values mapA
  unless result == '1,2,3'
    throw 2