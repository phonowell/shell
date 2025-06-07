# @ts-check

###* @type import('./replace').Replace ###
export default (original, searchment, replacement, count = -1) ->
  StrReplace original, searchment, replacement, count