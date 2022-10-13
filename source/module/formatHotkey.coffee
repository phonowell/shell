# @ts-check

import $length from './length'
import $push from './push'
import $replace from './replace'
import $split from './split'
import $toLowerCase from './toLowerCase'
import $trim from './trim'

###* @type {import('@/type/module').FormatHotkey} *###
$formatKeyFormatHotkey = (key) ->

  $listKey = []

  $key = $toLowerCase key
  $key = $replace $key, ' ', ''
  $key = $replace $key, '-', ''

  $listSplit = $split $key, '+'
  if $length $listSplit then $push $listKey, $listSplit...

  return $listKey

###* @type {import('@/type/module').FormatHotkey3} *###
$pickPrefixFormatHotkey = (listKey) ->

  if ($length listKey) == 1 then return ['', listKey]

  $prefix = ''
  $listNew = []

  for $key in listKey

    if $key == 'alt'
      $prefix = "#{$prefix}!"
      continue

    if $key == 'ctrl'
      $prefix = "#{$prefix}^"
      continue

    if $key == 'shift'
      $prefix = "#{$prefix}+"
      continue

    if $key == 'win'
      $prefix = "#{$prefix}#"
      continue

    $push $listNew, $key

  return [$prefix, $listNew]

# formatHotkey(key: string): string
###* @type {import('@/type/module').FormatHotkey} *###
export default (key) ->

  $listKey = $formatKeyFormatHotkey key

  [$prefix, $listKey] = $pickPrefixFormatHotkey $listKey

  $result = ''
  for $it in $listKey
    $result = "#{$result} & #{$it}"

  return $replace "#{$prefix}#{$trim $result, ' &'}", ':', ' '