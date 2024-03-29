# @ts-check

import $getType from './getType'
import $isArray from './isArray'
import $isObject from './isObject'
import $isString from './isString'

###* @type import('../type/module').Length ###
export default (ipt) ->

  if $isArray ipt then return ipt.Length()
  if $isObject ipt then return ipt.Count()
  if $isString ipt then return StrLen ipt

  throw "$.length: invalid type '#{$getType ipt}'"