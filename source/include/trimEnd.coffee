# trimEnd(input: string, omitting: string): string
$.trimEnd = (input, omitting = ' \t') ->
  return RTrim input, omitting