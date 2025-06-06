# @ts-check
import '../scripts/head.ahk'

import $gte from '../dist/gte'

# Test basic greater than functionality
result = $gte 2, 1
unless result then throw new Error 'Expected 2 >= 1 to be true'

# Test equality case (key difference from gt)
result = $gte 1, 1
unless result then throw new Error 'Expected 1 >= 1 to be true'

# Test less than case
result = $gte 1, 2
if result then throw new Error 'Expected 1 >= 2 to be false'