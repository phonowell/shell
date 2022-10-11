# @ts-check

import $getType from './getType'
import $trim from './trim'

###* toString(ipt: unknown): string
# @param {unknown} ipt
# @returns {string}
###
toString = (ipt) ->

  $type = $getType ipt

  if $type == 'array'
    $result = ''
    for key in ipt
      $result = "#{$result}, #{toString key}"
    return "[#{$trim $result, ' ,'}]"

  else if $type == 'object'
    $result = ''
    for key, value of ipt
      $result = "#{$result}, #{key}: #{toString value}"
    return "{#{$trim $result, ' ,'}}"

  return ipt

export default toString