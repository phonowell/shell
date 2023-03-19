# @ts-check

import $toTuple from './toTuple'

###* @type import('../type/module').GetPosition ###
export default ->
  [$x, $y] = [0, 0]
  Native 'MouseGetPos, $x, $y'
  return $toTuple [$x, $y]