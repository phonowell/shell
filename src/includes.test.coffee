# @ts-check
import '../scripts/head.ahk'

import $includes from '../dist/includes'

do -> # array tests - most common use case
  list = [1, 2, 3]

  # Test finding existing element in array
  result = $includes list, 1
  unless result then throw new Error 'Expected [1,2,3] to include 1'

  # Test element not in array
  result = $includes list, 4
  if result then throw new Error 'Expected [1,2,3] to not include 4'

do -> # string tests
  string = 'string'

  # Test finding existing character in string
  result = $includes string, 's'
  unless result then throw new Error 'Expected "string" to include "s"'

  # Test character not in string
  result = $includes string, 'a'
  if result then throw new Error 'Expected "string" to not include "a"'

# 退出测试用例
import $exit from '../dist/exit'
$exit()