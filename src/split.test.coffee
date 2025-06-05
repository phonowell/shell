# @ts-check

import $length from '../src/length'
import $split from '../src/split'

do ->

  result = $split 'a,b,c', ','
  unless ($length result) == 3
    throw result
  unless result[0] == 'a' and result[1] == 'b' and result[2] == 'c'
    throw result

do ->

  result = $split 'test', ','
  unless ($length result) == 1
    throw result
  unless result[0] == 'test'
    throw result