# @ts-check

import $join from '../src/join'
import $keys from '../src/keys'

do ->

  map = {
    a: 1
    b: 2
    c: 3
  }
  result = $join $keys map
  unless result == 'a,b,c' then throw 0

  map2 = {
    0: ''
    1: 'a'
    2: 'b'
    3: 'c'
  }
  result = $join $keys map2
  unless result == '0,1,2,3' then throw result