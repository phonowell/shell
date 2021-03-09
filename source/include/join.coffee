# join(list: unknown[], seperator: string): string
$.join = (list, seperator = '') ->

  unless $.isArray list
    throw new Error '$.join: invalid type'

  $result = ''
  for $item, $i in list

    unless $i
      $result = $item
      continue

    $result = "#{$result}#{seperator}#{$item}"

  return $result