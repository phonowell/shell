# @ts-check

import $formatHotkey from './formatHotkey'

###* @type import('./isPressing').IsPressing ###
export default (key) ->
  key = $formatHotkey key
  return GetKeyState key, 'P'