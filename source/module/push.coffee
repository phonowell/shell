# @ts-check

import $getType from './getType'
import $isArray from './isArray'

###* @type import('../type/module').Push ###
export default (list, value...) ->

  unless $isArray list
    throw "$.push: invalid type '#{$getType list}'"

  for $v in value
    list.Push $v

  return list.Length()