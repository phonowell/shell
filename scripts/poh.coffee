# @ts-check

import './head.ahk'

import $alert from '../dist/alert'
import $beep from '../dist/beep'
import $clearInterval from '../dist/clearInterval'
import $exit from '../dist/exit'
import $getPosition from '../dist/getPosition'
import $math from '../dist/math'
import $move from '../dist/move'
import $noop from '../dist/noop'
import $off from '../dist/off'
import $on from '../dist/on'
import $press from '../dist/press'
import $reload from '../dist/reload'
import $setInterval from '../dist/setInterval'
import $sleep from '../dist/sleep'
import $tip from '../dist/tip'
import $window from '../dist/window'

# 截图工具窗口
win = $window 'QQScreenShot.exe'

# 检查进程是否存在
###* @type (exe: string) => boolean ###
checkProcessExists = (exe) ->
  Native 'Process, Exist, % exe'
  Native 'return, % ErrorLevel'
  $noop exe
  return false

# 点击 OCR 按钮
###* @type (callback: (ps: [[number, number], [number, number]]) => void) => void ###
clickOCRButton = (callback) ->
  # $tip 'click OCR button'

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

    # 若仅作点击，则取消
    if p.a[0] == p.b[0] or p.a[1] == p.b[1]
      $press 'esc'
      return

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

    # 点击 OCR 按钮
    $move [
      b[0] - 190
      b[1] + 20
    ]
    $sleep 100
    $press 'l-button'
    $sleep 100

    # 回调传递坐标
    callback [a, b]

# 等待 OCR 识别结果
###* @type (callback: Function) => void ###
waitForOCRResult = (callback) ->
  # $tip 'wait for OCR result'

  d = {
    timer: 0
  }
  d.timer = $setInterval ->
    unless win.isExists() and win.getTitle() == '屏幕识图' then return
    $clearInterval d.timer
    callback()
  , 100

# 点击复制按钮
###* @type (callback: Function) => void ###
clickCopyButton = (callback) ->
  {
    x, y, width, height
  } = win.getBounds()

  $move [
    x + width - 85
    y + height - 35
  ]
  $sleep 100
  $press 'l-button'
  $press 'l-button'
  $sleep 100

  # win.kill()
  callback()

# 主函数
main = ->
  # 检查 Photoshop 是否打开
  unless checkProcessExists 'Photoshop.exe'
    $alert '请先打开 Photoshop'
    return

  # 检查截图工具是否打开
  unless checkProcessExists 'QQScreenShot.exe'
    $alert '请先打开截图工具'
    return

  # 按下截图热键
  $press 'ctrl + alt + o'

  clickOCRButton -> waitForOCRResult -> clickCopyButton ->
    $tip 'DONE'

# 按下 Ctrl + 1 键时执行主函数
$on 'alt + 1', -> main()

# 按下 Esc 键时重载脚本
$on 'esc', ->
  $beep()
  $reload()

# 按下 Ctrl + Q 键时退出脚本
$on 'ctrl + q', ->
  $beep()
  $exit()

# 判断PS是否打开
# 判断独立截图工具
# 按下ctrl + alt + o
# ---
# 鼠标按下时监听起始点位置
# 鼠标弹起时找图，位置根据弹起坐标和起始坐标决定
# 找到图之后点击
# 等待截图完毕，找复制按钮位置
# 找到图之后点击
# 找关闭弹窗位置
# 找到之后关闭
# 鼠标移动到4记录的位置
# 按下space，清除输入法输入队列
# 按下Caps
# 按下T
# 按下ctrl + v
# 按下Esc
# 按下V
# 按下Caps