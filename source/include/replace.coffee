# replace(
#   input: string,
#   searchment: string,
#   replacement: string,
#   limit: number = -1
# )
$.replace = (input, searchment, replacement, limit = -1) ->
  return StrReplace input, searchment, replacement, limit