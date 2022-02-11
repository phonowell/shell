# formatHotkey(key: string): string
$.formatHotkey = (key) ->

  $listKey = $formatKeyFormatHotkey key
  [$prefix, $listKey] = $pickPrefixFormatHotkey $listKey

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

$pickPrefixFormatHotkey = (listKey) ->

  if ($.length listKey) == 1 then return ['', listKey]

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

    $.push $listNew, $key

  return [$prefix, $listNew]