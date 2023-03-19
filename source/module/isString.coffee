# @ts-check

import $getType from './getType'

###* @type import('../type/module').IsString ###
export default (ipt) ->
  $type = $getType ipt
  unless $type == 'string' then return false
  return true