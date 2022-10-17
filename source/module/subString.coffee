# @ts-check

import $getType from './getType'

# subString(text: string, iStart: number, iEnd?: number): string
###* @type import('../type/module').SubString} *###
export default (text, iStart, iEnd = 0) ->

  $type = $getType text
  unless $type == 'string'
    throw new Error "$.subString: invalid type '#{$type}'"

  if iEnd then $len = iEnd - iStart
  else $len = 0

  unless $len then return SubStr text, iStart + 1
  else return SubStr text, iStart + 1, $len