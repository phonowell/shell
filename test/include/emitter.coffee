# @ts-check

import $defer from '../../source/module/defer'
import $emitter from '../../source/module/emitter'
import $isFunction from '../../source/module/isFunction'
import $isObject from '../../source/module/isObject'
import $getType from '../../source/module/getType'

do ->

  unless $isFunction $emitter then throw 0

  emitter = $emitter()
  unless $isObject emitter then throw 1

  for name in ['emit', 'off', 'on', 'once']
    unless $isFunction emitter[name]
      throw "#{name}/#{$getType emitter[name]}"

# on & off
do ->

  emitter = $emitter()
  map = a: 0
  emitter.on 'test', -> map.a++

  emitter.emit 'test'
  $defer ->
    unless map.a == 1 then throw "on/#{map.a}"

    emitter.off 'test'

    emitter.emit 'test'
    $defer ->
      unless map.a == 1 then throw 'off'

      emitter.off()

# on & off with name
do ->

  emitter = $emitter()
  map = a: 0
  emitter.on 'test.a', -> map.a++

  emitter.emit 'test'
  $defer ->
    unless map.a == 1 then throw "on with name - 1/#{map.a}"

    emitter.emit 'test.a'
    $defer ->
      unless map.a == 2 then throw "on with name - 2/#{map.a}"

      emitter.emit 'test.b'
      $defer ->
        unless map.a == 2 then throw "on with name - 3/#{map.a}"

        emitter.off 'test.a'

        emitter.emit 'test.a'
        $defer ->
          unless map.a == 2 then throw "off with name/#{map.a}"
          emitter.off()

# once
do ->

  emitter = $emitter()
  map = a: 0
  emitter.once 'test', -> map.a++

  emitter.emit 'test'
  $defer ->
    unless map.a == 1 then throw 'once - 1'

    emitter.emit 'test'
    $defer ->
      unless map.a == 1 then throw 'once - 2'

      emitter.off()