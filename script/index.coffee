import '../source/index.ahk'
$ = $

$.on 'alt', -> $.alert 'alt'
$.on 'ctrl', -> $.alert 'ctrl'
$.on 'shift', -> $.alert 'shift'

$.on 'alt + 1', -> $.alert 'alt + 1'
$.on 'ctrl + 1', -> $.alert 'ctrl + 1'
$.on 'shift + 1', -> $.alert 'shift + 1'