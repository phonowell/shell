# @ts-check

import $getType from './getType'

# isArray(ipt: unknown): ipt is unknown[]
###* @type {import('@/type/module').IsArray} ###
export default (ipt) ->
  $type = $getType ipt
  unless $type == 'array' then return false
  return true