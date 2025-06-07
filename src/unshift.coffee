# @ts-check

import $getType from './getType'
import $isArray from './isArray'

###* @type import('./unshift').Unshift ###
export default (list, args...) ->

  unless $isArray list
    throw new Error "unshift: invalid type '#{$getType list}'"

  list.InsertAt 1, args...

  return list.Length()