# @ts-check

import $length from './length'

# reverse<T>(list: T[]): T[]
###* @type import('../type/module').Reverse ###
export default (list) ->

  $len = $length list
  $listNew = []
  for $item, $i in list
    $listNew[$len - 1 - $i] = $item

  for $item, $i in $listNew
    list[$i] = $item

  return list