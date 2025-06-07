# @ts-check

###* @type import('./nth').Nth ###
export default (list, n = 0) ->
  if n >= 0 then return list[n]
  else return list[list.Length() + n]