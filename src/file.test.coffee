# @ts-check

import $file from '../dist/file'
import $isFunction from '../dist/isFunction'
import $isObject from '../dist/isObject'

do ->

  unless $isFunction $file
    throw new Error '$file is not a function'

  f = $file 'test.txt'
  unless $isObject f
    throw new Error '$file() does not return an object'

  for fn in ['append', 'isExists', 'read', 'remove', 'write']
    unless $isFunction f[fn]
      throw new Error "$file() does not return an object with function #{fn}"

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