# @ts-check

###* @type import('./toLowerCase').ToLowerCase ###
export default (ipt) ->
  $result = ipt
  Native 'StringLower, $result, ipt'
  return $result