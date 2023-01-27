# @ts-check

import $getType from '../../source/module/getType'

do ->

  type = $getType 42
  unless type == 'number' then throw type

  type = $getType $getType
  unless type == 'function' then throw type

  type = $getType [1, 2, 3]
  unless type == 'array' then throw type

  type = $getType {
    a: 1
    b: 2
    c: 3
  }
  unless type == 'object' then throw type

  type = $getType {0: ''}
  unless type == 'object' then throw type

  type = $getType {
    0: ''
    1: 'a'
    2: 'b'
    3: 'c'
  }
  unless type == 'object' then throw type