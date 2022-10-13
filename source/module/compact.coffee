# @ts-check

import $filter from './filter'

# compact<T>(list: T[]): T[]
###* @type {import('../type/module').Compact} ###
export default (list) -> $filter list, (it) -> !!it