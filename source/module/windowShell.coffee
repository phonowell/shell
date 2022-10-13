# @ts-check

import $noop from './noop'

class WindowShell

  ###* @type {import('../type/windowShell').Exe} ###
  exe: ''

  ###* @type {import('../type/windowShell').Constructor} ###
  constructor: (exe) -> @exe = "ahk_exe #{exe}"

  # blur(): void
  ###* @type {import('../type/windowShell').Blur} ###
  blur: ->
    name = 'ahk_class Shell_TrayWnd'
    $noop name
    Native 'WinActivate, % name'
    return

  # close(): void
  ###* @type {import('../type/windowShell').Close} ###
  close: ->
    unless @isExist() then return
    Native 'WinClose, % this.exe'
    return

  # focus(): void
  ###* @type {import('../type/windowShell').Focus} ###
  focus: ->
    unless @isExist() then return
    Native 'WinActivate, % this.exe'
    return

  # getBounds(): {x: number, y: number, width: number, height: number}
  ###* @type {import('../type/windowShell').GetBounds} ###
  getBounds: ->
    [$x, $y, $w, $h] = [0, 0, 0, 0]
    unless @isExist() then return {x: $x, y: $y, width: $w, height: $h}
    Native 'WinGetPos, $x, $y, $w, $h, % this.exe'
    return {x: $x, y: $y, width: $w, height: $h}

  # hide(): void
  ###* @type {import('../type/windowShell').Hide} ###
  hide: ->
    unless @isExist() then return
    Native 'WinHide, % this.exe'
    return

  # isActive(): boolean
  ###* @type {import('../type/windowShell').IsActive} ###
  isActive: -> WinActive @exe

  # isExist(): boolean
  ###* @type {import('../type/windowShell').IsExist} ###
  isExist: -> WinExist @exe

  # isFullScreen(): boolean
  ###* @type {import('../type/windowShell').IsFullScreen} ###
  isFullScreen: ->
    unless @isExist() then return false
    {x, y, width, height} = @getBounds()
    return x == 0 and y == 0 and width == A_ScreenWidth and height == A_ScreenHeight

  # kill(): void
  ###* @type {import('../type/windowShell').Kill} ###
  kill: ->
    unless @isExist() then return
    Native 'WinKill, % this.exe'
    return

  # maximize(): void
  ###* @type {import('../type/windowShell').Maximize} ###
  maximize: ->
    unless @isExist() then return
    Native 'WinMaximize, % this.exe'
    return

  # minimize(): void
  ###* @type {import('../type/windowShell').Minimize} ###
  minimize: ->
    unless @isExist() then return
    Native 'WinMinimize, % this.exe'
    return

  # restore(): void
  ###* @type {import('../type/windowShell').Restore} ###
  restore: ->
    unless @isExist() then return
    Native 'WinRestore, % this.exe'
    return

  # setPriority(level: Level): void
  ###* @type {import('../type/windowShell').SetPriority} ###
  setPriority: (level) ->
    unless @isExist() then return
    $noop level
    Native 'Process, Priority, % this.exe, % level'
    return

  # setStyle(style: string): void
  ###* @type {import('../type/windowShell').SetStyle} ###
  setStyle: (style) ->
    unless @isExist() then return
    $noop style
    Native 'WinSet, Style, % style, % this.exe'
    return

  # show(): void
  ###* @type {import('../type/windowShell').Show} ###
  show: ->
    unless @isExist() then return
    Native 'WinShow, % this.exe'
    return

  # wait(callback: Fn): void
  ###* @type {import('../type/windowShell').Wait} ###
  wait: (callback) ->
    Native 'WinWait, % this.exe'
    if callback then callback()
    return

$noop WindowShell