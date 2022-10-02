# @ts-check
# trimEnd(ipt: string, omitting: string): string
$.trimEnd = (ipt, omitting = ' \t') ->
  return RTrim ipt, omitting