# @ts-check

###* @type import('../type/module').ToUpperCase ###
export default (ipt) ->
  $result = ipt
  Native 'StringUpper, $result, ipt'
  return $result