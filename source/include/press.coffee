# press(key...: string): void
$.press = (listInput...) ->

  unless $validateInputPress listInput then return

  $listKey = $formatInputPress listInput

  # unfold
  $listResult = []
  $len = $.length $listKey
  for $key, $i in $listKey
    # last
    if $i == $len - 1
      $listResult[$i] = $.split $key, ':'
      continue
    # other
    if $.includes $key, ':'
      $listResult[$i] = $.split $key, ':'
      $listResult[($len - 1) * 2 - $i] = $.split $key, ':'
    else
      $listResult[$i] = [$key, 'down']
      $listResult[($len - 1) * 2 - $i] = [$key, 'up']

  # alias & join
  for $it, $i in $listResult
    if $it[0] == 'win'
      $it[0] = 'lwin'
    $listResult[$i] = $.trim "#{$it[0]} #{$it[1]}"

  # execute
  $result = ''
  for $it in $listResult
    $result = "#{$result}{#{$it}}"
  `Send, % $result`

$formatInputPress = (listInput) ->

  $listKey = []

  for $input in listInput

    $ipt = $.toLowerCase $input
    $ipt = $.replace $ipt, ' ', ''
    $ipt = $.replace $ipt, '-', ''

    $.push $listKey, ($.split $ipt, '+')...

  return $listKey

$validateInputPress = (listInput) ->

  unless $.length listInput
    return false

  $key = listInput[0]
  if $.includes $key, '-button'
    $key = $.replace $key, 'l-button', 'left'
    $key = $.replace $key, 'm-button', 'middle'
    $key = $.replace $key, 'r-button', 'right'
    $.click $key
    return false

  return true