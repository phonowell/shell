# formatHotkey(key: string): string
$.formatHotkey = (key) ->

  $listKey = $formatKeyFormatHotkey key
  $prefix = $setPrefixFormatHotkey $listKey

  $result = ''
  for $it in $listKey
    $result = "#{$result} & #{$it}"

  return $.replace "#{$prefix}#{$.trim $result, ' &'}", ':', ' '

$formatKeyFormatHotkey = (key) ->

  $listKey = []

  $key = $.toLowerCase key
  $key = $.replace $key, ' ', ''
  $key = $.replace $key, '-', ''

  $.push $listKey, ($.split $key, '+')...

  return $listKey

$setPrefixFormatHotkey = (listKey) ->

  $isAlt = false
  $isCtrl = false
  $isShift = false
  $isWin = false

  for $key in listKey

    if $key == 'alt'
      $isAlt = true
      continue

    if $key == 'ctrl'
      $isCtrl = true
      continue

    if $key == 'shift'
      $isShift = true
      continue

    if $key == 'win'
      $isWin = true
      continue

  $prefix = ''

  if $isAlt then $prefix = "#{$prefix}!"
  if $isCtrl then $prefix = "#{$prefix}^"
  if $isShift then $prefix = "#{$prefix}+"
  if $isWin then $prefix = "#{$prefix}#"

  return $prefix