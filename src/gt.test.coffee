# @ts-check
import '../scripts/head.ahk'

import $gt from '../dist/gt'

# Test basic greater than functionality
result = $gt 2, 1
unless result then throw new Error 'Expected 2 > 1 to be true'

# Test basic less than case
result = $gt 1, 2
if result then throw new Error 'Expected 1 > 2 to be false'

# Test equality case
result = $gt 1, 1
if result then throw new Error 'Expected 1 > 1 to be false'

# 退出测试用例
import $exit from '../dist/exit'
$exit()