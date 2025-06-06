# @ts-check

import $getType from './getType'
import $isArray from './isArray'
import $isObject from './isObject'
import $slice from './slice'

###* @type {import('./clone').Clone} ###
export default (ipt) ->

  if $isArray ipt then return $slice ipt

  if $isObject ipt
    ###* @type typeof ipt ###
    $mapNew = {}
    for $key, $value of ipt
      $mapNew[$key] = $value
    return $mapNew

  throw new Error "$.clone: invalid type '#{$getType ipt}'"