# @ts-check

# delete<T extends Object>(object: T, ...keys: (keyof T)[]) => void
###* @type {import('../type/module').Delete} ###
export default (target, keys...) ->
  for key in keys
    target.Delete key
  return