# type Obj = {[key: string]: unknown}
# mixin(target: Obj, source: Obj): Obj
$.mixin = (args...) ->

  switch $.length args
    when 1 then [$target, $source] = [{}, args[0]]
    when 2 then [$target, $source] = args
    else throw new Error '$.mixin: invalid arguments'

  $validateType 'mixin', $target, 'object'
  $validateType 'mixin', $source, 'object'

  for $key, $value of $source
    $target[$key] = $value

  return $target