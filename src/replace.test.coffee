# @ts-check
import '../scripts/head.ahk'

import $replace from '../dist/replace'

# Test 1: Basic functionality - single character replacement
result = $replace 'hello', 'l', 'x'
unless result == 'hexxo'
  throw new Error "[Test 1] Expected 'hexxo', got '#{result}'"

# Test 2: Remove characters (replace with empty string)
trimmed = $replace ' 123 ', ' ', ''
unless trimmed == '123' then throw new Error '[Test 2] Should remove spaces'

# Test 3: Multiple spaces removal
multiSpace = $replace 'alt + f4', ' ', ''
unless multiSpace == 'alt+f4' then throw new Error '[Test 3] Should remove all spaces'

# Test 4: No match found
noChange = $replace 'hello', 'x', 'y'
unless noChange == 'hello' then throw new Error '[Test 4] Should return original when no match'

# Test 5: Replace with longer string
expanded = $replace 'hi', 'i', 'ello'
unless expanded == 'hello'
  throw new Error '[Test 5] Should handle replacement with longer string'

# Test 6: Empty string cases
emptySource = $replace '', 'a', 'b'
unless emptySource == '' then throw new Error '[Test 6] Should handle empty source string'

# 退出测试用例
import $exit from '../dist/exit'
$exit()