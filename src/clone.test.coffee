# @ts-check

import $clone from '../src/clone'
import $join from '../src/join'

do ->

  list = [1, 2, 3]
  listA = $clone list
  unless ($join listA, '') == '123'
    throw ($join listA, '')

do ->

  map = {
    a: 1
    b: 2
    c: 3
  }
  mapA = $clone map
  unless ($join [mapA.a, mapA.b, mapA.c], '') == '123'
    throw mapA