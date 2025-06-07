# @ts-check
import '../scripts/head.ahk'

import $file from '../dist/file'
import $isFunction from '../dist/isFunction'
import $isObject from '../dist/isObject'
import $sleep from '../dist/sleep'

do ->

  unless $isFunction $file
    throw new Error 'file should be a function'

  f = $file 'test.txt'
  unless $isObject f
    throw new Error 'file() should return an object'

  ###* @type (keyof import('../dist/fileShell').FileShell)[] ###
  names = [
    'append'
    'isExists'
    'read'
    'remove'
    'write'
  ]

  for name in names
    unless $isFunction f[name]
      throw new Error "$file().#{name} is not a function"

do ->

  f = $file 'test.txt'
  text = 'hello world'

  f.remove()

  if f.isExists()
    throw new Error 'test.txt should not exist - 1'

  f.write text

  unless f.isExists()
    throw new Error 'test.txt should exist'

  content = f.read()
  unless content == text
    throw new Error 'content is not correct'

  f.remove()
  if f.isExists()
    throw new Error 'test.txt should not exist - 2'

$sleep 5e3

# 退出测试用例
import $exit from '../dist/exit'
$exit()