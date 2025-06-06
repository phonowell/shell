# @ts-check

import $join from '../src/join'
import $keys from '../src/keys'
import $mixin from '../src/mixin'
import $values from '../src/values'

# Test basic mixin functionality - merge multiple objects
mapA = { a: 1 }
mapB = { b: 2 }
mapC = { c: 3 }

$mixin mapA, mapB, mapC

# Verify all keys were mixed in
result = $join $keys mapA
unless result == 'a,b,c'
  throw new Error 'Expected keys to be "a,b,c" after mixin'

# Verify all values were mixed in
result = $join $values mapA
unless result == '1,2,3'
  throw new Error 'Expected values to be "1,2,3" after mixin'

# Test property overwriting behavior
###* @type Record<string, number> ###
source = { x: 1 }
target = { x: 999, y: 2 }

$mixin source, target

unless source.x == 999 and source.y == 2
  throw new Error 'Expected mixin to overwrite existing properties'