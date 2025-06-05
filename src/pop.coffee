# @ts-check

import $getType from './getType'
import $isArray from './isArray'

###* @type import('./pop').Pop ###
export default (list) ->

  unless $isArray list
    throw new Error "$.pop: invalid type '#{$getType list}'"

  return list.Pop()