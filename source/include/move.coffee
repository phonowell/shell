# move(point: Point, speed: number = 0): void
$.move = (point = '', speed = 0) ->

  $vt 'move', point, 'array'
  $vt 'move', speed, 'number'

  `MouseMove, point[1], point[2], speed`