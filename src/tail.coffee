# @ts-check

import $drop from './drop'

###* @type import('./tail').Tail ###
export default (list) -> $drop list, 1