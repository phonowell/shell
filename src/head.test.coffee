# @ts-check

import $head from '../dist/head'

# Test basic functionality - get first element of array
result = $head [1, 2, 3]
unless result is 1 then throw new Error 'Expected head([1,2,3]) to return 1'

# Test single element array
result = $head [42]
unless result is 42 then throw new Error 'Expected head([42]) to return 42'

# Test empty array - should return undefined
result = $head []
unless result is undefined then throw new Error 'Expected head([]) to return undefined'

