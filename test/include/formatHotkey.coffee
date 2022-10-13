# @ts-check

import $formatHotkey from '../../source/module/formatHotkey'

do ->

  key = 'alt + f4'
  result = $formatHotkey key
  unless result == '!f4'
    throw result

do ->

  key = 'ctrl + f5'
  result = $formatHotkey key
  unless result == '^f5'
    throw result

do ->

  key = 'shift + a'
  result = $formatHotkey key
  unless result == '+a'
    throw result

do ->

  key = 'win + r'
  result = $formatHotkey key
  unless result == '#r'
    throw result

do ->

  key = 'alt + ctrl + shift + win + esc'
  result = $formatHotkey key
  unless result == '!^+#esc'
    throw result