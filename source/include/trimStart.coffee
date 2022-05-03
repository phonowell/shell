# trimStart(ipt: string, omitting: string): string
$.trimStart = (ipt, omitting = ' \t') ->
  return LTrim ipt, omitting