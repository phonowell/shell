# move(point: Point, speed: number = 0): void
$.move = (point = '', speed = 0) ->

  $validateType 'move', point, 'array'
  $validateType 'move', speed, 'number'

  `MouseMove, point[1], point[2], speed`