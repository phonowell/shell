# @ts-check

import $replace from '../dist/replace'

# Test 1: Basic functionality - single character replacement
result = $replace 'hello', 'l', 'x'
unless result == 'hexlo' then throw new Error 'Should replace first occurrence'

# Test 2: Remove characters (replace with empty string)
trimmed = $replace ' 123 ', ' ', ''
unless trimmed == '123' then throw new Error 'Should remove spaces'

# Test 3: Multiple spaces removal
multiSpace = $replace 'alt + f4', ' ', ''
unless multiSpace == 'alt+f4' then throw new Error 'Should remove all spaces'

# Test 4: No match found
noChange = $replace 'hello', 'x', 'y'
unless noChange == 'hello' then throw new Error 'Should return original when no match'

# Test 5: Replace with longer string
expanded = $replace 'hi', 'i', 'ello'
unless expanded == 'hello' then throw new Error 'Should handle replacement with longer string'

# Test 6: Empty string cases
emptySource = $replace '', 'a', 'b'
unless emptySource == '' then throw new Error 'Should handle empty source string'