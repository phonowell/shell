# @ts-check

import $clone from './clone'
import $isArray from './isArray'
import $push from './push'

# concat<T>(list: T[], ...value: (T | T[])[]): T[]
###* @type import('../type/module').Concat ###
export default (list, args...) ->

  $listNew = $clone list

  for $arg in args

    if $isArray $arg
      for $item in $arg
        $push $listNew, $item
    else $push $listNew, $arg

  return $listNew