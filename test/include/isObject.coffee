do ->

  map = {
    a: 1
  }

  result = $.isObject map
  unless result then throw 1