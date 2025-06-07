# @ts-check

import $getType from './getType'

###* @type import('./isFunction').IsFunction ###
export default (ipt) -> ($getType ipt) == 'function'