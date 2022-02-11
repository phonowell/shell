do ->

  unless ($.type $.activate) == 'function' then throw 0

  name = 'notepad.exe'

  $.close name
  $.open name
  $.wait name, ->

    $.minimize name
    isActive = $.isActive name
    if isActive then throw 1

    $.activate name
    isActive = $.isActive name
    unless isActive then throw 2

    $.close name