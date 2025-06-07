# @ts-check

import $getType from './getType'

###* @type import('./subString').SubString ###
export default (text, start = 0, end = 0) ->

  unless ($getType text) == 'string'
    throw new Error "subString: Expected string, got #{ $getType text }"

  $len = StrLen text

  if start > $len then start = $len
  if start < 0 then start = $len + start

  unless end then end = $len
  if end > $len then end = $len
  if end < 0 then end = $len + end

  if start > end then [start, end] = [end, start]

  return SubStr text, start + 1, end - start