# @ts-check

import $formatHotkey from './formatHotkey'

###* @type import('../type/module').GetState ###
export default (key) ->
  key = $formatHotkey key
  return GetKeyState key, 'P'