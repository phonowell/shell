# @ts-check

###* @type import('./startsWith').StartsWith ###
export default (haystack, needle) -> SubStr(haystack, 1, StrLen needle) == needle
