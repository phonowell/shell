# @ts-check

import $push from './push'

###* map<T, R>(list: T[], callback: (item: T, i?: number) => R): R[]
# @param {unknown[]} list
# @param {(item: unknown, i?: number) => unknown} callback
# @returns {unknown[]}
###
export default (list, callback) ->

  $listResult = []

  for $item, $i in list
    $push $listResult, callback $item, $i

  return $listResult