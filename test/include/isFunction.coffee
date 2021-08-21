do ->

  fn = -> return ''

  result = $.isFunction fn
  unless result then throw 1