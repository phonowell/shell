# @ts-check
import '../scripts/head.ahk'

import $clone from '../dist/clone'

# Test 1: Array cloning (most common use case)
do ->
  original = [1, 2, 3]
  cloned = $clone original

  # Verify values are copied correctly
  unless cloned[0] == 1 and cloned[1] == 2 and cloned[2] == 3
    throw new Error "Array values not cloned correctly"

  # Verify it's a new reference (shallow clone test)
  unless cloned != original
    throw new Error "Array not properly cloned - same reference"

# Test 2: Object cloning (second most common use case)
do ->
  original = {
    a: 1
    b: 2
    c: 3
  }
  cloned = $clone original

  # Verify properties are copied correctly
  unless cloned.a == 1 and cloned.b == 2 and cloned.c == 3
    throw new Error "Object properties not cloned correctly"

  # Verify it's a new reference
  unless cloned != original
    throw new Error "Object not properly cloned - same reference"

# 退出测试用例
import $exit from '../dist/exit'
$exit()