# @ts-check

import $getType from './getType'
import $isArray from './isArray'
import $isNumber from './isNumber'
import $isString from './isString'
import $toString from './toString'

# includes(ipt: string | unknown[], needle: unknown): boolean
###* @type {import('@/type/module').Includes} ###
export default (ipt, needle) ->

  $type = $getType ipt

  if ($isString ipt) or $isNumber ipt
    unless $isString needle then return false
    return (InStr ($toString ipt), needle) > 0

  if $isArray ipt
    for $it in ipt
      if $it == needle then return true
    return false

  throw new Error "$.includes: invalid type '#{$type}'"