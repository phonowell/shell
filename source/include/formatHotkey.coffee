# formatHotkey(key: string): string
$.formatHotkey = (key) ->

  # format
  $listKey = []
  $key = $.toLowerCase key
  $key = $.replace $key, ' ', ''
  $key = $.replace $key, '-', ''
  for $it in $.split $key, '+'
    $.push $listKey, $it

  # unfold
  $isAlt = false
  $isCtrl = false
  $isShift = false
  $isWin = false
  $listResult = []
  for key in $listKey
    if key == 'alt'
      $isAlt = true
      continue
    if key == 'ctrl'
      $isCtrl = true
      continue
    if key == 'shift'
      $isShift = true
      continue
    if key == 'win'
      $isWin = true
      continue
    $.push $listResult, key

  $prefix = ''
  if $isAlt then $prefix = "#{$prefix}!"
  if $isCtrl then $prefix = "#{$prefix}^"
  if $isShift then $prefix = "#{$prefix}+"
  if $isWin then $prefix = "#{$prefix}#"

  $result = ''
  for $it in $listResult
    $result = "#{$result} & #{$it}"
  return $.replace "#{$prefix}#{$.trim $result, ' &'}", ':', ' '