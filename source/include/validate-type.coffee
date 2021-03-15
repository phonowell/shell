# vt(name: string, target: unknown, type: string | string[]): Function
$vt = (name, target, type...) ->

  $type = $.type target

  unless $.includes type, $type
    throw new Error "$.#{name}: invalid type '#{$type}'"