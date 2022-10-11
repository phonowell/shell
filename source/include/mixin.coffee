# @ts-check

import $alert from './alert'
import $tail from './tail'
import $length from './length'

###* mixin(...args: object[]): object
# @param {object[]} args
# @returns {object}
###
export default (args...) ->

  unless $length args
    throw new Error '$.mixin: invalid arguments'

  $result = args[0]

  for $item in $tail args
    for $key, $value of $item
      $result[$key] = $value

  return $result