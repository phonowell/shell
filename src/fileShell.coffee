# @ts-check

import $replace from './replace'
import $noop from './noop'

class FileShell

  ###* @type import('./fileShell').Constructor ###
  constructor: (source) ->

    ###* @type import('./fileShell').FileShell['source'] ###
    @source = source

    return @

  ###* @type import('./fileShell').FileShell['append'] ###
  append: (content) ->
    $noop content
    Native 'FileAppend, % content, % this.source, UTF-8'
    return

  ###* @type import('./fileShell').FileShell['isExists'] ###
  isExists: -> FileExist @source

  ###* @type import('./fileShell').FileShell['read'] ###
  read: ->
    unless @isExists() then return ''
    $result = ''
    Native 'FileRead, $result, % this.source'
    return $replace $result, '\r', ''

  ###* @type import('./fileShell').FileShell['remove'] ###
  remove: ->
    unless @isExists() then return
    Native 'FileDelete, % this.source'
    return

  ###* @type import('./fileShell').FileShell['write'] ###
  write: (content) ->
    @remove()
    @append content
    return

$noop FileShell