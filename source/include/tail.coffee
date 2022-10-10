# @ts-check

import $drop from './drop'

###* tail<T>(list: T[]): T[]
# @param {unknown[]} list
# @returns {unknown[]}
###
export default (list) -> return $drop list, 1