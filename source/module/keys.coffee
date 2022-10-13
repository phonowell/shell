# @ts-check

import $getType from './getType'
import $push from './push'
import $sort from './sort'

# keys(ipt: Record<string, unknown>): string[]
###* @type {import('@/type/module').Keys} ###
export default (ipt) ->

  $type = $getType ipt
  unless $type == 'object'
    throw new Error "$.keys: invalid type '#{$type}'"

  $listResult = []

  for $key, $value of ipt
    $push $listResult, $key

  return $sort $listResult