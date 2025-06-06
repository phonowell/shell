# @ts-check

import $join from '../src/join'
import $keys from '../src/keys'

# Test basic object with string keys
map = {
  a: 1
  b: 2
  c: 3
}
result = $join $keys map
unless result == 'a,b,c'
  throw new Error 'Expected keys of {a:1, b:2, c:3} to be "a,b,c"'

# Test object with numeric keys
map2 = {
  0: ''
  1: 'a'
  2: 'b'
  3: 'c'
}
result = $join $keys map2
unless result == '0,1,2,3'
  throw new Error 'Expected keys of numeric object to be "0,1,2,3"'

# Test empty object
result = $join $keys {}
unless result == ''
  throw new Error 'Expected keys of empty object to be empty string'

# Test single key object
result = $join $keys { x: 'value' }
unless result == 'x'
  throw new Error 'Expected keys of {x: "value"} to be "x"'