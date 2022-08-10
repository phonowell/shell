import 'include/head.ahk'
import '../source/index.ahk'
$ = $

main = ->

  $.exec 'npm run alice y', (code) ->
    $.alert code
    $.exit()

$.on 'f1', main