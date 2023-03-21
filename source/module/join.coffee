# @ts-check

import $toString from './toString'

###* @type import('../type/module').Join ###
export default (list, seperator = ',') ->

  $result = ''
  for $item, $i in list

    unless $i
      $result = $toString $item
      continue

    $result = "#{$result}#{seperator}#{$item}"

  return $result