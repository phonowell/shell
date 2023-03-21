# @ts-check

import $filter from './filter'

###* @type import('../type/module').Drop ###
export default (list, n = 1) -> $filter list, (_it, i) -> i >= n