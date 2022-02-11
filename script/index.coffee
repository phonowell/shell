import '../source/index.ahk'
$ = $

do ->

  name = 'notepad.exe'

  $.on 'f1', $.minimizeAll
  $.on 'f2', -> $minimizeAll 'undo'

  $.on 'f12', $.reload