# @ts-check

import $noop from './noop'

class WindowShell

  ###* @type import('./windowShell').Constructor ###
  constructor: (exe) ->

    ###* @type import('./windowShell').WindowShell['exe'] ###
    @exe = "ahk_exe #{exe}"

  ###* @type import('./windowShell').WindowShell['blur'] ###
  blur: ->
    name = 'ahk_class Shell_TrayWnd'
    $noop name
    Native 'WinActivate, % name'
    return

  ###* @type import('./windowShell').WindowShell['close'] ###
  close: ->
    unless @isExists() then return
    Native 'WinClose, % this.exe'
    return

  ###* @type import('./windowShell').WindowShell['focus'] ###
  focus: ->
    unless @isExists() then return
    Native 'WinActivate, % this.exe'
    return

  ###* @type import('./windowShell').WindowShell['getBounds'] ###
  getBounds: ->
    [$x, $y, $w, $h] = [0, 0, 0, 0]
    unless @isExists() then return { x: $x, y: $y, width: $w, height: $h }
    Native 'WinGetPos, $x, $y, $w, $h, % this.exe'
    return { x: $x, y: $y, width: $w, height: $h }

  ###* @type import('./windowShell').WindowShell['getTitle'] ###
  getTitle: ->
    $title = ''
    Native 'WinGetTitle, $title, % this.exe'
    return $title

  ###* @type import('./windowShell').WindowShell['hide'] ###
  hide: ->
    unless @isExists() then return
    Native 'WinHide, % this.exe'
    return

  ###* @type import('./windowShell').WindowShell['isActive'] ###
  isActive: -> WinActive @exe

  ###* @type import('./windowShell').WindowShell['isExists'] ###
  isExists: -> WinExist @exe

  ###* @type import('./windowShell').WindowShell['isFullScreen'] ###
  isFullScreen: ->
    unless @isExists() then return false
    { x, y, width, height } = @getBounds()
    return x == 0 and y == 0 and width == A_ScreenWidth and height == A_ScreenHeight

  ###* @type import('./windowShell').WindowShell['kill'] ###
  kill: ->
    unless @isExists() then return
    Native 'WinKill, % this.exe'
    return

  ###* @type import('./windowShell').WindowShell['maximize'] ###
  maximize: ->
    unless @isExists() then return
    Native 'WinMaximize, % this.exe'
    return

  ###* @type import('./windowShell').WindowShell['minimize'] ###
  minimize: ->
    unless @isExists() then return
    Native 'WinMinimize, % this.exe'
    return

  ###* @type import('./windowShell').WindowShell['restore'] ###
  restore: ->
    unless @isExists() then return
    Native 'WinRestore, % this.exe'
    return

  ###* @type import('./windowShell').WindowShell['setPriority'] ###
  setPriority: (level) ->
    unless @isExists() then return
    $noop level
    Native 'Process, Priority, % this.exe, % level'
    return

  ###* @type import('./windowShell').WindowShell['setStyle'] ###
  setStyle: (style) ->
    unless @isExists() then return
    $noop style
    Native 'WinSet, Style, % style, % this.exe'
    return

  ###* @type import('./windowShell').WindowShell['show'] ###
  show: ->
    unless @isExists() then return
    Native 'WinShow, % this.exe'
    return

  ###* @type import('./windowShell').WindowShell['wait'] ###
  wait: (callback) ->
    Native 'WinWait, % this.exe'
    if callback then callback()
    return

$noop WindowShell