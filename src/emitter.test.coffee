# @ts-check
import '../scripts/head.ahk'

import $defer from '../dist/defer'
import $emitter from '../dist/emitter'
import $isFunction from '../dist/isFunction'
import $isObject from '../dist/isObject'
import $getType from '../dist/getType'

do ->

  unless $isFunction $emitter then throw 0

  emitter = $emitter()
  unless $isObject emitter then throw 1

  for name in ['emit', 'off', 'on', 'once']
    unless $isFunction emitter[name]
      throw new Error "#{name}/#{$getType emitter[name]}"

# on & off
do ->

  emitter = $emitter()
  map = { a: 0 }
  emitter.on 'test', -> map.a++

  emitter.emit 'test'
  $defer ->
    unless map.a == 1 then throw new Error "on/#{map.a}"

    emitter.off 'test'

    emitter.emit 'test'
    $defer ->
      unless map.a == 1 then throw new Error 'off'

      emitter.off()

# on & off with name
do ->

  emitter = $emitter()
  map = { a: 0 }
  emitter.on 'test.a', -> map.a++

  emitter.emit 'test'
  $defer ->
    unless map.a == 1 then throw new Error "on with name - 1/#{map.a}"

    emitter.emit 'test.a'
    $defer ->
      unless map.a == 2 then throw new Error "on with name - 2/#{map.a}"

      emitter.emit 'test.b'
      $defer ->
        unless map.a == 2 then throw new Error "on with name - 3/#{map.a}"

        emitter.off 'test.a'

        emitter.emit 'test.a'
        $defer ->
          unless map.a == 2 then throw new Error "off with name/#{map.a}"
          emitter.off()

# once
do ->

  emitter = $emitter()
  map = { a: 0 }
  emitter.once 'test', -> map.a++

  emitter.emit 'test'
  $defer ->
    unless map.a == 1 then throw new Error 'once - 1'

    emitter.emit 'test'
    $defer ->
      unless map.a == 1 then throw new Error 'once - 2'

      emitter.off()

# 退出测试用例
import $exit from '../dist/exit'
$exit()