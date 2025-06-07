# @ts-check

import './head.ahk'

import $beep from '../dist/beep'
import $exit from '../dist/exit'
import $on from '../dist/on'
import $press from '../dist/press'
import $reload from '../dist/reload'
import $sleep from '../dist/sleep'

# 重置所有按键
resetKyes = ->
  $press 'a:up'
  $press 'e:up'
  $press 'g:up'
  $press 's:up'
  $press 'space:up'
  $press 't:up'
  $press 'w:up'

# 主函数
main = ->

  $beep()

  # 如果挂了，捡一下魂
  $press 'e'
  $sleep 200
  $press 'e'

  # 跑到指定位置
  $press 'w:down'
  $press 'space:down'
  $sleep 2e3
  $press 'a:down'
  $sleep 750
  $press 'a:up'
  $sleep 750
  $press 'space:up'
  $press 'w:up'

  # 使用两次战技
  $press 't'
  $sleep 3e3
  $press 't'
  $sleep 3e3

  # 打开地图传送
  $press 'g'
  $sleep 200
  $press 's'
  $sleep 200
  $press 'e'
  $sleep 500
  $press 'e'

  # 等待加载
  $sleep 5e3

  # 循环
  main()
  return

# 按下 F1 键开始执行
$on 'f1', main

# 按下 F4 键退出
$on 'f4', ->
  $beep()
  resetKyes()
  $exit()

# 按下 F5 键重新加载
$on 'f5', ->
  $beep()
  resetKyes()
  $reload()