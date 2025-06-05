# @ts-check

import $length from './length'
import $tail from './tail'

###* @type import('./mixin').Mixin ###
export default (args...) ->

  unless $length args
    throw new Error '$.mixin: invalid arguments'

  $result = args[0]

  for $item in $tail args
    for $key, $value of $item
      $result[$key] = $value

  return $result