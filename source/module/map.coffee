# @ts-check

import $push from './push'

# map<T, R>(list: T[], callback: (item: T, i?: number) => R): R[]
###* @type {import('@/type/module').Map} ###
export default (list, callback) ->

  $listResult = []

  for $item, $i in list
    $push $listResult, callback $item, $i

  return $listResult