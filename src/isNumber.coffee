# @ts-check

import $getType from './getType'

###* @type import('./isNumber').IsNumber ###
export default (ipt) ->
  $type = $getType ipt
  unless $type == 'number' then return false
  return true