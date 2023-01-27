# @ts-check

import $isFunction from '../../source/module/isFunction'
import $isObject from '../../source/module/isObject'
import $open from '../../source/module/open'
import $window from '../../source/module/window'

do ->

  unless $isFunction $window
    throw '$window is not a function'

  w = $window 'notepad.exe'
  unless $isObject w
    throw '$window("notepad.exe") is not an object'

  for fn in [
    'blur'
    'close'
    'focus'
    'getBounds'
    'hide'
    'isActive'
    'isExists'
    'isFullScreen'
    'kill'
    'maximize'
    'minimize'
    'restore'
    'setPriority'
    'setStyle'
    'show'
    'wait'
  ]
    unless $isFunction w[fn]
      throw "$window('notepad.exe').#{fn} is not a function"

do ->

  exe = 'notepad.exe'
  w = $window exe

  w.close()

  if w.isExists()
    throw "#{exe} is already running"

  $open exe

  w.wait ->
    unless w.isExists()
      throw "#{exe} is not running"

    unless w.isActive()
      throw "#{exe} is not active"

    w.blur()

    if w.isActive()
      throw "#{exe} is still active"

    w.focus()

    w.close()