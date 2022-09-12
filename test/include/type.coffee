do ->

  type = $.type 42
  unless type == 'number' then throw new Error type

  type = $.type $.type
  unless type == 'function' then throw new Error type

  type = $.type [1, 2, 3]
  unless type == 'array' then throw new Error type

  type = $.type {
    a: 1
    b: 2
    c: 3
  }
  unless type == 'object' then throw new Error type

  type = $.type {0: ''}
  unless type == 'object' then throw new Error type

  type = $.type {
    0: ''
    1: 'a'
    2: 'b'
    3: 'c'
  }
  unless type == 'object' then throw new Error type