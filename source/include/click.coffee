# click(key?: string): void
$.click = (key = 'left') ->

  key = $.replace key, '-', ''
  key = $.replace key, ':', ' '

  `Click, % key`