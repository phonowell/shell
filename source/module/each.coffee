# @ts-check

# each<T>(list: T[], callback: (item?: T, i?: number) => unknown): void
###* @type {import('@/type/module').Each} ###
export default (list, callback) ->
  for $item, $i in list
    callback $item, $i
  return