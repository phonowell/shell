# @ts-check

###* @type import('./toUpperCase').ToUpperCase ###
export default (ipt) ->
  $result = ipt
  Native 'StringUpper, $result, ipt'
  return $result