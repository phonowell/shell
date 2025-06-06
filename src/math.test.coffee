# @ts-check

import $math from '../dist/math'
import $isFunction from '../dist/isFunction'

# Test that all expected math functions exist
for fn in [
  'abs'
  'ceil'
  'floor'
  'round'
  'max'
  'min'
]
  unless $isFunction $math[fn]
    throw new Error "$.math.#{fn} is not a function"

# Test basic functionality of core functions

# Test abs function
unless $math.abs(-5) == 5
  throw new Error 'abs(-5) should equal 5'

# Test round function
unless $math.round(4.7) == 5
  throw new Error 'round(4.7) should equal 5'

# Test floor function
unless $math.floor(4.7) == 4
  throw new Error 'floor(4.7) should equal 4'

# Test ceil function
unless $math.ceil(4.3) == 5
  throw new Error 'ceil(4.3) should equal 5'

# Test max function
unless $math.max(1, 3, 2) == 3
  throw new Error 'max(1, 3, 2) should equal 3'

# Test min function
unless $math.min(1, 3, 2) == 1
  throw new Error 'min(1, 3, 2) should equal 1'