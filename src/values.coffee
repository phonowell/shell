# @ts-check

import $getType from './getType'
import $keys from './keys'

###* @type import('./values').Values ###
export default (ipt) ->

  $type = $getType ipt
  unless $type == 'object'
    throw new Error "values: invalid type '#{$type}'"

  ###* @type (typeof ipt)[keyof typeof ipt][] ###
  $listResult = []

  for $key in $keys ipt
    $listResult.Push ipt[$key]

  return $listResult