# @ts-check

# getPosition(): Point
###* @type {import('@/type/module').GetPosition} ###
export default ->
  [$x, $y] = [0, 0]
  Native 'MouseGetPos, $x, $y'
  return [$x, $y]