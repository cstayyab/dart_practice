import 'dart:math';

class Point {
  num x;
  num y;
  num distanceFromOrigin;

  Point(x, y)
      : x = x,
        y = y,
        distanceFromOrigin = sqrt(x * x + y * y);
  Point.fromJSON(Map<String, double> json) : this(json['x'], json['y']);

  double distanceTo(Point otherPoint) {
    var dx = x - otherPoint.x;
    var dy = y - otherPoint.y;
    return sqrt(dx * dx + dy * dy);
  }
}
