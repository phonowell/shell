# @ts-check

###* @type import('./endsWith').EndsWith ###
export default (haystack, needle) ->
  SubStr(haystack, StrLen(haystack) - StrLen(needle) + 1) == needle