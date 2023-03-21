# @ts-check

import $noop from './noop'

class WindowShell

  ###* @type import('../type/windowShell').Constructor ###
  constructor: (exe) ->
    ###* @type import('../type/windowShell').WindowShell['exe'] ###
    @exe = "ahk_exe #{exe}"

  ###* @type import('../type/windowShell').WindowShell['blur'] ###
  blur: ->
    name = 'ahk_class Shell_TrayWnd'
    $noop name
    Native 'WinActivate, % name'
    return

  ###* @type import('../type/windowShell').WindowShell['close'] ###
  close: ->
    unless @isExists() then return
    Native 'WinClose, % this.exe'
    return

  ###* @type import('../type/windowShell').WindowShell['focus'] ###
  focus: ->
    unless @isExists() then return
    Native 'WinActivate, % this.exe'
    return

  ###* @type import('../type/windowShell').WindowShell['getBounds'] ###
  getBounds: ->
    [$x, $y, $w, $h] = [0, 0, 0, 0]
    unless @isExists() then return {x: $x, y: $y, width: $w, height: $h}
    Native 'WinGetPos, $x, $y, $w, $h, % this.exe'
    return {x: $x, y: $y, width: $w, height: $h}

  ###* @type import('../type/windowShell').WindowShell['hide'] ###
  hide: ->
    unless @isExists() then return
    Native 'WinHide, % this.exe'
    return

  ###* @type import('../type/windowShell').WindowShell['isActive'] ###
  isActive: -> WinActive @exe

  ###* @type import('../type/windowShell').WindowShell['isExists'] ###
  isExists: -> WinExist @exe

  ###* @type import('../type/windowShell').WindowShell['isFullScreen'] ###
  isFullScreen: ->
    unless @isExists() then return false
    {x, y, width, height} = @getBounds()
    return x == 0 and y == 0 and width == A_ScreenWidth and height == A_ScreenHeight

  ###* @type import('../type/windowShell').WindowShell['kill'] ###
  kill: ->
    unless @isExists() then return
    Native 'WinKill, % this.exe'
    return

  ###* @type import('../type/windowShell').WindowShell['maximize'] ###
  maximize: ->
    unless @isExists() then return
    Native 'WinMaximize, % this.exe'
    return

  ###* @type import('../type/windowShell').WindowShell['minimize'] ###
  minimize: ->
    unless @isExists() then return
    Native 'WinMinimize, % this.exe'
    return

  ###* @type import('../type/windowShell').WindowShell['restore'] ###
  restore: ->
    unless @isExists() then return
    Native 'WinRestore, % this.exe'
    return

  ###* @type import('../type/windowShell').WindowShell['setPriority'] ###
  setPriority: (level) ->
    unless @isExists() then return
    $noop level
    Native 'Process, Priority, % this.exe, % level'
    return

  ###* @type import('../type/windowShell').WindowShell['setStyle'] ###
  setStyle: (style) ->
    unless @isExists() then return
    $noop style
    Native 'WinSet, Style, % style, % this.exe'
    return

  ###* @type import('../type/windowShell').WindowShell['show'] ###
  show: ->
    unless @isExists() then return
    Native 'WinShow, % this.exe'
    return

  ###* @type import('../type/windowShell').WindowShell['wait'] ###
  wait: (callback) ->
    Native 'WinWait, % this.exe'
    if callback then callback()
    return

$noop WindowShell