# @ts-check
class FileShell

  source: ''

  constructor: (source) -> @source = source

  # append(content: string): void
  append: (content) -> `FileAppend, % content, % this.source, UTF-8`

  # isExist(): boolean
  isExist: -> return FileExist @source

  # read(): string
  read: ->
    unless @isExist() then return ''
    `FileRead, __result__, % this.source`
    return $.replace __result__, '\r', ''

  # remove(): void
  remove: ->
    unless @isExist() then return
    `FileDelete, % this.source`

  # write(content: string): void
  write: (content) ->
    @delete()
    return @append content

# file(source: string): FileShell
$.file = (source) -> return new FileShell source