# type Obj = {[key: string]: unknown}
# mixin(target: Obj, source: Obj): Obj
$.mixin = (args...) ->

  switch $.length args
    when 1 then [$target, $source] = [{}, args[0]]
    when 2 then [$target, $source] = args
    else throw new Error '$.mixin: invalid arguments'

  unless $.isObject $target
    throw new Error '$.mixin: invalid type'

  unless $.isObject $source
    throw new Error '$.mixin: invalid type'

  for $key, $value of $source
    $target[$key] = $value

  return $target