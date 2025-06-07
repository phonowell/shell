# @ts-check
import '../scripts/head.ahk'

import $isFunction from '../dist/isFunction'
import $isObject from '../dist/isObject'
import $open from '../dist/open'
import $sleep from '../dist/sleep'
import $window from '../dist/window'

do ->

  unless $isFunction $window
    throw new Error 'window should be a function'

  win = $window 'notepad.exe'
  unless $isObject win
    throw new Error "window('notepad.exe') should return an object"

  ###* @type (keyof import('../dist/windowShell').WindowShell)[] ###
  names = [
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

  for name in names
    unless $isFunction win[name]
      throw new Error "window('notepad.exe').#{name} should be a function"

do ->

  exe = 'msedge.exe'
  win = $window exe

  win.close()

  if win.isExists()
    throw new Error "#{exe} is already running"

  $open exe

  win.wait ->
    unless win.isExists()
      throw new Error "#{exe} is not running"

    unless win.isActive()
      throw new Error "#{exe} is not active"

    win.blur()

    if win.isActive()
      throw new Error "#{exe} is still active"

    win.focus()

    win.close()

$sleep 5e3

# 退出测试用例
import $exit from '../dist/exit'
$exit()