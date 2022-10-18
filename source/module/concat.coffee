# @ts-check

import $clone from './clone'
import $isArray from './isArray'
import $push from './push'

# concat<T>(list: T[], ...values: (T | T[])[]): T[]
###* @type import('../type/module').Concat ###
export default ($list, $values...) ->

  $listNew = $clone $list

  for $value in $values

    if $isArray $value
      for $item in $value
        $push $listNew, $item
    else $push $listNew, $value

  return $listNew