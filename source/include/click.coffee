# @ts-check

import $replace from './replace'

###* click(key?: string): void
# @param {string} [key]
# @returns {void}
###
export default (key = 'left') ->

  key = $replace key, '-', ''
  key = $replace key, ':', ' '

  Native 'Click, % key'