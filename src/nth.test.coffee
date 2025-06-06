# @ts-check

import $nth from '../src/nth'

list = [0, 1, 2, 3]

# Test basic positive index access
n = $nth list, 0
unless n == 0 then throw new Error 'Expected nth(list, 0) to return 0'

n = $nth list, 1
unless n == 1 then throw new Error 'Expected nth(list, 1) to return 1'

# Test negative index access (from end)
n = $nth list, -1
unless n == 3 then throw new Error 'Expected nth(list, -1) to return 3'

n = $nth list, -2
unless n == 2 then throw new Error 'Expected nth(list, -2) to return 2'

# Test out of bounds access
n = $nth list, 10
unless n == undefined then throw new Error 'Expected nth(list, 10) to return undefined'