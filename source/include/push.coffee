# @ts-check

import $getType from './getType'

###* push<T>(list: T[], ...value: T[]): number
# @param {unknown[]} list
# @param {unknown[]} value
# @returns {number}
###
$push = (list, value...) ->

  $type = $getType list
  unless $type == 'array'
    throw new Error "$.push: invalid type '#{$type}'"

  for $v in value
    list.Push $v

  return list.Length()

export default $push