# @ts-check

import $endsWith from './endsWith'
import $noop from './noop'

class WindowShell

  ###* @type import('./windowShell').Constructor ###
  constructor: (exe, title = '') ->

    ###* @type import('./windowShell').WindowShell['exe'] ###
    @exe = ''
    if $endsWith exe, '.exe' then @exe = exe
    else @exe = "#{exe}.exe"

    ###* @type import('./windowShell').WindowShell['title'] ###
    @title = ''
    if title then @title = title

  ###* @type import('./windowShell').WindowShell['getWindowIdString'] ###
  getWindowIdString: ->
    $id = @getWindowId()
    unless $id then return ''

    return "ahk_id #{$id}"

  ###* @type import('./windowShell').WindowShell['blur'] ###
  blur: ->
    $idString = @getWindowIdString()
    unless $idString then return

    # 实际上是聚焦任务栏
    name = 'ahk_class Shell_TrayWnd'
    $noop name
    Native 'WinActivate, %name%'
    return

  ###* @type import('./windowShell').WindowShell['close'] ###
  close: ->
    $idString = @getWindowIdString()
    unless $idString then return

    Native 'WinClose, % $idString'
    return

  ###* @type import('./windowShell').WindowShell['focus'] ###
  focus: ->
    $idString = @getWindowIdString()
    unless $idString then return

    Native 'WinActivate, % $idString'
    return

  ###* @type import('./windowShell').WindowShell['getBounds'] ###
  getBounds: ->
    [$x, $y, $w, $h] = [0, 0, 0, 0]

    $idString = @getWindowIdString()
    unless $idString then return {
      x: $x
      y: $y
      width: $w
      height: $h
    }

    Native 'WinGetPos, $x, $y, $w, $h, % $idString'
    return {
      x: $x
      y: $y
      width: $w
      height: $h
    }

  ###* @type import('./windowShell').WindowShell['getProcessId'] ###
  getProcessId: ->
    $idString = @getWindowIdString()
    unless $idString then return 0

    $pid = 0
    Native 'WinGet, $pid, PID, % $idString'
    return $pid

  ###* @type import('./windowShell').WindowShell['getTitle'] ###
  getTitle: ->
    $idString = @getWindowIdString()
    unless $idString then return ''

    if @title then return @title

    $title = ''
    Native 'WinGetTitle, $title, % $idString'
    return $title

  ###* @type import('./windowShell').WindowShell['getWindowId'] ###
  getWindowId: ->
    $id = 0
    $selector = ''
    $noop $selector

    if @title then $selector = "#{@title} ahk_exe #{@exe}"
    else $selector = "ahk_exe #{@exe}"

    Native 'WinGet, $id, ID, % $selector'

    return $id

  ###* @type import('./windowShell').WindowShell['hide'] ###
  hide: ->
    $idString = @getWindowIdString()
    unless $idString then return

    Native 'WinHide, % $idString'
    return

  ###* @type import('./windowShell').WindowShell['isActive'] ###
  isActive: ->
    $id = @getWindowId()
    unless $id then return false

    $activeId = WinActive "ahk_id #{$id}"
    return $activeId == $id

  ###* @type import('./windowShell').WindowShell['isExists'] ###
  isExists: ->
    $id = @getWindowId()
    return $id > 0

  ###* @type import('./windowShell').WindowShell['isFullScreen'] ###
  isFullScreen: ->
    $idString = @getWindowIdString()
    unless $idString then return false

    { x, y, width, height } = @getBounds()
    return x == 0 and y == 0 and width == A_ScreenWidth and height == A_ScreenHeight

  ###* @type import('./windowShell').WindowShell['kill'] ###
  kill: ->
    $idString = @getWindowIdString()
    unless $idString then return

    Native 'WinKill, % $idString'
    return

  ###* @type import('./windowShell').WindowShell['maximize'] ###
  maximize: ->
    $idString = @getWindowIdString()
    unless $idString then return

    Native 'WinMaximize, % $idString'
    return

  ###* @type import('./windowShell').WindowShell['minimize'] ###
  minimize: ->
    $idString = @getWindowIdString()
    unless $idString then return

    Native 'WinMinimize, % $idString'
    return

  ###* @type import('./windowShell').WindowShell['restore'] ###
  restore: ->
    $idString = @getWindowIdString()
    unless $idString then return

    Native 'WinRestore, % $idString'
    return

  ###* @type import('./windowShell').WindowShell['setPriority'] ###
  setPriority: (level) ->
    $id = @getWindowId()
    unless $id then return

    $noop level
    Native 'Process, Priority, % this.exe, % level'
    return

  ###* @type import('./windowShell').WindowShell['setStyle'] ###
  setStyle: (style) ->
    $idString = @getWindowIdString()
    unless $idString then return

    $noop style
    Native 'WinSet, Style, % style, % $idString'
    return

  ###* @type import('./windowShell').WindowShell['show'] ###
  show: ->
    $idString = @getWindowIdString()
    unless $idString then return

    Native 'WinShow, % $idString'
    return

  ###* @type import('./windowShell').WindowShell['wait'] ###
  wait: (callback) ->
    $selector = ''
    $noop $selector

    if @title then $selector = "#{@title} ahk_exe #{@exe}"
    else $selector = "ahk_exe #{@exe}"

    Native 'WinWait, % $selector'

    if callback then callback()
    return

$noop WindowShell