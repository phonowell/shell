import '../source/index'
$ = $

$
  .on 'a', -> $.info $.now()
  .on 'b', -> $.trigger 'a'
  .on 'c', -> $.off 'a'