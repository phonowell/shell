# @ts-check

import $getType from './getType'

# push<T>(list: T[], ...value: T[]): number
###* @type {import('./push').Main} ###
export default (list, value...) ->

  $type = $getType list
  unless $type == 'array'
    throw new Error "$.push: invalid type '#{$type}'"

  for $v in value
    list.Push $v

  return list.Length()