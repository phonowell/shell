# @ts-check

import $getType from './getType'
import $isArray from './isArray'

###* @type import('./push').Push ###
export default (list, values...) ->

  unless $isArray list
    throw new Error "push: Expected first argument to be an array, got #{ $getType list }"

  unless values.Length()
    return list.Length()

  for $it in values
    list.Push $it

  return list.Length()