# @ts-check

###* @type import('./sum').Sum ###
export default (list) ->

  $result = 0
  for $n in list
    $result = $result + $n

  return $result