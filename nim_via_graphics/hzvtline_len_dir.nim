import pixels

type
  Point = object
    x: int
    y: int

proc drawHorizantalLine(start: Point, length: Positive) =
  for delta in 0 .. length:
    putPixel(start.x + delta, start.y)

proc drawVerticalLine(start: Point, length: Positive) =
  for delta in 0 .. length:
    putPixel(start.x, start.y + delta)

proc drawDiagnonalLine(start: Point, length: Positive) =
  for delta in 0 .. length:
    putPixel(start.x + delta, start.y + delta)

let a = Point(x: 60, y: 40)
let b = Point(y: 40, x: 60)

drawHorizantalLine(a, 50)
drawVerticalLine(a, 50)

drawDiagnonalLine(b, 50)
