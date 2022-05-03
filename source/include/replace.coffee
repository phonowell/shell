# replace(
#   ipt: string,
#   searchment: string,
#   replacement: string,
#   limit: number = -1
# )
$.replace = (ipt, searchment, replacement, limit = -1) ->
  return StrReplace ipt, searchment, replacement, limit