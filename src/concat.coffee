# @ts-check

import $clone from './clone'
import $isArray from './isArray'

###* @type import('./concat').Concat ###
export default (list, values...) ->

  $listNew = $clone list

  for $value in values

    if $isArray $value
      for $item in $value
        $listNew.Push $item
    else $listNew.Push $value

  return $listNew