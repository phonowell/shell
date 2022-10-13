# @ts-check

import $filter from './filter'

# drop<T>(list: T[], n = 1): T[]
###* @type {import('@/type/module').Drop} ###
export default (list, n = 1) -> $filter list, (_it, i) -> i >= n