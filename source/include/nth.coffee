# nth<T>(list: T[], n = 0): T
$.nth = (list, n = 0) ->
  if n >= 0 then return list[n]
  else return list[($.length list) + n]