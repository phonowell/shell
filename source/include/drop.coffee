# @ts-check

import $filter from './filter'

###* drop<T>(list: T[], n = 1): T[]
# @param {unknown[]} list
# @param {number} n
# @returns {unknown[]}
###
export default (list, n = 1) -> return $filter list, (_it, i) -> return i >= n