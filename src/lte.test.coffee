# @ts-check

import $lte from '../src/lte'

# Test basic less than: 1 <= 2 should be true
result = $lte 1, 2
unless result then throw new Error 'Expected 1 <= 2 to be true'

# Test equal values: 1 <= 1 should be true
result = $lte 1, 1
unless result then throw new Error 'Expected 1 <= 1 to be true'

# Test greater than: 2 <= 1 should be false
result = $lte 2, 1
if result then throw new Error 'Expected 2 <= 1 to be false'