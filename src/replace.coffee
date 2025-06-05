# @ts-check

###* @type import('./replace').Replace ###
export default (ipt, searchment, replacement, limit = -1) ->
  StrReplace ipt, searchment, replacement, limit