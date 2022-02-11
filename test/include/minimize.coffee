do ->

  unless ($.type $.minimize) == 'function' then throw 0

  name = 'notepad.exe'

  $.close name
  $.open name
  $.wait name, ->

    isActive = $.isActive name
    unless isActive then throw 1

    $.minimize name
    isActive = $.isActive name
    if isActive then throw 2

    $.close name