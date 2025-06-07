# @ts-check
import '../scripts/head.ahk'

import $chunk from '../dist/chunk'
import $join from '../dist/join'
import $map from '../dist/map'

# Basic functionality test - most important
# Test chunking array into groups of 4
list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
listA = $chunk list, 4
string = $join ($map listA, (it) -> $join it, ''), ','
unless string == '1234,5678,910'
  throw new Error "Basic chunk test failed: expected '1234,5678,910', got '#{string}'"

# Edge case tests
# Test with chunk size 1
singleChunks = $chunk [1, 2, 3], 1
singleResult = $join ($map singleChunks, (it) -> $join it, ''), ','
unless singleResult == '1,2,3'
  throw new Error "Chunk size 1 test failed"

# Test with chunk size larger than array
largeChunk = $chunk [1, 2], 5
unless largeChunk.Length() == 1 and largeChunk[0].Length() == 2
  throw new Error "Large chunk size test failed"

# Test with empty array
emptyChunk = $chunk [], 3
unless Array.isArray(emptyChunk) and emptyChunk.Length() == 0
  throw new Error "Empty array test failed"

# Test with exact division
exactChunk = $chunk [1, 2, 3, 4], 2
exactResult = $join ($map exactChunk, (it) -> $join it, ''), ','
unless exactResult == '12,34'
  throw new Error "Exact division test failed"

# 退出测试用例
import $exit from '../dist/exit'
$exit()