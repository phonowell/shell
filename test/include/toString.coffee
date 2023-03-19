# @ts-check

import $toString from '../../source/module/toString'

do ->

  unless ($toString 'a') == 'a'
    throw 0

  unless ($toString 1) == '1'
    throw 1

  unless ($toString [1, 2, 3]) == '1,2,3'
    throw $toString [1, 2, 3]

  unless ($toString {a: 1}) == ''
    throw $toString {a: 1}

