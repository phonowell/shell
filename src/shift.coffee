# @ts-check

import $getType from './getType'
import $isArray from './isArray'

###* @type import('./shift').Shift ###
export default (list) ->

  unless $isArray list
    throw new Error "$.shift: invalid type '#{$getType list}'"

  $first = list[0]
  list.RemoveAt 1

  return $first