# @ts-check

import $getType from './getType'
import $push from './push'
import $sort from './sort'

###* @type import('../type/module').Keys ###
export default (ipt) ->

  $type = $getType ipt
  unless $type == 'object'
    throw "$.keys: invalid type '#{$type}'"

  $listResult = []

  for $key, $value of ipt
    $push $listResult, $key

  return $sort $listResult