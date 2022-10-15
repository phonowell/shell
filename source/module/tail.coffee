# @ts-check

import $drop from './drop'

# tail<T>(list: T[]): T[]
###* @type {import('../type/module').Tail} ###
export default (list) -> $drop list, 1