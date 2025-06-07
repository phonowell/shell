# @ts-check

import $getType from './getType'
import $sort from './sort'

###* @type import('./keys').Keys ###
export default (ipt) ->

  $type = $getType ipt
  unless $type == 'object'
    throw new Error "keys: invalid type '#{$type}'"

  ###* @type string[] ###
  $listResult = []

  for $key, $value of ipt
    $listResult.Push $key

  return $sort $listResult