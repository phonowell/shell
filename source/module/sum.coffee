# @ts-check

###* @type import('../type/module').Sum ###
export default (list) ->

  $result = 0
  for $n in list
    $result = $result + $n

  return $result