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
import $window from '../dist/window'

# Photoshop 窗口
ps = $window 'Photoshop'

# 截图工具窗口
# 工具条
qst = $window 'QQScreenShot'
# 识图结果
qsr = $window 'QQScreenShot', '屏幕识图'

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

    $sleep 100
    $press 'l-button'
    $sleep 100

    # 回调传递坐标
    callback [a, b]

# 点击复制按钮
###* @type (callback: Function) => void ###
clickCopyButton = (callback) ->
  {
    x, y, width, height
  } = qst.getBounds()

  $move [
    x + width - 85
    y + height - 35
  ]

  $sleep 100
  $press 'l-button'
  $press 'l-button'
  $sleep 100

  # 关闭
  qsr.close()

  callback()

# 在 Photoshop 中创建新图层
###* @type (points: [[number, number], [number, number]]) => void ###
addPhotoshopLayer = (points) ->
  ps.focus()
  $sleep 100

  $move points[0]
  $sleep 100

  $press 'space'
  Native 'SetCapsLockState, On'

  $press 't'
  $sleep 100
  $press 'l-button:down'
  $sleep 100

  $move points[1]
  $sleep 100
  $press 'l-button:up'
  $sleep 100

  $press 'ctrl + v'
  $sleep 100
  $press 'esc'
  $sleep 100

  $press 'v'
  Native 'SetCapsLockState, Off'
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
  $sleep 100

  # 按下截图热键
  $press 'ctrl + alt + f9'
  $sleep 100

  clickOCRButton (points) ->
    d = {
      points: points
    }
    qsr.wait -> clickCopyButton -> addPhotoshopLayer d.points

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
# 按下截图快捷键
# 鼠标按下时监听起始点位置
# 鼠标弹起时找图，位置根据弹起坐标和起始坐标决定
# 找到图之后点击
# 等待截图完毕，找复制按钮位置
# 找到图之后点击
# 找关闭弹窗位置
# 找到之后关闭
# ---
# 鼠标移动到4记录的位置
# 按下space，清除输入法输入队列
# 按下Caps
# 按下T
# 按下ctrl + v
# 按下Esc
# 按下V
# 按下Caps