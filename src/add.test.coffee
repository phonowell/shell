# @ts-check
import '../scripts/head.ahk'

import $add from '../dist/add'

# 核心功能测试 - 多参数相加
result = $add 1, 2, 3
unless result == 6
  throw new Error "Multi-param addition failed: #{result}"

# 边界情况 - 无参数应返回0
result = $add()
unless result == 0
  throw new Error "No params failed: #{result}"

# 单参数测试
result = $add 5
unless result == 5
  throw new Error "Single param failed: #{result}"

# 负数混合运算
result = $add 1, -2, 3
unless result == 2
  throw new Error "Negative number failed: #{result}"