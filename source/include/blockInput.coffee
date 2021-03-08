# blockInput(block: boolean): void
$.blockInput = (block) ->

  if block
    `BlockInput, On`
    return

  `BlockInput, Off`