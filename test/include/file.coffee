# @ts-check

import $file from '../../source/module/file'
import $isFunction from '../../source/module/isFunction'
import $isObject from '../../source/module/isObject'

do ->

  unless $isFunction $file
    throw '$file is not a function'

  f = $file 'test.txt'
  unless $isObject f
    throw '$file() does not return an object'

  for fn in ['append', 'isExists', 'read', 'remove', 'write']
    unless $isFunction f[fn]
      throw "$file() does not return an object with function #{fn}"

do ->

  f = $file 'test.txt'
  text = 'hello world'

  f.remove()

  if f.isExists()
    throw 'test.txt should not exist - 1'

  f.write text

  unless f.isExists()
    throw 'test.txt should exist'

  content = f.read()
  unless content == text
    throw 'content is not correct'

  f.remove()
  if f.isExists()
    throw 'test.txt should not exist - 2'