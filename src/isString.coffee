# @ts-check

import $getType from './getType'

###* @type import('./isString').IsString ###
export default (ipt) ->
  $type = $getType ipt
  unless $type == 'string' then return false
  return true