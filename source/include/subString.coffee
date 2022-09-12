# subString(text: string, iStart: number, iEnd = 0): string
$.subString = (text, iStart, iEnd = 0) ->

  $type = $.type text
  unless $type == 'string'
    throw new Error "$.subString: invalid type '#{$type}'"

  if iEnd then $len = iEnd - iStart
  else $len = 0

  unless $len then return SubStr text, iStart + 1
  else return SubStr text, iStart + 1, $len