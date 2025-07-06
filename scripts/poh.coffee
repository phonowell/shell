# @ts-check

import './head.ahk'
import './admin.ahk'

import $alert from '../dist/alert'
import $beep from '../dist/beep'
import $exit from '../dist/exit'
import $getPosition from '../dist/getPosition'
import $math from '../dist/math'
import $move from '../dist/move'
import $noop from '../dist/noop'
import $off from '../dist/off'
import $on from '../dist/on'
import $press from '../dist/press'
import $reload from '../dist/reload'
import $sleep from '../dist/sleep'
# import $tip from '../dist/tip'
import $window from '../dist/window'
import $concat from '../dist/concat'

# 热键
mainHotkey = 'alt + f1'
reloadHotkey = 'esc'
exitHotkey = 'alt + f4'
originalScreenshotHotkey = 'ctrl + alt + f9'

# 等待时长
waitTime = 500

# Photoshop 窗口
ps = $window 'Photoshop'

# 截图工具窗口
# 识图结果
qsr = $window 'QQScreenShot', '屏幕识图'

# 等待一段时间
###* @type () => void ###
wait = -> $sleep waitTime

# 重置按键状态
###* @type () => void ###
reset = ->
  ###* @type string[] ###
  keys = []
  line1 = ['esc', 'f1', 'f2', 'f3', 'f4', 'f5', 'f6', 'f7', 'f8', 'f9', 'f10', 'f11', 'f12']
  line2 = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0']
  line3 = ['q', 'w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p']
  line4 = ['a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'enter']
  line5 = ['z', 'x', 'c', 'v', 'b', 'n', 'm']
  line6 = ['space', 'l-button', 'r-button']
  $concat keys, line1, line2, line3, line4, line5, line6

  for key in keys
    $press "#{key}:up"
  return

# 检查进程是否存在
###* @type (exe: string) => boolean ###
checkProcessExists = (exe) ->
  Native 'Process, Exist, % exe'
  Native 'return, % ErrorLevel'
  $noop exe
  return false

# 点击 OCR 按钮
###* @type (callback: (points: [[number, number], [number, number]]) => void) => void ###
clickOCRButton = (callback) ->

  ###* @type Record<string, [number, number]> ###
  p = {
    a: [0, 0]
    b: [0, 0]
  }

  $on 'l-button:down', -> p.a = $getPosition()

  $on 'l-button:up', ->
    $off 'l-button:down'
    $off 'l-button:up'

    p.b = $getPosition()

    # 重新赋值
    ###* @type [number, number] ###
    a = [
      $math.min p.a[0], p.b[0]
      $math.min p.a[1], p.b[1]
    ]
    ###* @type [number, number] ###
    b = [
      $math.max p.a[0], p.b[0]
      $math.max p.a[1], p.b[1]
    ]

    # 若未获取到合法坐标，则取消
    if a[0] == 0 or a[1] == 0
      $press 'esc'
      return

    # 若框选区域过小，则取消
    if (b[0] - a[0]) * (b[1] - a[1]) <= 250
      $press 'esc'
      return

    # 点击 OCR 按钮
    if b[0] >= 482
      $move [
        b[0] - 190
        b[1] + 20
      ]
    else
      $move [
        290
        b[1] + 20
      ]
    wait()

    $press 'l-button'
    wait()

    # 回调传递坐标
    callback [a, b]

# 点击复制按钮
###* @type (callback: Function) => void ###
clickCopyButton = (callback) ->
  {
    x, y, width, height
  } = qsr.getBounds()

  $move [
    x + width - 85
    y + height - 35
  ]

  wait()
  $press 'l-button'
  $press 'l-button'
  wait()

  # 关闭
  qsr.close()

  callback()

# 在 Photoshop 中创建新图层
###* @type (points: [[number, number], [number, number]]) => void ###
addPhotoshopLayer = (points) ->
  ps.focus()
  wait()

  # $tip "#{points[0][0]}, #{points[0][1]} / #{points[1][0]}, #{points[1][1]}"
  $move points[0]
  wait()

  # $press 'space'
  # wait()
  # Native 'SetCapsLockState, On'
  # wait()

  $press 't'
  wait()
  $press 'l-button:down'
  wait()

  $move points[1]
  wait()
  $press 'l-button:up'
  wait()

  $press 'ctrl + v'
  wait()
  $press 'esc'
  wait()

  $press 'v'
  wait()
  # Native 'SetCapsLockState, Off'
  # wait()

  # $reload()
  return

# 主函数
main = ->
  # 检查 Photoshop 是否打开
  unless ps.isExists()
    $alert '请先打开 Photoshop'
    return

  # 检查截图工具是否打开
  unless checkProcessExists 'QQScreenShot.exe'
    $alert '请先打开截图工具'
    return

  # 将 Photoshop 窗口置顶
  ps.focus()
  wait()

  # 按下截图热键
  $press originalScreenshotHotkey
  wait()

  clickOCRButton (points) ->
    d = {
      points: points
    }
    qsr.wait -> clickCopyButton -> addPhotoshopLayer d.points

# 执行主函数
$on mainHotkey, -> main()

# 重载脚本
$on reloadHotkey, ->
  reset()
  $beep()
  $reload()

# 退出脚本
$on exitHotkey, ->
  reset()
  $beep()
  $exit()