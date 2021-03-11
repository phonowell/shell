$validateType = (name, target, type) ->

  $type = $.type target
  unless $type == type
    throw new Error "$.#{name}: invalid type '#{$type}'"

  return true