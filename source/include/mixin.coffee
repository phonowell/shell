# type Obj = {[x: string]: unknown}
# mixin(...args: Obj[]): Obj
$.mixin = (args...) ->

  unless $.length args
    throw new Error '$.mixin: invalid arguments'

  $result = args[0]

  for $item in $.tail args
    for $key, $value of $item
      $result[$key] = $value

  return $result