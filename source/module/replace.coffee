# @ts-check

###* @type import('../type/module').Replace ###
export default (ipt, searchment, replacement, limit = -1) ->
  StrReplace ipt, searchment, replacement, limit