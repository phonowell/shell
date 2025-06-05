# @ts-check

import $length from './length'

###* @type import('./last').Last ###
export default (list) -> list[($length list) - 1]