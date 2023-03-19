# @ts-check

import $getType from './getType'
import $isArray from './isArray'

###* @type import('../type/module').Shift ###
export default (list) ->

  unless $isArray list
    throw "$.shift: invalid type '#{$getType list}'"

  $first = list[0]
  list.RemoveAt 1

  return $first