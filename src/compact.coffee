# @ts-check

import $filter from './filter'

###* @type import('./compact').Compact ###
export default (list) -> $filter list, (it) -> !!it