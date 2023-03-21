# @ts-check

import $getType from './getType'
import $isArray from './isArray'

###* @type import('../type/module').Pop ###
export default (list) ->

  unless $isArray list
    throw "$.pop: invalid type '#{$getType list}'"

  return list.Pop()