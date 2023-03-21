# @ts-check

import $createList from './createList'
import $length from './length'
import $push from './push'
import $replace from './replace'
import $split from './split'
import $toLowerCase from './toLowerCase'
import $trim from './trim'

$formatKeyFormatHotkey =
###* @type import('../type/module').FormatHotkey1 ###
(key) ->

  $listKey = $createList 'string'

  $key = $toLowerCase key
  $key = $replace $key, ' ', ''
  $key = $replace $key, '-', ''

  $listSplit = $split $key, '+'
  if $length $listSplit then $push $listKey, $listSplit...

  return $listKey

$pickPrefixFormatHotkey =
###* @type import('../type/module').FormatHotkey2 ###
(listKey) ->

  if ($length listKey) == 1 then return ['', listKey]

  $prefix = ''
  $listNew = $createList 'string'

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

###* @type import('../type/module').FormatHotkey3 ###
export default (key) ->

  $listKey = $formatKeyFormatHotkey key

  [$prefix, $listKey] = $pickPrefixFormatHotkey $listKey

  $result = ''
  for $it in $listKey
    $result = "#{$result} & #{$it}"

  return $replace "#{$prefix}#{$trim $result, ' &'}", ':', ' '