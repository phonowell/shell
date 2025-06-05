# @ts-check

import $delete from '../src/delete'

do ->

  a = {
    a: 1
    b: 2
  }
  $delete a, 'a'
  unless a.a == undefined
    throw 0

do ->
  a = {
    a: 1
    b: 2
  }
  $delete a, 'a', 'b'
  unless a.a == undefined and a.b == undefined
    throw 0