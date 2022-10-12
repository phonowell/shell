# @ts-check

import $replace from './replace'
import $noop from './noop'

class FileShell

  ###* @type {import('@/type/file').Source} ###
  source: ''

  ###* @type {import('@/type/file').Constructor} ###
  constructor: (source) -> @source = source

  # append(content: string): void
  ###* @type {import('@/type/file').Append} ###
  append: (content) ->
    $noop content
    Native 'FileAppend, % content, % this.source, UTF-8'
    return

  # isExist(): boolean
  ###* @type {import('@/type/file').IsExist} ###
  isExist: -> FileExist @source

  # read(): string
  ###* @type {import('@/type/file').Read} ###
  read: ->
    unless @isExist() then return ''
    $result = ''
    Native 'FileRead, $result, % this.source'
    return $replace $result, '\r', ''

  # remove(): void
  ###* @type {import('@/type/file').Remove} ###
  remove: ->
    unless @isExist() then return
    Native 'FileDelete, % this.source'
    return

  # write(content: string): void
  ###* @type {import('@/type/file').Write} ###
  write: (content) ->
    @remove()
    @append content
    return

$noop FileShell