# @ts-check

import $getType from './getType'
import $keys from './keys'
import $push from './push'

# values<T>(ipt: {[x: string]: T}): T[]
###* @type import('../type/module').Values ###
export default (ipt) ->

  $type = $getType ipt
  unless $type == 'object'
    throw "$.values: invalid type '#{$type}'"

  $listResult = []

  for $key in $keys ipt
    $push $listResult, ipt[$key]

  return $listResult