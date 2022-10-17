# @ts-check

import $getType from './getType'

# isString(ipt: unknown): boolean
###* @type import('../type/module').IsString ###
export default (ipt) ->
  $type = $getType ipt
  unless $type == 'string' then return false
  return true