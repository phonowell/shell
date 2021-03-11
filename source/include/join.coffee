# join(list: unknown[], seperator: string): string
$.join = (list, seperator = '') ->

  $validateType 'join', list, 'array'

  $result = ''
  for $item, $i in list

    unless $i
      $result = $item
      continue

    $result = "#{$result}#{seperator}#{$item}"

  return $result