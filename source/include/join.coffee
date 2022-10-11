# @ts-check

###* join(list: string[], seperator?: string): string
# @param {string[]} list
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