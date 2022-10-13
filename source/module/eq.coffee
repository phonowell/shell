# @ts-check

import $getType from './getType'
import $includes from './includes'
import $isArray from './isArray'
import $isObject from './isObject'
import $length from './length'

# eq<T>(value: T, other: T): boolean
###* @type {import('@/type/module').Eq} ###
$eq = (value, other) ->

  $typeA = $getType value
  $typeB = $getType other

  unless $typeA == $typeB then return false

  if $includes ['function', 'number', 'string'], $typeA
    return value == other

  $lengthA = $length value
  $lengthB = $length other

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

  throw new Error "$.eq: invalid type '#{$typeA}'"

export default $eq