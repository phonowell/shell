# @ts-check
import '../scripts/head.ahk'

import $emitter from '../dist/emitter'
import $isFunction from '../dist/isFunction'
import $isObject from '../dist/isObject'
import $sleep from '../dist/sleep'

do ->

  unless $isFunction $emitter
    throw new Error 'E001: emitter should be a function'

  emitter = $emitter()
  unless $isObject emitter
    throw new Error 'E002: emitter() should return an object'

  ###* @type (keyof import('../dist/emitterShell').EmitterShell)[] ###
  names = [
    'emit'
    'off'
    'on'
    'once'
  ]

  for name in names
    unless $isFunction emitter[name]
      throw new Error "E003: emitter().#{name} should be a function"

# on & off
do ->

  emitter = $emitter()
  data = { value: 0 }
  emitter.on 'test', -> data.value++

  emitter.emit 'test'
  unless data.value == 1 then throw new Error "E004: on/#{data.value}"

  emitter.off 'test'
  emitter.emit 'test'
  unless data.value == 1 then throw new Error 'E005: off'

  emitter.off()

# on & off with name
do ->

  emitter = $emitter()
  data = { value: 0 }
  emitter.on 'test.a', -> data.value++

  emitter.emit 'test'
  unless data.value == 1 then throw new Error "E006: on with name - 1/#{data.value}"

  emitter.emit 'test.a'
  unless data.value == 2 then throw new Error "E007: on with name - 2/#{data.value}"

  emitter.emit 'test.b'
  unless data.value == 2 then throw new Error "E008: on with name - 3/#{data.value}"

  emitter.off 'test.a'
  emitter.emit 'test.a'
  unless data.value == 2 then throw new Error "E009: off with name/#{data.value}"

  emitter.off()

# once
do ->

  emitter = $emitter()
  data = { value: 0 }
  emitter.once 'test', -> data.value++

  emitter.emit 'test'
  unless data.value == 1 then throw new Error 'E010: once - 1'

  emitter.emit 'test'
  unless data.value == 1 then throw new Error 'E011: once - 2'

  emitter.off()

$sleep 5e3

# 退出测试用例
import $exit from '../dist/exit'
$exit()