# @ts-check

import $isObject from './isObject'
import $keys from './keys'

###* @type import('./values').Values ###
export default (ipt) ->

  unless $isObject ipt then return []

  ###* @type (typeof ipt)[keyof typeof ipt][] ###
  $listResult = []

  for $key in $keys ipt
    $listResult.Push ipt[$key]

  return $listResult