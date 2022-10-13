# @ts-check

import $length from './length'

# nth<T>(list: T[], n = 0): T
###* @type {import('../type/module').Nth} ###
export default (list, n = 0) ->
  if n >= 0 then return list[n]
  else return list[($length list) + n]