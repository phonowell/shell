# @ts-check
### interface
type Level = 'high' | 'low' | 'normal'
###

class WindowShell

  exe: ''

  constructor: (exe) -> @exe = "ahk_exe #{exe}"

  # blur(): void
  blur: ->
    name = 'ahk_class Shell_TrayWnd'
    `WinActivate, % name`

  # close(): void
  close: ->
    unless @isExist() then return
    `WinClose, % this.exe`

  # focus(): void
  focus: ->
    unless @isExist() then return
    `WinActivate, % this.exe`

  # getBounds(): {x: number, y: number, width: number, height: number}
  getBounds: ->
    unless @isExist() then return
    [$x, $y, $w, $h] = [0, 0, 0, 0]
    `WinGetPos, $x, $y, $w, $h, % this.exe`
    return {x: $x, y: $y, width: $w, height: $h}

  # hide(): void
  hide: ->
    unless @isExist() then return
    `WinHide, % this.exe`

  # isActive(): boolean
  isActive: -> return WinActive @exe

  # isExist(): boolean
  isExist: -> return WinExist @exe

  # isFullScreen(): boolean
  isFullScreen: ->
    unless @isExist() then return false
    {x, y, width, height} = @getBounds()
    return x == 0 and y == 0 and width == A_ScreenWidth and height == A_ScreenHeight

  # kill(): void
  kill: ->
    unless @isExist() then return
    `WinKill, % this.exe`

  # maximize(): void
  maximize: ->
    unless @isExist() then return
    `WinMaximize, % this.exe`

  # minimize(): void
  minimize: ->
    unless @isExist() then return
    `WinMinimize, % this.exe`

  # restore(): void
  restore: ->
    unless @isExist() then return
    `WinRestore, % this.exe`

  # setPriority(level: Level): void
  setPriority: (level) ->
    unless @isExist() then return
    `Process, Priority, % this.exe, % level`

  # setStyle(style: string): void
  setStyle: (style) ->
    unless @isExist() then return
    `WinSet, Style, % style, % this.exe`

  # show(): void
  show: ->
    unless @isExist() then return
    `WinShow, % this.exe`

  # wait(callback: Fn): void
  wait: (callback) ->
    `WinWait, % this.exe`
    if callback then callback()

# window(exe: string): WindowShell
$.window = (exe) -> return new WindowShell exe