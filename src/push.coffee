# @ts-check

import $getType from './getType'
import $isArray from './isArray'

###* @type import('./push').Push ###
export default (list, value...) ->

  unless $isArray list
    throw new Error "$.push: invalid type '#{$getType list}'"

  for $v in value
    list.Push $v

  return list.Length()