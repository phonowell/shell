# @ts-check

import $isArray from './isArray'
import $isObject from './isObject'
import $trim from './trim'

$toString =
###* @type import('./toString').ToString ###
(ipt) ->

  if $isArray ipt
    $result = ''
    for $it in ipt
      $result = "#{$result}, #{$it}"
    return "[#{$trim $result, ' ,'}]"

  if $isObject ipt
    $result = ''
    for $key, $value of ipt
      $result = "#{$result}, #{$key}: #{$value}"
    return "{#{$trim $result, ' ,'}}"

  return ipt

export default $toString