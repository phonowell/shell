# @ts-check

import $getType from './getType'

###* @type import('../type/module').IsFunction ###
export default (ipt) ->
  $type = $getType ipt
  unless $type == 'function' then return false
  return true