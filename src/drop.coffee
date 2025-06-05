# @ts-check

import $filter from './filter'

###* @type import('./drop').Drop ###
export default (list, n = 1) -> $filter list, (_it, i) -> i >= n