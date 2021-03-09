# press(key...: string): void
$.press = (listInput...) ->

  # validate
  unless $.length listInput
    throw new Error '$.press: invalid key'

  # format
  $listKey = []
  for $input in listInput
    $ipt = $.toLowerCase $input
    $ipt = $.replace $ipt, ' ', ''
    $ipt = $.replace $ipt, '-', ''
    $list = $.split $ipt, '+'
    for $it in $list
      $.push $listKey, $it

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