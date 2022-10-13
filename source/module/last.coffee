# @ts-check

import $length from './length'

# last<T>(list: T[]): T
###* @type {import('@/type/module').Last} ###
export default (list) -> list[($length list) - 1]