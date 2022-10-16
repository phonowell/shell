# @ts-check

import $replace from './replace'
import $noop from './noop'

class FileShell

  ###* @type {import('../type/fileShell').Constructor} ###
  constructor: (source) ->
    ###* @type {import('../type/fileShell').Source} ###
    @source = source

  # append(content: string): void
  ###* @type {import('../type/fileShell').Append} ###
  append: (content) ->
    $noop content
    Native 'FileAppend, % content, % this.source, UTF-8'
    return

  # isExist(): boolean
  ###* @type {import('../type/fileShell').IsExist} ###
  isExist: -> FileExist @source

  # read(): string
  ###* @type {import('../type/fileShell').Read} ###
  read: ->
    unless @isExist() then return ''
    $result = ''
    Native 'FileRead, $result, % this.source'
    return $replace $result, '\r', ''

  # remove(): void
  ###* @type {import('../type/fileShell').Remove} ###
  remove: ->
    unless @isExist() then return
    Native 'FileDelete, % this.source'
    return

  # write(content: string): void
  ###* @type {import('../type/fileShell').Write} ###
  write: (content) ->
    @remove()
    @append content
    return

$noop FileShell