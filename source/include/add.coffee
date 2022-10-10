# @ts-check

###* add(...args: number[]): number
# @param {number[]} args
# @returns {number}
###
export default (args...) ->
  $result = 0
  for $arg in args
    $result = $result + $arg
  return $result