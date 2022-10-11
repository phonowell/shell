# @ts-check

# toLowerCase(ipt: string): string
###* @type {import('@/type/module').ToLowerCase} ###
export default (ipt) ->
  $result = ipt
  Native 'StringLower, $result, ipt'
  return $result