# @ts-check

import $getType from './getType'

###* @type import('../type/module').IsObject ###
export default (ipt) ->
  $type = $getType ipt
  unless $type == 'object' then return false
  return true