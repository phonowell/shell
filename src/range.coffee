# @ts-check

###* @type import('./range').Range ###
export default (args...) ->

  switch args.Length()
    when 1 then [$start, $end, $step] = [0, args[0], 1]
    when 2 then [$start, $end, $step] = [args[0], args[1], 1]
    when 3 then [$start, $end, $step] = args
    else throw new Error 'range: Invalid number of arguments'

  if $start == $end then return []

  if $start > $end then return []

  ###* @type number[] ###
  $listResult = []
  $current = $start

  while $current < $end
    $listResult.Push $current
    $current += $step

  return $listResult