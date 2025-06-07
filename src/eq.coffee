# @ts-check

import $getType from './getType'
import $includes from './includes'
import $isArray from './isArray'
import $isObject from './isObject'

$eq =
###* @type import('./eq').Eq ###
(value, other) ->

  $typeA = $getType value
  $typeB = $getType other

  unless $typeA == $typeB then return false

  if $includes ['function', 'number', 'string'], $typeA
    return value == other

  $lengthA = value.Length()
  $lengthB = other.Length()

  unless $lengthA == $lengthB then return false

  if $isArray value
    for $it, $i in value
      unless $eq $it, other[$i] then return false
    return true

  # object
  if $isObject value
    for $k, $v of value
      unless $eq $v, other[$k] then return false
    return true

  throw new Error "eq: invalid type '#{$typeA}'"

export default $eq