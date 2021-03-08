# trimStart(input: string, omitting: string): string
$.trimStart = (input, omitting = ' \t') ->
  return LTrim input, omitting