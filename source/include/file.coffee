class FileShellX

  name: ''

  constructor: (name) -> @name = name

  append: (content) ->
    `FileAppend, % content, % this.name, UTF-8`
    return content

  exist: ->
    unless FileExist @name then return false
    return true

  delete: ->
    unless @exist() then return @
    `FileDelete, % this.name`
    return @

  load: ->
    unless @exist() then return ''
    `FileRead, __result__, % this.name`
    return $.replace __result__, '\r', ''

  save: (content) ->
    @delete()
    return @append content

$.file = (name) -> return new FileShellX name