# @ts-check

###* join(list: unknown[], seperator?: string): string
# @param {unknown[]} list
# @param {string} [seperator]
# @returns {string}
###
export default (list, seperator = ',') ->

  $result = ''
  for $item, $i in list

    unless $i
      $result = $item
      continue

    $result = "#{$result}#{seperator}#{$item}"

  return $result