# add(augend: number, addend: number): number
$.add = (augend, addend) ->
  $validateType 'add', augend, 'number'
  $validateType 'add', addend, 'number'
  return augend + addend