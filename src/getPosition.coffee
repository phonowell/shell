# @ts-check

###* @type import('./getPosition').GetPosition ###
export default ->
  $x = 0
  $y = 0
  Native 'MouseGetPos, $x, $y'
  return [$x, $y]