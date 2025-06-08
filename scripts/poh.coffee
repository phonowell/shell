# @ts-check

import './head.ahk'

# import $alert from '../dist/alert'
import $beep from '../dist/beep'
# import $exit from '../dist/exit'
import $on from '../dist/on'
import $reload from '../dist/reload'
import $window from '../src/window'

# 主函数
# main = -> $alert '!'

# 按下 Ctrl + M 键时执行主函数
# $on 'ctrl + m', ->
#   main()

# 按下 Esc 键时重载脚本
$on 'esc', ->
  $beep()
  $reload()

# 按下 Ctrl + Q 键时退出脚本
# $on 'ctrl + q', ->
#   $beep()
#   $exit()

# 判断PS是否打开
# 打开独立截图工具
# 按下ctrl + alt + o
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