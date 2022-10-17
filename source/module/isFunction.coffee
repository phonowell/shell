# @ts-check

import $getType from './getType'

# isFunction(ipt: unknown): ipt is Function
###* @type import('../type/module').IsFunction} *###
export default (ipt) ->
  $type = $getType ipt
  unless $type == 'function' then return false
  return true