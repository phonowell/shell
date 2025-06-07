# @ts-check

import $getType from './getType'
import $includes from './includes'

###* @type import('./eq').Eq ###
export default (a, b) ->

  $typeA = $getType a
  $typeB = $getType b

  unless $typeA == $typeB then return false

  if $includes ['function', 'number', 'string'], $typeA
    return a == b

  if $typeA == 'array'
    unless a.Length() == b.Length() then return false
    for $it, $i in a
      unless $it == b[$i] then return false
    return true

  # object
  if $typeA == 'object'
    unless a.Count() == b.Count() then return false
    for $k, $v of a
      unless $v == b[$k] then return false
    return true

  return false