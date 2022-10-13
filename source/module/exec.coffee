# @ts-check

import $isString from './isString'
import $join from './join'
import $noop from './noop'

# exec(cmd: string | string[], callback?: (code: number | string) => void): void
###* @type {import('../type/module').Exec} ###
export default ($input, $callback = $noop) ->

  if $isString $input then $input = [$input]
  $input = $join $input, ' && '

  Native 'RunWait, %comSpec% /c %$input%,, Hide UseErrorLevel'

  $callback ErrorLevel