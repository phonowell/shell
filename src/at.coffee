# @ts-check

import $isArray from './isArray'
import $split from './split'
import $length from './length'

###* @type import('./at').At ###
export default (ipt, paths...) ->

  # Array access: support negative indices
  if $isArray ipt
    $index = paths[0]
    if $index < 0
      return ipt[$length(ipt) + $index]
    return ipt[$index]

  # Object access: support dot notation and multiple path segments
  $path = if $length(paths) == 1
    String paths[0]
  else
    $segments = []
    for $p in paths
      $parts = $split String($p), '.'
      for $part in $parts
        if $part then $segments.push $part
    $segments.join '.'

  # Traverse the object path
  $keys = $split $path, '.'
  $result = ipt
  for $key in $keys
    if $result == undefined then return undefined
    $result = $result[$key]
  return $result
