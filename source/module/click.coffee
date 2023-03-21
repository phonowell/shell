# @ts-check

import $replace from './replace'

###* @type import('../type/module').Click ###
export default (key = 'left') ->

  key = $replace key, '-', ''
  key = $replace key, ':', ' '

  Native 'Click, % key'
  return