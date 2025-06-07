# @ts-check

###* @type import('./chunk').Chunk ###
export default (list, size = 1) ->

  ###* @type (typeof list)[] ###
  $listNew = []
  $len = list.Length()

  $i = 0
  while $i < $len / size

    ###* @type typeof list ###
    $listTemp = []
    $j = 0
    while $j < size

      $index = $i * size + $j
      unless $index < $len then break

      $listTemp.Push list[$index]
      $j++

    $listNew.Push $listTemp
    $i++

  return $listNew