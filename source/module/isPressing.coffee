# @ts-check

import $formatHotkey from './formatHotkey'

###* @type import('../type/module').IsPressing ###
export default (key) ->
  key = $formatHotkey key
  return GetKeyState key, 'P'