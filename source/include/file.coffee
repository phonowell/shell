class FileShellX

  name: ''

  constructor: (name) -> @name = name

  append: (content) ->
    `FileAppend, % content, % this.name, UTF-8`
    return content

  exist: ->
    unless FileExist @name
      return false
    return true

  delete: ->
    unless @exist()
      return @
    `FileDelete, % this.name`
    return @

  load: ->
    unless @exist()
      return ''
    `FileRead, __result__, % this.name`
    return $.replace __result__, '\r', ''

  save: (content) ->
    @delete()
    return @append content

$.file = (name) -> return new FileShellX name