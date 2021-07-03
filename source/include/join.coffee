# join(list: unknown[], seperator: string): string
$.join = (list, seperator = '') ->

  $result = ''
  for $item, $i in list

    unless $i
      $result = $item
      continue

    $result = "#{$result}#{seperator}#{$item}"

  return $result