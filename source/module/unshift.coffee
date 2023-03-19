# @ts-check

import $getType from './getType'
import $isArray from './isArray'

###* @type import('../type/module').Unshift ###
export default (list, args...) ->

  unless $isArray list
    throw "$.unshift: invalid type '#{$getType list}'"

  list.InsertAt 1, args...

  return list.Length()