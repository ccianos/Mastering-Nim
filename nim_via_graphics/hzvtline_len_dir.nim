import pixels

type
  Point = object
    x: int
    y: int

proc drawHorizantalLine(start: Point, length: Positive) =
  for delta in 0 .. length:
    putPixel(start.x + delta, start.y)

let a = Point(x: 60, y: 40)

drawHorizantalLine(a, 50)