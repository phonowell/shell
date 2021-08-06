# eq<T>(value: T, other: T): boolean
$eq = (value, other) ->

  $typeA = $.type value
  $typeB = $.type other

  unless $typeA == $typeB
    return false

  if $.includes ['function', 'number', 'string'], $typeA
    return value == other

  $lengthA = $.length value
  $lengthB = $.length other

  unless $lengthA == $lengthB
    return false

  if $typeA == 'array'
    for $it, $i in value
      unless $eq $it, other[$i]
        return false
    return true

  # object
  for $k, $v of value
    unless $eq $v, other[$k]
      return false
  return true

$.eq = $eq