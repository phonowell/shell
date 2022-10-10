# @ts-check

import $push from './push'

###* filter<T>(list: T[], callback: (item?: T, i?: number) => boolean): T[]
# @param {unknown[]} list
# @param {(item?: unknown, i?: number) => boolean} callback
# @returns {unknown[]}
###
export default (list, callback) ->

  $listResult = []

  for $item, $i in list
    unless callback $item, $i then continue
    $push $listResult, $item

  return $listResult