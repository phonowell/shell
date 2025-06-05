# @ts-check

import $getType from './getType'
import $isArray from './isArray'
import $isNumber from './isNumber'
import $isObject from './isObject'
import $isString from './isString'
import $trim from './trim'

$toString =
###* @type import('./toString').ToString ###
(ipt) ->

  if $isString ipt
    return ipt

  if $isNumber ipt
    return "#{ipt}"

  if $isArray ipt
    $result = ''
    for it in ipt
      $result = "#{$result}, #{$toString it}"
    return "[#{$trim $result, ' ,'}]"

  if $isObject ipt
    $result = ''
    for key, value of ipt
      $result = "#{$result}, #{key}: #{$toString value}"
    return "{#{$trim $result, ' ,'}}"

  throw new Error "$toString: invalid type '#{$getType ipt}'"

export default $toString