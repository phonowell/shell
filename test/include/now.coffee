do ->

  now = $.now()
  unless ($.type now) == 'number'
    throw 0