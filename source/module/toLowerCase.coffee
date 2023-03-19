# @ts-check

###* @type import('../type/module').ToLowerCase ###
export default (ipt) ->
  $result = ipt
  Native 'StringLower, $result, ipt'
  return $result