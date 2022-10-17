# @ts-check

import $getType from './getType'

# isNumber(ipt: unknown): ipt is number
###* @type import('../type/module').IsNumber ###
export default (ipt) ->
  $type = $getType ipt
  unless $type == 'number' then return false
  return true