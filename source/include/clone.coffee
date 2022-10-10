# @ts-check

import getType from './getType'

###* clone<T = unknown[] | {[x: string]: unknown}>(ipt: T): T
# @param {unknown[] | {[x: string]: unknown}} ipt
# @returns {unknown[] | {[x: string]: unknown}}
###
export default (ipt) ->

  $type = getType ipt

  if $type == 'array' then return $.slice ipt

  if $type == 'object'
    $mapNew = {}
    for $key, $value of ipt
      $mapNew[$key] = $value
    return $mapNew

  throw new Error "$.clone: invalid type '#{$type}'"