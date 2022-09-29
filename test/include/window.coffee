do ->

  unless $.isFunction $.window
    throw new Error '$.window is not a function'

  w = $.window 'notepad.exe'
  unless $.isObject w
    throw new Error '$.window("notepad.exe") is not an object'

  for fn in [
    'blur'
    'close'
    'focus'
    'getBounds'
    'hide'
    'isActive'
    'isExist'
    'isFullScreen'
    'kill'
    'maximize'
    'minimize'
    'restore'
    'setPriority'
    'setStyle'
    'show'
    'wait'
  ]
    unless $.isFunction w[fn]
      throw new Error "$.window('notepad.exe').#{fn} is not a function"

do ->

  exe = 'notepad.exe'
  w = $.window exe

  w.close()

  if w.isExist()
    throw new Error "#{exe} is already running"

  $.open exe

  w.wait ->
    unless w.isExist()
      throw new Error "#{exe} is not running"

    unless w.isActive()
      throw new Error "#{exe} is not active"

    w.blur()

    if w.isActive()
      throw new Error "#{exe} is still active"

    w.focus()

    w.close()