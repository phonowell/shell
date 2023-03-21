# @ts-check

import $length from './length'

###* @type import('../type/module').Nth ###
export default (list, n = 0) ->
  if n >= 0 then return list[n]
  else return list[($length list) + n]