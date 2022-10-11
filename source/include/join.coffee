# @ts-check

# join(list: string[], seperator?: string): string
###* @type {import('@/type/module').Join} ###
export default (list, seperator = ',') ->

  $result = ''
  for $item, $i in list

    unless $i
      $result = $item
      continue

    $result = "#{$result}#{seperator}#{$item}"

  return $result