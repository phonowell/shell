# @ts-check

# toUpperCase(ipt: string): string
###* @type import('../type/module').ToUpperCase ###
export default (ipt) ->
  $result = ipt
  Native 'StringUpper, $result, ipt'
  return $result