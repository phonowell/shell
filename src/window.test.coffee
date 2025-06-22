# @ts-check
import '../scripts/head.ahk'

import $isFunction from '../dist/isFunction'
import $isObject from '../dist/isObject'
import $open from '../dist/open'
import $sleep from '../dist/sleep'
import $window from '../dist/window'

import $alert from '../dist/alert'

do ->

  unless $isFunction $window
    throw new Error 'ERR001: window should be a function'

  win = $window 'notepad'
  unless $isObject win
    throw new Error "ERR002: window('notepad') should return an object"

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
      throw new Error "ERR003: window('notepad').#{name} should be a function"

do ->

  exe = 'msedge'
  win = $window exe

  win.close()

  if win.isExists()
    throw new Error "ERR004: #{exe} is already running"

  $open exe

  win.wait ->
    unless win.isExists()
      throw new Error "ERR005: #{exe} is not running"

    unless win.isActive()
      throw new Error "ERR006: #{exe} is not active"

    win.blur()

    if win.isActive()
      throw new Error "ERR007: #{exe} is still active"

    win.focus()

    win.close()

$sleep 5e3

# 退出测试用例
import $exit from '../dist/exit'
$exit()