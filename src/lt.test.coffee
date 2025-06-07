# @ts-check
import '../scripts/head.ahk'

import $lt from '../dist/lt'

# Test basic less than: 1 < 2 should be true
result = $lt 1, 2
unless result then throw new Error 'Expected 1 < 2 to be true'

# Test equal values: 1 < 1 should be false
result = $lt 1, 1
if result then throw new Error 'Expected 1 < 1 to be false'

# Test greater than: 2 < 1 should be false
result = $lt 2, 1
if result then throw new Error 'Expected 2 < 1 to be false'

# 退出测试用例
import $exit from '../dist/exit'
$exit()