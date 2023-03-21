# @ts-check

import $length from './length'

###* @type import('../type/module').Last ###
export default (list) -> list[($length list) - 1]