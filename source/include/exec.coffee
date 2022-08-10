# exec(cmd: string | string[], callback?: (code: number) => void): void
$.exec = ($input, $callback) ->

  if $.isString $input then $input = [$input]
  $input = $.join $input, ' && '

  `RunWait, %comSpec% /c %$input%,, Hide UseErrorLevel`

  if $.isFunction $callback then $callback ErrorLevel