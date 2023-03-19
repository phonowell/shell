# @ts-check

import $filter from './filter'

###* @type import('../type/module').Compact ###
export default (list) -> $filter list, (it) -> !!it