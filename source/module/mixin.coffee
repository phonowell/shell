# @ts-check

import $length from './length'
import $tail from './tail'

###* @type import('../type/module').Mixin ###
export default (args...) ->

  unless $length args
    throw '$.mixin: invalid arguments'

  $result = args[0]

  for $item in $tail args
    for $key, $value of $item
      $result[$key] = $value

  return $result