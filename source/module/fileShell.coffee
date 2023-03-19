# @ts-check

import $replace from './replace'
import $noop from './noop'

class FileShell

  constructor: (source) ->
    ###* @type import('../type/fileShell').FileShell['source'] ###
    @source = source

  ###* @type import('../type/fileShell').FileShell['append'] ###
  append: (content) ->
    $noop content
    Native 'FileAppend, % content, % this.source, UTF-8'
    return

  ###* @type import('../type/fileShell').FileShell['isExists'] ###
  isExists: -> FileExist @source

  ###* @type import('../type/fileShell').FileShell['read'] ###
  read: ->
    unless @isExists() then return ''
    $result = ''
    Native 'FileRead, $result, % this.source'
    return $replace $result, '\r', ''

  ###* @type import('../type/fileShell').FileShell['remove'] ###
  remove: ->
    unless @isExists() then return
    Native 'FileDelete, % this.source'
    return

  ###* @type import('../type/fileShell').FileShell['write'] ###
  write: (content) ->
    @remove()
    @append content
    return

$noop FileShell