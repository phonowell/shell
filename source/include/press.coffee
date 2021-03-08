# press(key...: string): void
$.press = (listInput...) ->

  # validate
  unless $.length listInput
    throw new Error '$.press: invalid key'

  # format
  __listKey__ = []
  for input in listInput
    __input__ = $.toLowerCase input
    __input__ = $.replace __input__, ' ', ''
    __input__ = $.replace __input__, '-', ''
    __list__ = $.split __input__, '+'
    for it in __list__
      __listKey__.Push it

  # unfold
  __listResult__ = []
  __len__ = $.length __listKey__
  for key, i in __listKey__
    # last
    if i == __len__ - 1
      __listResult__[i] = $.split key, ':'
      continue
    # other
    if $.includes key, ':'
      __listResult__[i] = $.split key, ':'
      __listResult__[(__len__ - 1) * 2 - i] = $.split key, ':'
    else
      __listResult__[i] = [key, 'down']
      __listResult__[(__len__ - 1) * 2 - i] = [key, 'up']

  # alias & join
  for it, i in __listResult__
    if it[0] == 'win'
      it[0] = 'lwin'
    __listResult__[i] = $.trim "#{it[0]} #{it[1]}"

  # execute
  __output_as_string__ = ''
  for it in __listResult__
    __output_as_string__ = "#{__output_as_string__}{#{it}}"
  `Send, % __output_as_string__`