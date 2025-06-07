# @ts-check

import $replace from './replace'
import $split from './split'
import $toLowerCase from './toLowerCase'
import $trim from './trim'

$formatKeyFormatHotkey =
###* @type import('./formatHotkey').FormatHotkey1 ###
(key) ->

  ###* @type string[] ###
  $listKey = []

  $key = $toLowerCase key
  $key = $replace $key, ' ', ''
  $key = $replace $key, '-', ''

  $listSplit = $split $key, '+'
  if $listSplit.Length() then $listKey.Push $listSplit...

  return $listKey

$pickPrefixFormatHotkey =
###* @type import('./formatHotkey').FormatHotkey2 ###
(listKey) ->

  if listKey.Length() == 1 then return ['', listKey]

  $prefix = ''
  ###* @type string[] ###
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

    $listNew.Push $key

  return [$prefix, $listNew]

###* @type import('./formatHotkey').FormatHotkey ###
export default (key) ->

  $listKey = $formatKeyFormatHotkey key

  [$prefix, $listKey] = $pickPrefixFormatHotkey $listKey

  $result = ''
  for $it in $listKey
    $result = "#{$result} & #{$it}"

  return $replace "#{$prefix}#{$trim $result, ' &'}", ':', ' '