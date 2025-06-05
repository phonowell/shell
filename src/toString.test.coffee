# @ts-check

import $toString from '../src/toString'

do ->

  unless ($toString 'a') == 'a'
    throw 0

  unless ($toString 1) == '1'
    throw 1

  unless ($toString [1, 2, 3]) == '[1, 2, 3]'
    throw $toString [1, 2, 3]

  unless ($toString [1, 2, [3, 4, 5]]) == '[1, 2, [3, 4, 5]]'
    throw $toString [1, 2, [3, 4, 5]]

  unless ($toString {a: 1}) == '{a: 1}'
    throw $toString {a: 1}

  unless ($toString {a: 1, b: {c: 3}}) == '{a: 1, b: {c: 3}}'
    throw $toString {a: 1, b: {c: 3}}

