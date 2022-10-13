# @ts-check

import $getType from './getType'
import $isArray from './isArray'
import $isObject from './isObject'
import $isString from './isString'

# length(ipt: string | unknown[] | object): number
###* @type {import('../type/module').Length} *###
export default (ipt) ->

  if $isArray ipt then return ipt.Length()
  if $isObject ipt then return ipt.Count()
  if $isString ipt then return StrLen ipt

  throw new Error "$.length: invalid type '#{$getType ipt}'"